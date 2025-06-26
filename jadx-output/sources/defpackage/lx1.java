package defpackage;

/* loaded from: classes.dex */
public enum lx1 implements w63 {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);

    public final int e;

    lx1(int i) {
        this.e = i;
    }

    @Override // defpackage.w63
    public final int f() {
        return this.e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + lx1.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
    }
}
