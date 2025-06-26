package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public class o4 extends p4 {
    public final double[] a;
    public a[] b;

    public static class a {
        public static double[] s = new double[91];
        public double[] a;
        public double b;
        public double c;
        public double d;
        public double e;
        public double f;
        public double g;
        public double h;
        public double i;
        public double j;
        public double k;
        public double l;
        public double m;
        public double n;
        public double o;
        public double p;
        public boolean q;
        public boolean r;

        public a(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            double d7 = d3;
            this.r = false;
            this.q = i == 1;
            this.c = d;
            this.d = d2;
            this.i = 1.0d / (d2 - d);
            if (3 == i) {
                this.r = true;
            }
            double d8 = d5 - d7;
            double d9 = d6 - d4;
            if (this.r || Math.abs(d8) < 0.001d || Math.abs(d9) < 0.001d) {
                this.r = true;
                this.e = d7;
                this.f = d5;
                this.g = d4;
                this.h = d6;
                double dHypot = Math.hypot(d9, d8);
                this.b = dHypot;
                this.n = dHypot * this.i;
                double d10 = this.d;
                double d11 = this.c;
                this.l = d8 / (d10 - d11);
                this.m = d9 / (d10 - d11);
                return;
            }
            this.a = new double[101];
            boolean z = this.q;
            this.j = (z ? -1 : 1) * d8;
            this.k = d9 * (z ? 1 : -1);
            this.l = z ? d5 : d7;
            this.m = z ? d4 : d6;
            double d12 = d4 - d6;
            int i2 = 0;
            double dHypot2 = 0.0d;
            double d13 = 0.0d;
            double d14 = 0.0d;
            while (true) {
                if (i2 >= s.length) {
                    break;
                }
                double radians = Math.toRadians((i2 * 90.0d) / (r14.length - 1));
                double dSin = Math.sin(radians) * d8;
                double dCos = Math.cos(radians) * d12;
                if (i2 > 0) {
                    dHypot2 += Math.hypot(dSin - d13, dCos - d14);
                    s[i2] = dHypot2;
                }
                i2++;
                d14 = dCos;
                d13 = dSin;
            }
            this.b = dHypot2;
            int i3 = 0;
            while (true) {
                double[] dArr = s;
                if (i3 >= dArr.length) {
                    break;
                }
                dArr[i3] = dArr[i3] / dHypot2;
                i3++;
            }
            int i4 = 0;
            while (true) {
                if (i4 >= this.a.length) {
                    this.n = this.b * this.i;
                    return;
                }
                double length = i4 / (r1.length - 1);
                int iBinarySearch = Arrays.binarySearch(s, length);
                if (iBinarySearch >= 0) {
                    this.a[i4] = iBinarySearch / (s.length - 1);
                } else if (iBinarySearch == -1) {
                    this.a[i4] = 0.0d;
                } else {
                    int i5 = -iBinarySearch;
                    int i6 = i5 - 2;
                    double[] dArr2 = s;
                    this.a[i4] = (((length - dArr2[i6]) / (dArr2[i5 - 1] - dArr2[i6])) + i6) / (dArr2.length - 1);
                }
                i4++;
            }
        }

        public double a() {
            double d = this.j * this.p;
            double dHypot = this.n / Math.hypot(d, (-this.k) * this.o);
            if (this.q) {
                d = -d;
            }
            return d * dHypot;
        }

        public double b() {
            double d = this.j * this.p;
            double d2 = (-this.k) * this.o;
            double dHypot = this.n / Math.hypot(d, d2);
            return this.q ? (-d2) * dHypot : d2 * dHypot;
        }

        public double c(double d) {
            double d2 = (d - this.c) * this.i;
            double d3 = this.e;
            return ((this.f - d3) * d2) + d3;
        }

        public double d(double d) {
            double d2 = (d - this.c) * this.i;
            double d3 = this.g;
            return ((this.h - d3) * d2) + d3;
        }

        public double e() {
            return (this.j * this.o) + this.l;
        }

        public double f() {
            return (this.k * this.p) + this.m;
        }

        public void g(double d) {
            double d2 = (this.q ? this.d - d : d - this.c) * this.i;
            double d3 = 0.0d;
            if (d2 > 0.0d) {
                d3 = 1.0d;
                if (d2 < 1.0d) {
                    double[] dArr = this.a;
                    double length = d2 * (dArr.length - 1);
                    int i = (int) length;
                    d3 = ((dArr[i + 1] - dArr[i]) * (length - i)) + dArr[i];
                }
            }
            double d4 = d3 * 1.5707963267948966d;
            this.o = Math.sin(d4);
            this.p = Math.cos(d4);
        }
    }

    public o4(int[] iArr, double[] dArr, double[][] dArr2) {
        this.a = dArr;
        this.b = new a[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            a[] aVarArr = this.b;
            if (i >= aVarArr.length) {
                return;
            }
            int i4 = iArr[i];
            if (i4 == 0) {
                i3 = 3;
            } else if (i4 == 1) {
                i2 = 1;
                i3 = 1;
            } else if (i4 == 2) {
                i2 = 2;
                i3 = 2;
            } else if (i4 == 3) {
                i2 = i2 == 1 ? 2 : 1;
                i3 = i2;
            }
            int i5 = i + 1;
            aVarArr[i] = new a(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
            i = i5;
        }
    }

    @Override // defpackage.p4
    public double b(double d, int i) {
        a[] aVarArr = this.b;
        int i2 = 0;
        if (d < aVarArr[0].c) {
            d = aVarArr[0].c;
        } else if (d > aVarArr[aVarArr.length - 1].d) {
            d = aVarArr[aVarArr.length - 1].d;
        }
        while (true) {
            a[] aVarArr2 = this.b;
            if (i2 >= aVarArr2.length) {
                return Double.NaN;
            }
            if (d <= aVarArr2[i2].d) {
                if (aVarArr2[i2].r) {
                    return i == 0 ? aVarArr2[i2].c(d) : aVarArr2[i2].d(d);
                }
                aVarArr2[i2].g(d);
                return i == 0 ? this.b[i2].e() : this.b[i2].f();
            }
            i2++;
        }
    }

    @Override // defpackage.p4
    public void c(double d, double[] dArr) {
        a[] aVarArr = this.b;
        if (d < aVarArr[0].c) {
            d = aVarArr[0].c;
        }
        if (d > aVarArr[aVarArr.length - 1].d) {
            d = aVarArr[aVarArr.length - 1].d;
        }
        int i = 0;
        while (true) {
            a[] aVarArr2 = this.b;
            if (i >= aVarArr2.length) {
                return;
            }
            if (d <= aVarArr2[i].d) {
                if (aVarArr2[i].r) {
                    dArr[0] = aVarArr2[i].c(d);
                    dArr[1] = this.b[i].d(d);
                    return;
                } else {
                    aVarArr2[i].g(d);
                    dArr[0] = this.b[i].e();
                    dArr[1] = this.b[i].f();
                    return;
                }
            }
            i++;
        }
    }

    @Override // defpackage.p4
    public void d(double d, float[] fArr) {
        a[] aVarArr = this.b;
        if (d < aVarArr[0].c) {
            d = aVarArr[0].c;
        } else if (d > aVarArr[aVarArr.length - 1].d) {
            d = aVarArr[aVarArr.length - 1].d;
        }
        int i = 0;
        while (true) {
            a[] aVarArr2 = this.b;
            if (i >= aVarArr2.length) {
                return;
            }
            if (d <= aVarArr2[i].d) {
                if (aVarArr2[i].r) {
                    fArr[0] = (float) aVarArr2[i].c(d);
                    fArr[1] = (float) this.b[i].d(d);
                    return;
                } else {
                    aVarArr2[i].g(d);
                    fArr[0] = (float) this.b[i].e();
                    fArr[1] = (float) this.b[i].f();
                    return;
                }
            }
            i++;
        }
    }

    @Override // defpackage.p4
    public double e(double d, int i) {
        a[] aVarArr = this.b;
        int i2 = 0;
        if (d < aVarArr[0].c) {
            d = aVarArr[0].c;
        }
        if (d > aVarArr[aVarArr.length - 1].d) {
            d = aVarArr[aVarArr.length - 1].d;
        }
        while (true) {
            a[] aVarArr2 = this.b;
            if (i2 >= aVarArr2.length) {
                return Double.NaN;
            }
            if (d <= aVarArr2[i2].d) {
                if (aVarArr2[i2].r) {
                    return i == 0 ? aVarArr2[i2].l : aVarArr2[i2].m;
                }
                aVarArr2[i2].g(d);
                return i == 0 ? this.b[i2].a() : this.b[i2].b();
            }
            i2++;
        }
    }

    @Override // defpackage.p4
    public void f(double d, double[] dArr) {
        a[] aVarArr = this.b;
        if (d < aVarArr[0].c) {
            d = aVarArr[0].c;
        } else if (d > aVarArr[aVarArr.length - 1].d) {
            d = aVarArr[aVarArr.length - 1].d;
        }
        int i = 0;
        while (true) {
            a[] aVarArr2 = this.b;
            if (i >= aVarArr2.length) {
                return;
            }
            if (d <= aVarArr2[i].d) {
                if (aVarArr2[i].r) {
                    dArr[0] = aVarArr2[i].l;
                    dArr[1] = aVarArr2[i].m;
                    return;
                } else {
                    aVarArr2[i].g(d);
                    dArr[0] = this.b[i].a();
                    dArr[1] = this.b[i].b();
                    return;
                }
            }
            i++;
        }
    }

    @Override // defpackage.p4
    public double[] g() {
        return this.a;
    }
}
