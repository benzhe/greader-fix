package defpackage;

/* loaded from: classes.dex */
public final class pe3 {
    public static final pe3 d = new pe3(1.0f, 1.0f);
    public final float a;
    public final float b;
    public final int c;

    public pe3(float f, float f2) {
        this.a = f;
        this.b = f2;
        this.c = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && pe3.class == obj.getClass()) {
            pe3 pe3Var = (pe3) obj;
            if (this.a == pe3Var.a && this.b == pe3Var.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.b) + ((Float.floatToRawIntBits(this.a) + 527) * 31);
    }
}
