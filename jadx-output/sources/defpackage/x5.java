package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public class x5 {
    public static int m = 1;
    public boolean a;
    public float e;
    public a i;
    public int b = -1;
    public int c = -1;
    public int d = 0;
    public boolean f = false;
    public float[] g = new float[9];
    public float[] h = new float[9];
    public s5[] j = new s5[16];
    public int k = 0;
    public int l = 0;

    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public x5(a aVar) {
        this.i = aVar;
    }

    public final void a(s5 s5Var) {
        int i = 0;
        while (true) {
            int i2 = this.k;
            if (i >= i2) {
                s5[] s5VarArr = this.j;
                if (i2 >= s5VarArr.length) {
                    this.j = (s5[]) Arrays.copyOf(s5VarArr, s5VarArr.length * 2);
                }
                s5[] s5VarArr2 = this.j;
                int i3 = this.k;
                s5VarArr2[i3] = s5Var;
                this.k = i3 + 1;
                return;
            }
            if (this.j[i] == s5Var) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void b(s5 s5Var) {
        int i = this.k;
        int i2 = 0;
        while (i2 < i) {
            if (this.j[i2] == s5Var) {
                while (i2 < i - 1) {
                    s5[] s5VarArr = this.j;
                    int i3 = i2 + 1;
                    s5VarArr[i2] = s5VarArr[i3];
                    i2 = i3;
                }
                this.k--;
                return;
            }
            i2++;
        }
    }

    public void c() {
        this.i = a.UNKNOWN;
        this.d = 0;
        this.b = -1;
        this.c = -1;
        this.e = 0.0f;
        this.f = false;
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2] = null;
        }
        this.k = 0;
        this.l = 0;
        this.a = false;
        Arrays.fill(this.h, 0.0f);
    }

    public void d(u5 u5Var, float f) {
        this.e = f;
        this.f = true;
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].k(this, false);
        }
        this.k = 0;
    }

    public final void e(s5 s5Var) {
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].l(s5Var, false);
        }
        this.k = 0;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("");
        sbZ.append(this.b);
        return sbZ.toString();
    }
}
