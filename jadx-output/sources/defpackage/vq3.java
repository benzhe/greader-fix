package defpackage;

/* loaded from: classes.dex */
public enum vq3 implements w63 {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);

    public final int e;

    vq3(int i2) {
        this.e = i2;
    }

    public static vq3 i(int i2) {
        if (i2 == 0) {
            return ENUM_FALSE;
        }
        if (i2 == 1) {
            return ENUM_TRUE;
        }
        if (i2 != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    @Override // defpackage.w63
    public final int f() {
        return this.e;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + vq3.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
    }
}
