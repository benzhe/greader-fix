package org.apache.commons.lang3.arch;

/* loaded from: classes2.dex */
public class Processor {
    private final Arch arch;
    private final Type type;

    public enum Arch {
        BIT_32("32-bit"),
        BIT_64("64-bit"),
        UNKNOWN("Unknown");

        private final String label;

        Arch(String str) {
            this.label = str;
        }

        public String getLabel() {
            return this.label;
        }
    }

    public enum Type {
        X86,
        IA_64,
        PPC,
        UNKNOWN
    }

    public Processor(Arch arch, Type type) {
        this.arch = arch;
        this.type = type;
    }

    public Arch getArch() {
        return this.arch;
    }

    public Type getType() {
        return this.type;
    }

    public boolean is32Bit() {
        return Arch.BIT_32.equals(this.arch);
    }

    public boolean is64Bit() {
        return Arch.BIT_64.equals(this.arch);
    }

    public boolean isIA64() {
        return Type.IA_64.equals(this.type);
    }

    public boolean isPPC() {
        return Type.PPC.equals(this.type);
    }

    public boolean isX86() {
        return Type.X86.equals(this.type);
    }
}
