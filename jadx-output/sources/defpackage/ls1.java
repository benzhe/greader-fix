package defpackage;

/* loaded from: classes.dex */
public enum ls1 implements w63 {
    UNKNOWN_ENCRYPTION_METHOD(0),
    BITSLICER(1),
    TINK_HYBRID(2),
    UNENCRYPTED(3),
    DG(4),
    DG_XTEA(5);

    public final int e;

    ls1(int i) {
        this.e = i;
    }

    @Override // defpackage.w63
    public final int f() {
        return this.e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + ls1.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
    }
}
