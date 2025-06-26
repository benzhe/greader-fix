package defpackage;

import defpackage.s5;
import java.util.Arrays;

/* loaded from: classes.dex */
public class r5 implements s5.a {
    public final s5 b;
    public final t5 c;
    public int a = 0;
    public int d = 8;
    public int[] e = new int[8];
    public int[] f = new int[8];
    public float[] g = new float[8];
    public int h = -1;
    public int i = -1;
    public boolean j = false;

    public r5(s5 s5Var, t5 t5Var) {
        this.b = s5Var;
        this.c = t5Var;
    }

    @Override // s5.a
    public int a() {
        return this.a;
    }

    @Override // s5.a
    public x5 b(int i) {
        int i2 = this.h;
        for (int i3 = 0; i2 != -1 && i3 < this.a; i3++) {
            if (i3 == i) {
                return this.c.d[this.e[i2]];
            }
            i2 = this.f[i2];
        }
        return null;
    }

    @Override // s5.a
    public void c() {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            float[] fArr = this.g;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f[i];
        }
    }

    @Override // s5.a
    public final void clear() {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            x5 x5Var = this.c.d[this.e[i]];
            if (x5Var != null) {
                x5Var.b(this.b);
            }
            i = this.f[i];
        }
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.a = 0;
    }

    @Override // s5.a
    public float d(int i) {
        int i2 = this.h;
        for (int i3 = 0; i2 != -1 && i3 < this.a; i3++) {
            if (i3 == i) {
                return this.g[i2];
            }
            i2 = this.f[i2];
        }
        return 0.0f;
    }

    @Override // s5.a
    public void e(x5 x5Var, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.h;
            if (i == -1) {
                this.h = 0;
                this.g[0] = f;
                this.e[0] = x5Var.b;
                this.f[0] = -1;
                x5Var.l++;
                x5Var.a(this.b);
                this.a++;
                if (this.j) {
                    return;
                }
                int i2 = this.i + 1;
                this.i = i2;
                int[] iArr = this.e;
                if (i2 >= iArr.length) {
                    this.j = true;
                    this.i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.a; i4++) {
                int[] iArr2 = this.e;
                int i5 = iArr2[i];
                int i6 = x5Var.b;
                if (i5 == i6) {
                    float[] fArr = this.g;
                    float f2 = fArr[i] + f;
                    if (f2 > -0.001f && f2 < 0.001f) {
                        f2 = 0.0f;
                    }
                    fArr[i] = f2;
                    if (f2 == 0.0f) {
                        if (i == this.h) {
                            this.h = this.f[i];
                        } else {
                            int[] iArr3 = this.f;
                            iArr3[i3] = iArr3[i];
                        }
                        if (z) {
                            x5Var.b(this.b);
                        }
                        if (this.j) {
                            this.i = i;
                        }
                        x5Var.l--;
                        this.a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f[i];
            }
            int length = this.i;
            int i7 = length + 1;
            if (this.j) {
                int[] iArr4 = this.e;
                if (iArr4[length] != -1) {
                    length = iArr4.length;
                }
            } else {
                length = i7;
            }
            int[] iArr5 = this.e;
            if (length >= iArr5.length && this.a < iArr5.length) {
                int i8 = 0;
                while (true) {
                    int[] iArr6 = this.e;
                    if (i8 >= iArr6.length) {
                        break;
                    }
                    if (iArr6[i8] == -1) {
                        length = i8;
                        break;
                    }
                    i8++;
                }
            }
            int[] iArr7 = this.e;
            if (length >= iArr7.length) {
                length = iArr7.length;
                int i9 = this.d * 2;
                this.d = i9;
                this.j = false;
                this.i = length - 1;
                this.g = Arrays.copyOf(this.g, i9);
                this.e = Arrays.copyOf(this.e, this.d);
                this.f = Arrays.copyOf(this.f, this.d);
            }
            this.e[length] = x5Var.b;
            this.g[length] = f;
            if (i3 != -1) {
                int[] iArr8 = this.f;
                iArr8[length] = iArr8[i3];
                iArr8[i3] = length;
            } else {
                this.f[length] = this.h;
                this.h = length;
            }
            x5Var.l++;
            x5Var.a(this.b);
            this.a++;
            if (!this.j) {
                this.i++;
            }
            int i10 = this.i;
            int[] iArr9 = this.e;
            if (i10 >= iArr9.length) {
                this.j = true;
                this.i = iArr9.length - 1;
            }
        }
    }

    @Override // s5.a
    public final float f(x5 x5Var) {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            if (this.e[i] == x5Var.b) {
                return this.g[i];
            }
            i = this.f[i];
        }
        return 0.0f;
    }

    @Override // s5.a
    public boolean g(x5 x5Var) {
        int i = this.h;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            if (this.e[i] == x5Var.b) {
                return true;
            }
            i = this.f[i];
        }
        return false;
    }

    @Override // s5.a
    public float h(s5 s5Var, boolean z) {
        float f = f(s5Var.a);
        j(s5Var.a, z);
        s5.a aVar = s5Var.d;
        int iA = aVar.a();
        for (int i = 0; i < iA; i++) {
            x5 x5VarB = aVar.b(i);
            e(x5VarB, aVar.f(x5VarB) * f, z);
        }
        return f;
    }

    @Override // s5.a
    public final void i(x5 x5Var, float f) {
        if (f == 0.0f) {
            j(x5Var, true);
            return;
        }
        int i = this.h;
        if (i == -1) {
            this.h = 0;
            this.g[0] = f;
            this.e[0] = x5Var.b;
            this.f[0] = -1;
            x5Var.l++;
            x5Var.a(this.b);
            this.a++;
            if (this.j) {
                return;
            }
            int i2 = this.i + 1;
            this.i = i2;
            int[] iArr = this.e;
            if (i2 >= iArr.length) {
                this.j = true;
                this.i = iArr.length - 1;
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.a; i4++) {
            int[] iArr2 = this.e;
            int i5 = iArr2[i];
            int i6 = x5Var.b;
            if (i5 == i6) {
                this.g[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f[i];
        }
        int length = this.i;
        int i7 = length + 1;
        if (this.j) {
            int[] iArr3 = this.e;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i7;
        }
        int[] iArr4 = this.e;
        if (length >= iArr4.length && this.a < iArr4.length) {
            int i8 = 0;
            while (true) {
                int[] iArr5 = this.e;
                if (i8 >= iArr5.length) {
                    break;
                }
                if (iArr5[i8] == -1) {
                    length = i8;
                    break;
                }
                i8++;
            }
        }
        int[] iArr6 = this.e;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i9 = this.d * 2;
            this.d = i9;
            this.j = false;
            this.i = length - 1;
            this.g = Arrays.copyOf(this.g, i9);
            this.e = Arrays.copyOf(this.e, this.d);
            this.f = Arrays.copyOf(this.f, this.d);
        }
        this.e[length] = x5Var.b;
        this.g[length] = f;
        if (i3 != -1) {
            int[] iArr7 = this.f;
            iArr7[length] = iArr7[i3];
            iArr7[i3] = length;
        } else {
            this.f[length] = this.h;
            this.h = length;
        }
        x5Var.l++;
        x5Var.a(this.b);
        int i10 = this.a + 1;
        this.a = i10;
        if (!this.j) {
            this.i++;
        }
        int[] iArr8 = this.e;
        if (i10 >= iArr8.length) {
            this.j = true;
        }
        if (this.i >= iArr8.length) {
            this.j = true;
            this.i = iArr8.length - 1;
        }
    }

    @Override // s5.a
    public final float j(x5 x5Var, boolean z) {
        int i = this.h;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.a) {
            if (this.e[i] == x5Var.b) {
                if (i == this.h) {
                    this.h = this.f[i];
                } else {
                    int[] iArr = this.f;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    x5Var.b(this.b);
                }
                x5Var.l--;
                this.a--;
                this.e[i] = -1;
                if (this.j) {
                    this.i = i;
                }
                return this.g[i];
            }
            i2++;
            i3 = i;
            i = this.f[i];
        }
        return 0.0f;
    }

    @Override // s5.a
    public void k(float f) {
        int i = this.h;
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            float[] fArr = this.g;
            fArr[i] = fArr[i] / f;
            i = this.f[i];
        }
    }

    public String toString() {
        int i = this.h;
        String string = "";
        for (int i2 = 0; i != -1 && i2 < this.a; i2++) {
            StringBuilder sbZ = jo.z(jo.n(string, " -> "));
            sbZ.append(this.g[i]);
            sbZ.append(" : ");
            StringBuilder sbZ2 = jo.z(sbZ.toString());
            sbZ2.append(this.c.d[this.e[i]]);
            string = sbZ2.toString();
            i = this.f[i];
        }
        return string;
    }
}
