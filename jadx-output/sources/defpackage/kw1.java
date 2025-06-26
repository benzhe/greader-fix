package defpackage;

/* loaded from: classes.dex */
public enum kw1 implements w63 {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);

    public final int e;

    kw1(int i) {
        this.e = i;
    }

    @Override // defpackage.w63
    public final int f() {
        return this.e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + kw1.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
    }
}
