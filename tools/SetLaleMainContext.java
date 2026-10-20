// Analysis database context repair only; never writes the source executable.
// @category Lale
import ghidra.app.script.GhidraScript;
import java.math.BigInteger;

public class SetLaleMainContext extends GhidraScript {
    public void run() throws Exception {
        currentProgram.getProgramContext().setValue(
            currentProgram.getRegister("CS"), toAddr(0x15461), toAddr(0x15db7),
            BigInteger.valueOf(0x1546));
        println("Lale: CS=1546 for main 0001..0957 before auto-analysis.");
    }
}
