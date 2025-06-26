package defpackage;

import defpackage.x5;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class u5 {
    public static int o = 1000;
    public static boolean p = true;
    public static long q;
    public static long r;
    public a b;
    public s5[] e;
    public final t5 k;
    public a n;
    public int a = 0;
    public int c = 32;
    public int d = 32;
    public boolean f = false;
    public boolean[] g = new boolean[32];
    public int h = 1;
    public int i = 0;
    public int j = 32;
    public x5[] l = new x5[o];
    public int m = 0;

    public interface a {
        void a(x5 x5Var);

        x5 b(u5 u5Var, boolean[] zArr);

        void clear();
    }

    public class b extends s5 {
        public b(u5 u5Var, t5 t5Var) {
            this.d = new y5(this, t5Var);
        }
    }

    public u5() {
        this.e = null;
        this.e = new s5[32];
        s();
        t5 t5Var = new t5();
        this.k = t5Var;
        this.b = new w5(t5Var);
        if (p) {
            this.n = new b(this, t5Var);
        } else {
            this.n = new s5(t5Var);
        }
    }

    public final x5 a(x5.a aVar, String str) {
        x5 x5VarA = this.k.c.a();
        if (x5VarA == null) {
            x5VarA = new x5(aVar);
            x5VarA.i = aVar;
        } else {
            x5VarA.c();
            x5VarA.i = aVar;
        }
        int i = this.m;
        int i2 = o;
        if (i >= i2) {
            int i3 = i2 * 2;
            o = i3;
            this.l = (x5[]) Arrays.copyOf(this.l, i3);
        }
        x5[] x5VarArr = this.l;
        int i4 = this.m;
        this.m = i4 + 1;
        x5VarArr[i4] = x5VarA;
        return x5VarA;
    }

    public void b(x5 x5Var, x5 x5Var2, int i, float f, x5 x5Var3, x5 x5Var4, int i2, int i3) {
        s5 s5VarM = m();
        if (x5Var2 == x5Var3) {
            s5VarM.d.i(x5Var, 1.0f);
            s5VarM.d.i(x5Var4, 1.0f);
            s5VarM.d.i(x5Var2, -2.0f);
        } else if (f == 0.5f) {
            s5VarM.d.i(x5Var, 1.0f);
            s5VarM.d.i(x5Var2, -1.0f);
            s5VarM.d.i(x5Var3, -1.0f);
            s5VarM.d.i(x5Var4, 1.0f);
            if (i > 0 || i2 > 0) {
                s5VarM.b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            s5VarM.d.i(x5Var, -1.0f);
            s5VarM.d.i(x5Var2, 1.0f);
            s5VarM.b = i;
        } else if (f >= 1.0f) {
            s5VarM.d.i(x5Var4, -1.0f);
            s5VarM.d.i(x5Var3, 1.0f);
            s5VarM.b = -i2;
        } else {
            float f2 = 1.0f - f;
            s5VarM.d.i(x5Var, f2 * 1.0f);
            s5VarM.d.i(x5Var2, f2 * (-1.0f));
            s5VarM.d.i(x5Var3, (-1.0f) * f);
            s5VarM.d.i(x5Var4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                s5VarM.b = (i2 * f) + ((-i) * f2);
            }
        }
        if (i3 != 8) {
            s5VarM.c(this, i3);
        }
        c(s5VarM);
    }

    public void c(s5 s5Var) {
        boolean z;
        boolean z2;
        boolean z3;
        x5 x5VarI;
        x5.a aVar = x5.a.UNRESTRICTED;
        boolean z4 = true;
        if (this.i + 1 >= this.j || this.h + 1 >= this.d) {
            p();
        }
        if (s5Var.e) {
            z = false;
        } else {
            if (this.e.length != 0) {
                boolean z5 = false;
                while (!z5) {
                    int iA = s5Var.d.a();
                    for (int i = 0; i < iA; i++) {
                        x5 x5VarB = s5Var.d.b(i);
                        if (x5VarB.c != -1 || x5VarB.f) {
                            s5Var.c.add(x5VarB);
                        }
                    }
                    if (s5Var.c.size() > 0) {
                        Iterator<x5> it = s5Var.c.iterator();
                        while (it.hasNext()) {
                            x5 next = it.next();
                            if (next.f) {
                                s5Var.k(next, true);
                            } else {
                                s5Var.l(this.e[next.c], true);
                            }
                        }
                        s5Var.c.clear();
                    } else {
                        z5 = true;
                    }
                }
            }
            if (s5Var.a == null && s5Var.b == 0.0f && s5Var.d.a() == 0) {
                return;
            }
            float f = s5Var.b;
            if (f < 0.0f) {
                s5Var.b = f * (-1.0f);
                s5Var.d.c();
            }
            int iA2 = s5Var.d.a();
            x5 x5Var = null;
            x5 x5Var2 = null;
            float f2 = 0.0f;
            boolean z6 = false;
            float f3 = 0.0f;
            boolean z7 = false;
            for (int i2 = 0; i2 < iA2; i2++) {
                float fD = s5Var.d.d(i2);
                x5 x5VarB2 = s5Var.d.b(i2);
                if (x5VarB2.i == aVar) {
                    if (x5Var == null || f2 > fD) {
                        boolean zH = s5Var.h(x5VarB2);
                        z6 = zH;
                        f2 = fD;
                        x5Var = x5VarB2;
                    } else if (!z6 && s5Var.h(x5VarB2)) {
                        f2 = fD;
                        x5Var = x5VarB2;
                        z6 = true;
                    }
                } else if (x5Var == null && fD < 0.0f) {
                    if (x5Var2 == null || f3 > fD) {
                        boolean zH2 = s5Var.h(x5VarB2);
                        z7 = zH2;
                        f3 = fD;
                        x5Var2 = x5VarB2;
                    } else if (!z7 && s5Var.h(x5VarB2)) {
                        f3 = fD;
                        x5Var2 = x5VarB2;
                        z7 = true;
                    }
                }
            }
            if (x5Var == null) {
                x5Var = x5Var2;
            }
            if (x5Var == null) {
                z2 = true;
            } else {
                s5Var.j(x5Var);
                z2 = false;
            }
            if (s5Var.d.a() == 0) {
                s5Var.e = true;
            }
            if (z2) {
                if (this.h + 1 >= this.d) {
                    p();
                }
                x5 x5VarA = a(x5.a.SLACK, null);
                int i3 = this.a + 1;
                this.a = i3;
                this.h++;
                x5VarA.b = i3;
                this.k.d[i3] = x5VarA;
                s5Var.a = x5VarA;
                i(s5Var);
                s5 s5Var2 = (s5) this.n;
                Objects.requireNonNull(s5Var2);
                s5Var2.a = null;
                s5Var2.d.clear();
                for (int i4 = 0; i4 < s5Var.d.a(); i4++) {
                    s5Var2.d.e(s5Var.d.b(i4), s5Var.d.d(i4), true);
                }
                r(this.n);
                if (x5VarA.c == -1) {
                    if (s5Var.a == x5VarA && (x5VarI = s5Var.i(null, x5VarA)) != null) {
                        s5Var.j(x5VarI);
                    }
                    if (!s5Var.e) {
                        s5Var.a.e(s5Var);
                    }
                    this.i--;
                }
                z3 = true;
            } else {
                z3 = false;
            }
            x5 x5Var3 = s5Var.a;
            if (x5Var3 == null || (x5Var3.i != aVar && s5Var.b < 0.0f)) {
                z4 = false;
            }
            if (!z4) {
                return;
            } else {
                z = z3;
            }
        }
        if (z) {
            return;
        }
        i(s5Var);
    }

    public s5 d(x5 x5Var, x5 x5Var2, int i, int i2) {
        if (i2 == 8 && x5Var2.f && x5Var.c == -1) {
            x5Var.d(this, x5Var2.e + i);
            return null;
        }
        s5 s5VarM = m();
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            s5VarM.b = i;
        }
        if (z) {
            s5VarM.d.i(x5Var, 1.0f);
            s5VarM.d.i(x5Var2, -1.0f);
        } else {
            s5VarM.d.i(x5Var, -1.0f);
            s5VarM.d.i(x5Var2, 1.0f);
        }
        if (i2 != 8) {
            s5VarM.c(this, i2);
        }
        c(s5VarM);
        return s5VarM;
    }

    public void e(x5 x5Var, int i) {
        int i2 = x5Var.c;
        if (i2 == -1) {
            x5Var.d(this, i);
            return;
        }
        if (i2 == -1) {
            s5 s5VarM = m();
            s5VarM.a = x5Var;
            float f = i;
            x5Var.e = f;
            s5VarM.b = f;
            s5VarM.e = true;
            c(s5VarM);
            return;
        }
        s5 s5Var = this.e[i2];
        if (s5Var.e) {
            s5Var.b = i;
            return;
        }
        if (s5Var.d.a() == 0) {
            s5Var.e = true;
            s5Var.b = i;
            return;
        }
        s5 s5VarM2 = m();
        if (i < 0) {
            s5VarM2.b = i * (-1);
            s5VarM2.d.i(x5Var, 1.0f);
        } else {
            s5VarM2.b = i;
            s5VarM2.d.i(x5Var, -1.0f);
        }
        c(s5VarM2);
    }

    public void f(x5 x5Var, x5 x5Var2, int i, int i2) {
        s5 s5VarM = m();
        x5 x5VarN = n();
        x5VarN.d = 0;
        s5VarM.e(x5Var, x5Var2, x5VarN, i);
        if (i2 != 8) {
            s5VarM.d.i(k(i2, null), (int) (s5VarM.d.f(x5VarN) * (-1.0f)));
        }
        c(s5VarM);
    }

    public void g(x5 x5Var, x5 x5Var2, int i, int i2) {
        s5 s5VarM = m();
        x5 x5VarN = n();
        x5VarN.d = 0;
        s5VarM.f(x5Var, x5Var2, x5VarN, i);
        if (i2 != 8) {
            s5VarM.d.i(k(i2, null), (int) (s5VarM.d.f(x5VarN) * (-1.0f)));
        }
        c(s5VarM);
    }

    public void h(x5 x5Var, x5 x5Var2, x5 x5Var3, x5 x5Var4, float f, int i) {
        s5 s5VarM = m();
        s5VarM.d(x5Var, x5Var2, x5Var3, x5Var4, f);
        if (i != 8) {
            s5VarM.c(this, i);
        }
        c(s5VarM);
    }

    public final void i(s5 s5Var) {
        if (p) {
            s5[] s5VarArr = this.e;
            int i = this.i;
            if (s5VarArr[i] != null) {
                this.k.a.b(s5VarArr[i]);
            }
        } else {
            s5[] s5VarArr2 = this.e;
            int i2 = this.i;
            if (s5VarArr2[i2] != null) {
                this.k.b.b(s5VarArr2[i2]);
            }
        }
        s5[] s5VarArr3 = this.e;
        int i3 = this.i;
        s5VarArr3[i3] = s5Var;
        x5 x5Var = s5Var.a;
        x5Var.c = i3;
        this.i = i3 + 1;
        x5Var.e(s5Var);
    }

    public final void j() {
        for (int i = 0; i < this.i; i++) {
            s5 s5Var = this.e[i];
            s5Var.a.e = s5Var.b;
        }
    }

    public x5 k(int i, String str) {
        if (this.h + 1 >= this.d) {
            p();
        }
        x5 x5VarA = a(x5.a.ERROR, str);
        int i2 = this.a + 1;
        this.a = i2;
        this.h++;
        x5VarA.b = i2;
        x5VarA.d = i;
        this.k.d[i2] = x5VarA;
        this.b.a(x5VarA);
        return x5VarA;
    }

    public x5 l(Object obj) {
        x5 x5Var = null;
        if (obj == null) {
            return null;
        }
        if (this.h + 1 >= this.d) {
            p();
        }
        if (obj instanceof b6) {
            b6 b6Var = (b6) obj;
            x5Var = b6Var.g;
            if (x5Var == null) {
                b6Var.i();
                x5Var = b6Var.g;
            }
            int i = x5Var.b;
            if (i == -1 || i > this.a || this.k.d[i] == null) {
                if (i != -1) {
                    x5Var.c();
                }
                int i2 = this.a + 1;
                this.a = i2;
                this.h++;
                x5Var.b = i2;
                x5Var.i = x5.a.UNRESTRICTED;
                this.k.d[i2] = x5Var;
            }
        }
        return x5Var;
    }

    public s5 m() {
        s5 s5VarA;
        if (p) {
            s5VarA = this.k.a.a();
            if (s5VarA == null) {
                s5VarA = new b(this, this.k);
                r++;
            } else {
                s5VarA.a = null;
                s5VarA.d.clear();
                s5VarA.b = 0.0f;
                s5VarA.e = false;
            }
        } else {
            s5VarA = this.k.b.a();
            if (s5VarA == null) {
                s5VarA = new s5(this.k);
                q++;
            } else {
                s5VarA.a = null;
                s5VarA.d.clear();
                s5VarA.b = 0.0f;
                s5VarA.e = false;
            }
        }
        x5.m++;
        return s5VarA;
    }

    public x5 n() {
        if (this.h + 1 >= this.d) {
            p();
        }
        x5 x5VarA = a(x5.a.SLACK, null);
        int i = this.a + 1;
        this.a = i;
        this.h++;
        x5VarA.b = i;
        this.k.d[i] = x5VarA;
        return x5VarA;
    }

    public int o(Object obj) {
        x5 x5Var = ((b6) obj).g;
        if (x5Var != null) {
            return (int) (x5Var.e + 0.5f);
        }
        return 0;
    }

    public final void p() {
        int i = this.c * 2;
        this.c = i;
        this.e = (s5[]) Arrays.copyOf(this.e, i);
        t5 t5Var = this.k;
        t5Var.d = (x5[]) Arrays.copyOf(t5Var.d, this.c);
        int i2 = this.c;
        this.g = new boolean[i2];
        this.d = i2;
        this.j = i2;
    }

    public void q(a aVar) throws Exception {
        float f;
        int i;
        boolean z;
        x5.a aVar2 = x5.a.UNRESTRICTED;
        int i2 = 0;
        while (true) {
            f = 0.0f;
            i = 1;
            if (i2 >= this.i) {
                z = false;
                break;
            }
            s5[] s5VarArr = this.e;
            if (s5VarArr[i2].a.i != aVar2 && s5VarArr[i2].b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            int i3 = 0;
            while (!z2) {
                i3 += i;
                float f2 = Float.MAX_VALUE;
                int i4 = 0;
                int i5 = -1;
                int i6 = -1;
                int i7 = 0;
                while (i4 < this.i) {
                    s5 s5Var = this.e[i4];
                    if (s5Var.a.i != aVar2 && !s5Var.e && s5Var.b < f) {
                        int i8 = 1;
                        while (i8 < this.h) {
                            x5 x5Var = this.k.d[i8];
                            float f3 = s5Var.d.f(x5Var);
                            if (f3 > f) {
                                for (int i9 = 0; i9 < 9; i9++) {
                                    float f4 = x5Var.g[i9] / f3;
                                    if ((f4 < f2 && i9 == i7) || i9 > i7) {
                                        i7 = i9;
                                        f2 = f4;
                                        i5 = i4;
                                        i6 = i8;
                                    }
                                }
                            }
                            i8++;
                            f = 0.0f;
                        }
                    }
                    i4++;
                    f = 0.0f;
                }
                if (i5 != -1) {
                    s5 s5Var2 = this.e[i5];
                    s5Var2.a.c = -1;
                    s5Var2.j(this.k.d[i6]);
                    x5 x5Var2 = s5Var2.a;
                    x5Var2.c = i5;
                    x5Var2.e(s5Var2);
                } else {
                    z2 = true;
                }
                if (i3 > this.h / 2) {
                    z2 = true;
                }
                f = 0.0f;
                i = 1;
            }
        }
        r(aVar);
        j();
    }

    public final int r(a aVar) {
        for (int i = 0; i < this.h; i++) {
            this.g[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        while (!z) {
            i2++;
            if (i2 >= this.h * 2) {
                return i2;
            }
            x5 x5Var = ((s5) aVar).a;
            if (x5Var != null) {
                this.g[x5Var.b] = true;
            }
            x5 x5VarB = aVar.b(this, this.g);
            if (x5VarB != null) {
                boolean[] zArr = this.g;
                int i3 = x5VarB.b;
                if (zArr[i3]) {
                    return i2;
                }
                zArr[i3] = true;
            }
            if (x5VarB != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.i; i5++) {
                    s5 s5Var = this.e[i5];
                    if (s5Var.a.i != x5.a.UNRESTRICTED && !s5Var.e && s5Var.d.g(x5VarB)) {
                        float f2 = s5Var.d.f(x5VarB);
                        if (f2 < 0.0f) {
                            float f3 = (-s5Var.b) / f2;
                            if (f3 < f) {
                                i4 = i5;
                                f = f3;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    s5 s5Var2 = this.e[i4];
                    s5Var2.a.c = -1;
                    s5Var2.j(x5VarB);
                    x5 x5Var2 = s5Var2.a;
                    x5Var2.c = i4;
                    x5Var2.e(s5Var2);
                }
            } else {
                z = true;
            }
        }
        return i2;
    }

    public final void s() {
        int i = 0;
        if (p) {
            while (true) {
                s5[] s5VarArr = this.e;
                if (i >= s5VarArr.length) {
                    return;
                }
                s5 s5Var = s5VarArr[i];
                if (s5Var != null) {
                    this.k.a.b(s5Var);
                }
                this.e[i] = null;
                i++;
            }
        } else {
            while (true) {
                s5[] s5VarArr2 = this.e;
                if (i >= s5VarArr2.length) {
                    return;
                }
                s5 s5Var2 = s5VarArr2[i];
                if (s5Var2 != null) {
                    this.k.b.b(s5Var2);
                }
                this.e[i] = null;
                i++;
            }
        }
    }

    public void t() {
        t5 t5Var;
        int i = 0;
        while (true) {
            t5Var = this.k;
            x5[] x5VarArr = t5Var.d;
            if (i >= x5VarArr.length) {
                break;
            }
            x5 x5Var = x5VarArr[i];
            if (x5Var != null) {
                x5Var.c();
            }
            i++;
        }
        v5<x5> v5Var = t5Var.c;
        x5[] x5VarArr2 = this.l;
        int length = this.m;
        Objects.requireNonNull(v5Var);
        if (length > x5VarArr2.length) {
            length = x5VarArr2.length;
        }
        for (int i2 = 0; i2 < length; i2++) {
            x5 x5Var2 = x5VarArr2[i2];
            int i3 = v5Var.b;
            Object[] objArr = v5Var.a;
            if (i3 < objArr.length) {
                objArr[i3] = x5Var2;
                v5Var.b = i3 + 1;
            }
        }
        this.m = 0;
        Arrays.fill(this.k.d, (Object) null);
        this.a = 0;
        this.b.clear();
        this.h = 1;
        for (int i4 = 0; i4 < this.i; i4++) {
            Objects.requireNonNull(this.e[i4]);
        }
        s();
        this.i = 0;
        if (p) {
            this.n = new b(this, this.k);
        } else {
            this.n = new s5(this.k);
        }
    }
}
