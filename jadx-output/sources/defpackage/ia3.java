package defpackage;

/* loaded from: classes.dex */
public enum ia3 implements w63 {
    SAFE(0),
    DANGEROUS(1),
    UNKNOWN(2),
    POTENTIALLY_UNWANTED(3),
    DANGEROUS_HOST(4);

    public final int e;

    ia3(int i) {
        this.e = i;
    }

    @Override // defpackage.w63
    public final int f() {
        return this.e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + ia3.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
    }
}
