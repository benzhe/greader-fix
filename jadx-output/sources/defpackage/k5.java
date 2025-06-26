package defpackage;

import defpackage.a7;
import defpackage.y6;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class k5 implements Comparable<k5> {
    public static String[] s = {"position", "x", "y", "width", "height", "pathRotate"};
    public q4 e;
    public int f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public int n;
    public LinkedHashMap<String, y6> o;
    public int p;
    public double[] q;
    public double[] r;

    public k5() {
        this.f = 0;
        this.m = Float.NaN;
        this.n = -1;
        this.o = new LinkedHashMap<>();
        this.p = 0;
        this.q = new double[18];
        this.r = new double[18];
    }

    @Override // java.lang.Comparable
    public int compareTo(k5 k5Var) {
        return Float.compare(this.h, k5Var.h);
    }

    public void i(a7.a aVar) {
        this.e = q4.c(aVar.c.c);
        a7.c cVar = aVar.c;
        this.n = cVar.d;
        this.m = cVar.g;
        this.f = cVar.e;
        float f = aVar.b.e;
        for (String str : aVar.f.keySet()) {
            y6 y6Var = aVar.f.get(str);
            if (y6Var.b != y6.a.STRING_TYPE) {
                this.o.put(str, y6Var);
            }
        }
    }

    public final boolean k(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    public void l(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.i;
        float f2 = this.j;
        float f3 = this.k;
        float f4 = this.l;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        fArr[i] = (f3 / 2.0f) + f + 0.0f;
        fArr[i + 1] = (f4 / 2.0f) + f2 + 0.0f;
    }

    public void t(float f, float f2, float f3, float f4) {
        this.i = f;
        this.j = f2;
        this.k = f3;
        this.l = f4;
    }

    public void w(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f4 = f7;
            } else if (i2 == 4) {
                f6 = f7;
            }
        }
        float f8 = f3 - ((0.0f * f4) / 2.0f);
        float f9 = f5 - ((0.0f * f6) / 2.0f);
        fArr[0] = (((f4 * 1.0f) + f8) * f) + ((1.0f - f) * f8) + 0.0f;
        fArr[1] = (((f6 * 1.0f) + f9) * f2) + ((1.0f - f2) * f9) + 0.0f;
    }

    public k5(int i, int i2, d5 d5Var, k5 k5Var, k5 k5Var2) {
        this.f = 0;
        this.m = Float.NaN;
        this.n = -1;
        this.o = new LinkedHashMap<>();
        this.p = 0;
        this.q = new double[18];
        this.r = new double[18];
        int i3 = d5Var.m;
        if (i3 == 1) {
            float f = d5Var.a / 100.0f;
            this.g = f;
            this.f = d5Var.h;
            float f2 = Float.isNaN(d5Var.i) ? f : d5Var.i;
            float f3 = Float.isNaN(d5Var.j) ? f : d5Var.j;
            float f4 = k5Var2.k - k5Var.k;
            float f5 = k5Var2.l - k5Var.l;
            this.h = this.g;
            f = Float.isNaN(d5Var.k) ? f : d5Var.k;
            float f6 = k5Var.i;
            float f7 = k5Var.k;
            float f8 = k5Var.j;
            float f9 = k5Var.l;
            float f10 = ((k5Var2.k / 2.0f) + k5Var2.i) - ((f7 / 2.0f) + f6);
            float f11 = ((k5Var2.l / 2.0f) + k5Var2.j) - ((f9 / 2.0f) + f8);
            float f12 = f10 * f;
            float f13 = (f4 * f2) / 2.0f;
            this.i = (int) ((f6 + f12) - f13);
            float f14 = f * f11;
            float f15 = (f5 * f3) / 2.0f;
            this.j = (int) ((f8 + f14) - f15);
            this.k = (int) (f7 + r9);
            this.l = (int) (f9 + r10);
            float f16 = Float.isNaN(d5Var.l) ? 0.0f : d5Var.l;
            this.p = 1;
            float f17 = (int) ((k5Var.i + f12) - f13);
            this.i = f17;
            float f18 = (int) ((k5Var.j + f14) - f15);
            this.j = f18;
            this.i = f17 + ((-f11) * f16);
            this.j = f18 + (f10 * f16);
            this.e = q4.c(d5Var.f);
            this.n = d5Var.g;
            return;
        }
        if (i3 != 2) {
            float f19 = d5Var.a / 100.0f;
            this.g = f19;
            this.f = d5Var.h;
            float f20 = Float.isNaN(d5Var.i) ? f19 : d5Var.i;
            float f21 = Float.isNaN(d5Var.j) ? f19 : d5Var.j;
            float f22 = k5Var2.k;
            float f23 = k5Var.k;
            float f24 = f22 - f23;
            float f25 = k5Var2.l;
            float f26 = k5Var.l;
            float f27 = f25 - f26;
            this.h = this.g;
            float f28 = k5Var.i;
            float f29 = k5Var.j;
            float f30 = ((f22 / 2.0f) + k5Var2.i) - ((f23 / 2.0f) + f28);
            float f31 = ((f25 / 2.0f) + k5Var2.j) - ((f26 / 2.0f) + f29);
            float f32 = (f24 * f20) / 2.0f;
            this.i = (int) (((f30 * f19) + f28) - f32);
            float f33 = (f31 * f19) + f29;
            float f34 = (f27 * f21) / 2.0f;
            this.j = (int) (f33 - f34);
            this.k = (int) (f23 + r13);
            this.l = (int) (f26 + r16);
            float f35 = Float.isNaN(d5Var.k) ? f19 : d5Var.k;
            float f36 = Float.isNaN(Float.NaN) ? 0.0f : Float.NaN;
            f19 = Float.isNaN(d5Var.l) ? f19 : d5Var.l;
            float f37 = Float.isNaN(Float.NaN) ? 0.0f : Float.NaN;
            this.p = 2;
            this.i = (int) (((f37 * f31) + ((f35 * f30) + k5Var.i)) - f32);
            this.j = (int) (((f31 * f19) + ((f30 * f36) + k5Var.j)) - f34);
            this.e = q4.c(d5Var.f);
            this.n = d5Var.g;
            return;
        }
        float f38 = d5Var.a / 100.0f;
        this.g = f38;
        this.f = d5Var.h;
        float f39 = Float.isNaN(d5Var.i) ? f38 : d5Var.i;
        float f40 = Float.isNaN(d5Var.j) ? f38 : d5Var.j;
        float f41 = k5Var2.k;
        float f42 = f41 - k5Var.k;
        float f43 = k5Var2.l;
        float f44 = f43 - k5Var.l;
        this.h = this.g;
        float f45 = k5Var.i;
        float f46 = k5Var.j;
        float f47 = (f41 / 2.0f) + k5Var2.i;
        float f48 = (f43 / 2.0f) + k5Var2.j;
        float f49 = f42 * f39;
        this.i = (int) ((((f47 - ((r9 / 2.0f) + f45)) * f38) + f45) - (f49 / 2.0f));
        float f50 = f44 * f40;
        this.j = (int) ((((f48 - ((r12 / 2.0f) + f46)) * f38) + f46) - (f50 / 2.0f));
        this.k = (int) (r9 + f49);
        this.l = (int) (r12 + f50);
        this.p = 3;
        if (!Float.isNaN(d5Var.k)) {
            this.i = (int) (d5Var.k * ((int) (i - this.k)));
        }
        if (!Float.isNaN(d5Var.l)) {
            this.j = (int) (d5Var.l * ((int) (i2 - this.l)));
        }
        this.e = q4.c(d5Var.f);
        this.n = d5Var.g;
    }
}
