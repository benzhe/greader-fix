package defpackage;

import defpackage.s5;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class y5 implements s5.a {
    public int a = 16;
    public int[] b = new int[16];
    public int[] c = new int[16];
    public int[] d = new int[16];
    public float[] e = new float[16];
    public int[] f = new int[16];
    public int[] g = new int[16];
    public int h = 0;
    public int i = -1;
    public final s5 j;
    public final t5 k;

    public y5(s5 s5Var, t5 t5Var) {
        this.j = s5Var;
        this.k = t5Var;
        clear();
    }

    @Override // s5.a
    public int a() {
        return this.h;
    }

    @Override // s5.a
    public x5 b(int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.i;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.k.d[this.d[i3]];
            }
            i3 = this.g[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // s5.a
    public void c() {
        int i = this.h;
        int i2 = this.i;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.e;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.g[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // s5.a
    public void clear() {
        int i = this.h;
        for (int i2 = 0; i2 < i; i2++) {
            x5 x5VarB = b(i2);
            if (x5VarB != null) {
                x5VarB.b(this.j);
            }
        }
        for (int i3 = 0; i3 < this.a; i3++) {
            this.d[i3] = -1;
            this.c[i3] = -1;
        }
        for (int i4 = 0; i4 < 16; i4++) {
            this.b[i4] = -1;
        }
        this.h = 0;
        this.i = -1;
    }

    @Override // s5.a
    public float d(int i) {
        int i2 = this.h;
        int i3 = this.i;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.e[i3];
            }
            i3 = this.g[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // s5.a
    public void e(x5 x5Var, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int iN = n(x5Var);
            if (iN == -1) {
                i(x5Var, f);
                return;
            }
            float[] fArr = this.e;
            fArr[iN] = fArr[iN] + f;
            if (fArr[iN] <= -0.001f || fArr[iN] >= 0.001f) {
                return;
            }
            fArr[iN] = 0.0f;
            j(x5Var, z);
        }
    }

    @Override // s5.a
    public float f(x5 x5Var) {
        int iN = n(x5Var);
        if (iN != -1) {
            return this.e[iN];
        }
        return 0.0f;
    }

    @Override // s5.a
    public boolean g(x5 x5Var) {
        return n(x5Var) != -1;
    }

    @Override // s5.a
    public float h(s5 s5Var, boolean z) {
        float f = f(s5Var.a);
        j(s5Var.a, z);
        y5 y5Var = (y5) s5Var.d;
        int i = y5Var.h;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int[] iArr = y5Var.d;
            if (iArr[i3] != -1) {
                e(this.k.d[iArr[i3]], y5Var.e[i3] * f, z);
                i2++;
            }
            i3++;
        }
        return f;
    }

    @Override // s5.a
    public void i(x5 x5Var, float f) {
        if (f > -0.001f && f < 0.001f) {
            j(x5Var, true);
            return;
        }
        int i = 0;
        if (this.h == 0) {
            m(0, x5Var, f);
            l(x5Var, 0);
            this.i = 0;
            return;
        }
        int iN = n(x5Var);
        if (iN != -1) {
            this.e[iN] = f;
            return;
        }
        int i2 = this.h + 1;
        int i3 = this.a;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            this.d = Arrays.copyOf(this.d, i4);
            this.e = Arrays.copyOf(this.e, i4);
            this.f = Arrays.copyOf(this.f, i4);
            this.g = Arrays.copyOf(this.g, i4);
            this.c = Arrays.copyOf(this.c, i4);
            for (int i5 = this.a; i5 < i4; i5++) {
                this.d[i5] = -1;
                this.c[i5] = -1;
            }
            this.a = i4;
        }
        int i6 = this.h;
        int i7 = this.i;
        int i8 = -1;
        for (int i9 = 0; i9 < i6; i9++) {
            int[] iArr = this.d;
            int i10 = iArr[i7];
            int i11 = x5Var.b;
            if (i10 == i11) {
                this.e[i7] = f;
                return;
            }
            if (iArr[i7] < i11) {
                i8 = i7;
            }
            i7 = this.g[i7];
            if (i7 == -1) {
                break;
            }
        }
        while (true) {
            if (i >= this.a) {
                i = -1;
                break;
            } else if (this.d[i] == -1) {
                break;
            } else {
                i++;
            }
        }
        m(i, x5Var, f);
        if (i8 != -1) {
            this.f[i] = i8;
            int[] iArr2 = this.g;
            iArr2[i] = iArr2[i8];
            iArr2[i8] = i;
        } else {
            this.f[i] = -1;
            if (this.h > 0) {
                this.g[i] = this.i;
                this.i = i;
            } else {
                this.g[i] = -1;
            }
        }
        int[] iArr3 = this.g;
        if (iArr3[i] != -1) {
            this.f[iArr3[i]] = i;
        }
        l(x5Var, i);
    }

    @Override // s5.a
    public float j(x5 x5Var, boolean z) {
        int[] iArr;
        int iN = n(x5Var);
        if (iN == -1) {
            return 0.0f;
        }
        int i = x5Var.b;
        int i2 = i % 16;
        int[] iArr2 = this.b;
        int i3 = iArr2[i2];
        if (i3 != -1) {
            if (this.d[i3] == i) {
                int[] iArr3 = this.c;
                iArr2[i2] = iArr3[i3];
                iArr3[i3] = -1;
            } else {
                while (true) {
                    iArr = this.c;
                    if (iArr[i3] == -1 || this.d[iArr[i3]] == i) {
                        break;
                    }
                    i3 = iArr[i3];
                }
                int i4 = iArr[i3];
                if (i4 != -1 && this.d[i4] == i) {
                    iArr[i3] = iArr[i4];
                    iArr[i4] = -1;
                }
            }
        }
        float f = this.e[iN];
        if (this.i == iN) {
            this.i = this.g[iN];
        }
        this.d[iN] = -1;
        int[] iArr4 = this.f;
        if (iArr4[iN] != -1) {
            int[] iArr5 = this.g;
            iArr5[iArr4[iN]] = iArr5[iN];
        }
        int[] iArr6 = this.g;
        if (iArr6[iN] != -1) {
            iArr4[iArr6[iN]] = iArr4[iN];
        }
        this.h--;
        x5Var.l--;
        if (z) {
            x5Var.b(this.j);
        }
        return f;
    }

    @Override // s5.a
    public void k(float f) {
        int i = this.h;
        int i2 = this.i;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.e;
            fArr[i2] = fArr[i2] / f;
            i2 = this.g[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    public final void l(x5 x5Var, int i) {
        int[] iArr;
        int i2 = x5Var.b % 16;
        int[] iArr2 = this.b;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.c;
                if (iArr[i3] == -1) {
                    break;
                } else {
                    i3 = iArr[i3];
                }
            }
            iArr[i3] = i;
        }
        this.c[i] = -1;
    }

    public final void m(int i, x5 x5Var, float f) {
        this.d[i] = x5Var.b;
        this.e[i] = f;
        this.f[i] = -1;
        this.g[i] = -1;
        x5Var.a(this.j);
        x5Var.l++;
        this.h++;
    }

    public int n(x5 x5Var) {
        int[] iArr;
        if (this.h == 0) {
            return -1;
        }
        int i = x5Var.b;
        int i2 = this.b[i % 16];
        if (i2 == -1) {
            return -1;
        }
        if (this.d[i2] == i) {
            return i2;
        }
        while (true) {
            iArr = this.c;
            if (iArr[i2] == -1 || this.d[iArr[i2]] == i) {
                break;
            }
            i2 = iArr[i2];
        }
        if (iArr[i2] != -1 && this.d[iArr[i2]] == i) {
            return iArr[i2];
        }
        return -1;
    }

    public String toString() {
        String strN;
        String strN2;
        String strN3 = hashCode() + " { ";
        int i = this.h;
        for (int i2 = 0; i2 < i; i2++) {
            x5 x5VarB = b(i2);
            if (x5VarB != null) {
                String str = strN3 + x5VarB + " = " + d(i2) + StringUtils.SPACE;
                int iN = n(x5VarB);
                String strN4 = jo.n(str, "[p: ");
                if (this.f[iN] != -1) {
                    StringBuilder sbZ = jo.z(strN4);
                    sbZ.append(this.k.d[this.d[this.f[iN]]]);
                    strN = sbZ.toString();
                } else {
                    strN = jo.n(strN4, "none");
                }
                String strN5 = jo.n(strN, ", n: ");
                if (this.g[iN] != -1) {
                    StringBuilder sbZ2 = jo.z(strN5);
                    sbZ2.append(this.k.d[this.d[this.g[iN]]]);
                    strN2 = sbZ2.toString();
                } else {
                    strN2 = jo.n(strN5, "none");
                }
                strN3 = jo.n(strN2, "]");
            }
        }
        return jo.n(strN3, " }");
    }
}
