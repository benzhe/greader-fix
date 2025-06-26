package defpackage;

/* loaded from: classes.dex */
public class v4 {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
    public float f;

    public void a(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f2 - 0.5f) * 2.0f;
        float f6 = f3 + this.c;
        float f7 = f4 + this.d;
        float f8 = (this.a * (f - 0.5f) * 2.0f) + f6;
        float f9 = (this.b * f5) + f7;
        float radians = (float) Math.toRadians(this.f);
        float radians2 = (float) Math.toRadians(this.e);
        double d = radians;
        double d2 = i2 * f5;
        float fSin = (((float) ((Math.sin(d) * ((-i) * r7)) - (Math.cos(d) * d2))) * radians2) + f8;
        float fCos = (radians2 * ((float) ((Math.cos(d) * (i * r7)) - (Math.sin(d) * d2)))) + f9;
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    public void b(m5 m5Var, float f) {
        if (m5Var != null) {
            double d = f;
            this.e = (float) m5Var.a.e(d, 0);
            this.f = (float) m5Var.a.b(d, 0);
        }
    }

    public void c(b5 b5Var, b5 b5Var2, float f) {
        if (b5Var == null && b5Var2 == null) {
            return;
        }
        if (b5Var == null) {
            this.a = b5Var.b(f);
        }
        if (b5Var2 == null) {
            this.b = b5Var2.b(f);
        }
    }

    public void d(m5 m5Var, m5 m5Var2, float f) {
        if (m5Var != null) {
            this.a = (float) m5Var.a.e(f, 0);
        }
        if (m5Var2 != null) {
            this.b = (float) m5Var2.a.e(f, 0);
        }
    }

    public void e(m5 m5Var, m5 m5Var2, float f) {
        if (m5Var != null) {
            this.c = (float) m5Var.a.e(f, 0);
        }
        if (m5Var2 != null) {
            this.d = (float) m5Var2.a.e(f, 0);
        }
    }
}
