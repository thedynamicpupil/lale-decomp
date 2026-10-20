// Verified switch override in a fresh agent-owned analysis project only.
// @category Lale
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.pcode.JumpTable;
import ghidra.program.model.symbol.*;
import java.util.*;

public class RepairLaleSwitch extends GhidraScript {
    public void run() throws Exception {
        Address entry = toAddr(0x15461);
        Address branch = toAddr(0x159f0);
        Address table = toAddr(0x15db8);
        Function f = getFunctionAt(entry);
        if (f == null) throw new Exception("main not found");
        ArrayList<Address> targets = new ArrayList<>();
        int[] expected = {0x059c, 0x0796, 0x0595, 0x07b0, 0x07bd, 0x0919};
        for (int i = 0; i < expected.length; i++) {
            int offset = currentProgram.getMemory().getShort(table.add(2*i)) & 0xffff;
            if (offset != expected[i]) throw new Exception("switch bytes differ");
            Address target = toAddr(0x15460 + offset);
            targets.add(target);
            Function other = getFunctionContaining(target);
            if (other != null && !other.equals(f)) removeFunction(other);
        }
        // Keep the raw source bytes. Only analysis references/body/override change.
        ReferenceManager refs = currentProgram.getReferenceManager();
        for (Reference ref : refs.getReferencesFrom(branch)) {
            if (ref.getReferenceType().isJump()) refs.delete(ref);
        }
        for (Address target : targets) {
            disassemble(target);
            refs.addMemoryReference(branch, target, RefType.COMPUTED_JUMP, SourceType.USER_DEFINED, 0);
        }
        f.setBody(new AddressSet(entry, toAddr(0x15db7)));
        new JumpTable(branch, targets, true, 0).writeOverride(f);
        println("Lale: explicit six-target switch override from original CS=1546 words.");
        runScript("ExportLaleMain.java", new String[]{getScriptArgs()[0]});
    }
}
