// @category Lale
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.program.model.listing.*;
import ghidra.program.model.address.*;
import ghidra.program.model.symbol.*;
import com.google.gson.GsonBuilder;
import java.nio.file.*;
import java.util.*;

public class ExportLaleMain extends GhidraScript {
    public void run() throws Exception {
        Function f = getFunctionAt(toAddr(0x15461));
        if (f == null) throw new Exception("main function not found");
        f.setCallingConvention("__cdecl16far");
        Map<String,Object> result = new LinkedHashMap<>();
        result.put("source", currentProgram.getExecutablePath());
        result.put("classification", "independent-ghidra-context-repaired-analysis");
        result.put("interventions", List.of("CS context 1546 at 1546:0001..0957",
                                            "far calling convention from original CALLF/RETF"));
        result.put("entry", f.getEntryPoint().toString());
        result.put("body_bytes", f.getBody().getNumAddresses());
        List<Map<String,Object>> ranges = new ArrayList<>();
        for (AddressRange r : f.getBody()) {
            ranges.add(Map.of("start", r.getMinAddress().toString(), "end", r.getMaxAddress().toString()));
        }
        result.put("body_ranges_inclusive", ranges);
        List<Map<String,Object>> instructions = new ArrayList<>();
        InstructionIterator it = currentProgram.getListing().getInstructions(f.getBody(), true);
        while (it.hasNext()) {
            Instruction i = it.next();
            Map<String,Object> item = new LinkedHashMap<>();
            item.put("address", i.getAddress().toString());
            item.put("instruction", i.toString());
            item.put("bytes", HexFormat.of().formatHex(i.getBytes()));
            item.put("cs", currentProgram.getProgramContext().getValue(currentProgram.getRegister("CS"), i.getAddress(), false));
            List<Map<String,Object>> refs = new ArrayList<>();
            for (Reference ref : i.getReferencesFrom()) {
                refs.add(Map.of("target", ref.getToAddress().toString(), "type", ref.getReferenceType().toString()));
            }
            item.put("references", refs);
            instructions.add(item);
        }
        result.put("instructions", instructions);
        DecompInterface decomp = new DecompInterface();
        try {
            decomp.openProgram(currentProgram);
            DecompileResults d = decomp.decompileFunction(f, 60, monitor);
            result.put("decompile_complete", d.decompileCompleted());
            result.put("decompile_error", d.getErrorMessage());
            result.put("pseudocode", d.getDecompiledFunction() == null ? null : d.getDecompiledFunction().getC());
        } finally {
            decomp.dispose();
        }
        Path dest = Path.of(getScriptArgs()[0]);
        Files.writeString(dest, new GsonBuilder().setPrettyPrinting().create().toJson(result), StandardOpenOption.CREATE_NEW);
        println("Lale: exported main context repair observations to " + dest);
    }
}
