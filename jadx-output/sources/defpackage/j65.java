package defpackage;

/* loaded from: classes.dex */
public class j65 extends ja5 implements Cloneable {
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;

    public j65(float f, float f2, float f3) {
        this.f = f;
        this.e = f2;
        d(f3);
        this.i = 0.0f;
    }

    @Override // defpackage.ja5
    public void c(float f, float f2, float f3, sa5 sa5Var) {
        float f4 = this.g;
        if (f4 == 0.0f) {
            sa5Var.d(f, 0.0f);
            return;
        }
        float f5 = ((this.f * 2.0f) + f4) / 2.0f;
        float f6 = f3 * this.e;
        float f7 = f2 + this.i;
        float fA = jo.a(1.0f, f3, f5, this.h * f3);
        if (fA / f5 >= 1.0f) {
            sa5Var.d(f, 0.0f);
            return;
        }
        float f8 = f5 + f6;
        float f9 = fA + f6;
        float fSqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f7 - fSqrt;
        float f11 = f7 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f9));
        float f12 = 90.0f - degrees;
        sa5Var.d(f10, 0.0f);
        float f13 = f6 * 2.0f;
        sa5Var.a(f10 - f6, 0.0f, f10 + f6, f13, 270.0f, degrees);
        sa5Var.a(f7 - f5, (-f5) - fA, f7 + f5, f5 - fA, 180.0f - f12, (f12 * 2.0f) - 180.0f);
        sa5Var.a(f11 - f6, 0.0f, f11 + f6, f13, 270.0f - degrees, degrees);
        sa5Var.d(f, 0.0f);
    }

    public void d(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.h = f;
    }
}
