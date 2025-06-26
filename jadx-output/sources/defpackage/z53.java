package defpackage;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class z53 {
    public final u53 a;
    public int b;
    public int c;
    public int d = 0;

    public z53(u53 u53Var) {
        Charset charset = u63.a;
        this.a = u53Var;
        u53Var.d = this;
    }

    public static void E(int i) throws IOException {
        if ((i & 7) != 0) {
            throw e73.g();
        }
    }

    public static void F(int i) throws IOException {
        if ((i & 3) != 0) {
            throw e73.g();
        }
    }

    public final boolean A() throws IOException {
        int i;
        if (this.a.t() || (i = this.b) == this.c) {
            return false;
        }
        return this.a.x(i);
    }

    public final <T> T B(w83<T> w83Var, e63 e63Var) throws IOException {
        int iN = this.a.n();
        u53 u53Var = this.a;
        if (u53Var.a >= u53Var.b) {
            throw new e73("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iY = u53Var.y(iN);
        T tC = w83Var.c();
        this.a.a++;
        w83Var.h(tC, this, e63Var);
        w83Var.j(tC);
        this.a.w(0);
        r5.a--;
        this.a.z(iY);
        return tC;
    }

    public final <T> T C(w83<T> w83Var, e63 e63Var) throws IOException {
        int i = this.c;
        this.c = ((this.b >>> 3) << 3) | 4;
        try {
            T tC = w83Var.c();
            w83Var.h(tC, this, e63Var);
            w83Var.j(tC);
            if (this.b == this.c) {
                return tC;
            }
            throw e73.g();
        } finally {
            this.c = i;
        }
    }

    public final void D(int i) throws IOException {
        if ((this.b & 7) != i) {
            throw e73.f();
        }
    }

    public final void G(int i) throws IOException {
        if (this.a.u() != i) {
            throw e73.a();
        }
    }

    public final void H(List<Double> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof c63)) {
            int i = this.b & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.a.a()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iN = this.a.n();
            E(iN);
            int iU = this.a.u() + iN;
            do {
                list.add(Double.valueOf(this.a.a()));
            } while (this.a.u() < iU);
            return;
        }
        c63 c63Var = (c63) list;
        int i2 = this.b & 7;
        if (i2 == 1) {
            do {
                c63Var.h(this.a.a());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iN2 = this.a.n();
        E(iN2);
        int iU2 = this.a.u() + iN2;
        do {
            c63Var.h(this.a.a());
        } while (this.a.u() < iU2);
    }

    public final void I(List<Float> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof q63)) {
            int i = this.b & 7;
            if (i == 2) {
                int iN = this.a.n();
                F(iN);
                int iU = this.a.u() + iN;
                do {
                    list.add(Float.valueOf(this.a.b()));
                } while (this.a.u() < iU);
                return;
            }
            if (i != 5) {
                throw e73.f();
            }
            do {
                list.add(Float.valueOf(this.a.b()));
                if (this.a.t()) {
                    return;
                } else {
                    iE = this.a.e();
                }
            } while (iE == this.b);
            this.d = iE;
            return;
        }
        q63 q63Var = (q63) list;
        int i2 = this.b & 7;
        if (i2 == 2) {
            int iN2 = this.a.n();
            F(iN2);
            int iU2 = this.a.u() + iN2;
            do {
                q63Var.l(this.a.b());
            } while (this.a.u() < iU2);
            return;
        }
        if (i2 != 5) {
            throw e73.f();
        }
        do {
            q63Var.l(this.a.b());
            if (this.a.t()) {
                return;
            } else {
                iE2 = this.a.e();
            }
        } while (iE2 == this.b);
        this.d = iE2;
    }

    public final void J(List<Long> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof t73)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.a.f()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Long.valueOf(this.a.f()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        t73 t73Var = (t73) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                t73Var.j(this.a.f());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            t73Var.j(this.a.f());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final void K(List<Long> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof t73)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.a.g()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Long.valueOf(this.a.g()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        t73 t73Var = (t73) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                t73Var.j(this.a.g());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            t73Var.j(this.a.g());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final void L(List<Integer> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof v63)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.h()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Integer.valueOf(this.a.h()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        v63 v63Var = (v63) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                v63Var.o(this.a.h());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            v63Var.o(this.a.h());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final void M(List<Long> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof t73)) {
            int i = this.b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.a.i()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iN = this.a.n();
            E(iN);
            int iU = this.a.u() + iN;
            do {
                list.add(Long.valueOf(this.a.i()));
            } while (this.a.u() < iU);
            return;
        }
        t73 t73Var = (t73) list;
        int i2 = this.b & 7;
        if (i2 == 1) {
            do {
                t73Var.j(this.a.i());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iN2 = this.a.n();
        E(iN2);
        int iU2 = this.a.u() + iN2;
        do {
            t73Var.j(this.a.i());
        } while (this.a.u() < iU2);
    }

    public final void N(List<Integer> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof v63)) {
            int i = this.b & 7;
            if (i == 2) {
                int iN = this.a.n();
                F(iN);
                int iU = this.a.u() + iN;
                do {
                    list.add(Integer.valueOf(this.a.j()));
                } while (this.a.u() < iU);
                return;
            }
            if (i != 5) {
                throw e73.f();
            }
            do {
                list.add(Integer.valueOf(this.a.j()));
                if (this.a.t()) {
                    return;
                } else {
                    iE = this.a.e();
                }
            } while (iE == this.b);
            this.d = iE;
            return;
        }
        v63 v63Var = (v63) list;
        int i2 = this.b & 7;
        if (i2 == 2) {
            int iN2 = this.a.n();
            F(iN2);
            int iU2 = this.a.u() + iN2;
            do {
                v63Var.o(this.a.j());
            } while (this.a.u() < iU2);
            return;
        }
        if (i2 != 5) {
            throw e73.f();
        }
        do {
            v63Var.o(this.a.j());
            if (this.a.t()) {
                return;
            } else {
                iE2 = this.a.e();
            }
        } while (iE2 == this.b);
        this.d = iE2;
    }

    public final void O(List<Boolean> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof i53)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.a.k()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Boolean.valueOf(this.a.k()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        i53 i53Var = (i53) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                i53Var.h(this.a.k());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            i53Var.h(this.a.k());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final void P(List<String> list) throws IOException {
        f(list, true);
    }

    public final void Q(List<k53> list) throws IOException {
        int iE;
        if ((this.b & 7) != 2) {
            throw e73.f();
        }
        do {
            list.add(s());
            if (this.a.t()) {
                return;
            } else {
                iE = this.a.e();
            }
        } while (iE == this.b);
        this.d = iE;
    }

    public final void R(List<Integer> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof v63)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.n()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Integer.valueOf(this.a.n()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        v63 v63Var = (v63) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                v63Var.o(this.a.n());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            v63Var.o(this.a.n());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final void S(List<Integer> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof v63)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.o()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Integer.valueOf(this.a.o()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        v63 v63Var = (v63) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                v63Var.o(this.a.o());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            v63Var.o(this.a.o());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final void T(List<Integer> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof v63)) {
            int i = this.b & 7;
            if (i == 2) {
                int iN = this.a.n();
                F(iN);
                int iU = this.a.u() + iN;
                do {
                    list.add(Integer.valueOf(this.a.p()));
                } while (this.a.u() < iU);
                return;
            }
            if (i != 5) {
                throw e73.f();
            }
            do {
                list.add(Integer.valueOf(this.a.p()));
                if (this.a.t()) {
                    return;
                } else {
                    iE = this.a.e();
                }
            } while (iE == this.b);
            this.d = iE;
            return;
        }
        v63 v63Var = (v63) list;
        int i2 = this.b & 7;
        if (i2 == 2) {
            int iN2 = this.a.n();
            F(iN2);
            int iU2 = this.a.u() + iN2;
            do {
                v63Var.o(this.a.p());
            } while (this.a.u() < iU2);
            return;
        }
        if (i2 != 5) {
            throw e73.f();
        }
        do {
            v63Var.o(this.a.p());
            if (this.a.t()) {
                return;
            } else {
                iE2 = this.a.e();
            }
        } while (iE2 == this.b);
        this.d = iE2;
    }

    public final void U(List<Long> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof t73)) {
            int i = this.b & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.a.q()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iN = this.a.n();
            E(iN);
            int iU = this.a.u() + iN;
            do {
                list.add(Long.valueOf(this.a.q()));
            } while (this.a.u() < iU);
            return;
        }
        t73 t73Var = (t73) list;
        int i2 = this.b & 7;
        if (i2 == 1) {
            do {
                t73Var.j(this.a.q());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iN2 = this.a.n();
        E(iN2);
        int iU2 = this.a.u() + iN2;
        do {
            t73Var.j(this.a.q());
        } while (this.a.u() < iU2);
    }

    public final double a() throws IOException {
        D(1);
        return this.a.a();
    }

    public final float b() throws IOException {
        D(5);
        return this.a.b();
    }

    public final void c(List<String> list) throws IOException {
        f(list, false);
    }

    public final <T> T d(w83<T> w83Var, e63 e63Var) throws IOException {
        D(2);
        return (T) B(w83Var, e63Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void e(List<T> list, w83<T> w83Var, e63 e63Var) throws IOException {
        int iE;
        int i = this.b;
        if ((i & 7) != 2) {
            throw e73.f();
        }
        do {
            list.add(B(w83Var, e63Var));
            if (this.a.t() || this.d != 0) {
                return;
            } else {
                iE = this.a.e();
            }
        } while (iE == i);
        this.d = iE;
    }

    public final void f(List<String> list, boolean z) throws IOException {
        String strC;
        int iE;
        int iE2;
        if ((this.b & 7) != 2) {
            throw e73.f();
        }
        if ((list instanceof l73) && !z) {
            l73 l73Var = (l73) list;
            do {
                l73Var.Z(s());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        do {
            if (z) {
                strC = r();
            } else {
                D(2);
                strC = this.a.c();
            }
            list.add(strC);
            if (this.a.t()) {
                return;
            } else {
                iE = this.a.e();
            }
        } while (iE == this.b);
        this.d = iE;
    }

    public final <K, V> void g(Map<K, V> map, w73<K, V> w73Var, e63 e63Var) throws IOException {
        D(2);
        this.a.y(this.a.n());
        throw null;
    }

    public final void h(List<Integer> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof v63)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.a.r()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Integer.valueOf(this.a.r()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        v63 v63Var = (v63) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                v63Var.o(this.a.r());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            v63Var.o(this.a.r());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final void i(List<Long> list) throws IOException {
        int iE;
        int iE2;
        if (!(list instanceof t73)) {
            int i = this.b & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.a.s()));
                    if (this.a.t()) {
                        return;
                    } else {
                        iE = this.a.e();
                    }
                } while (iE == this.b);
                this.d = iE;
                return;
            }
            if (i != 2) {
                throw e73.f();
            }
            int iU = this.a.u() + this.a.n();
            do {
                list.add(Long.valueOf(this.a.s()));
            } while (this.a.u() < iU);
            G(iU);
            return;
        }
        t73 t73Var = (t73) list;
        int i2 = this.b & 7;
        if (i2 == 0) {
            do {
                t73Var.j(this.a.s());
                if (this.a.t()) {
                    return;
                } else {
                    iE2 = this.a.e();
                }
            } while (iE2 == this.b);
            this.d = iE2;
            return;
        }
        if (i2 != 2) {
            throw e73.f();
        }
        int iU2 = this.a.u() + this.a.n();
        do {
            t73Var.j(this.a.s());
        } while (this.a.u() < iU2);
        G(iU2);
    }

    public final <T> T j(w83<T> w83Var, e63 e63Var) throws IOException {
        D(3);
        return (T) C(w83Var, e63Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void k(List<T> list, w83<T> w83Var, e63 e63Var) throws IOException {
        int iE;
        int i = this.b;
        if ((i & 7) != 3) {
            throw e73.f();
        }
        do {
            list.add(C(w83Var, e63Var));
            if (this.a.t() || this.d != 0) {
                return;
            } else {
                iE = this.a.e();
            }
        } while (iE == i);
        this.d = iE;
    }

    public final long l() throws IOException {
        D(0);
        return this.a.f();
    }

    public final long m() throws IOException {
        D(0);
        return this.a.g();
    }

    public final int n() throws IOException {
        D(0);
        return this.a.h();
    }

    public final long o() throws IOException {
        D(1);
        return this.a.i();
    }

    public final int p() throws IOException {
        D(5);
        return this.a.j();
    }

    public final boolean q() throws IOException {
        D(0);
        return this.a.k();
    }

    public final String r() throws IOException {
        D(2);
        return this.a.l();
    }

    public final k53 s() throws IOException {
        D(2);
        return this.a.m();
    }

    public final int t() throws IOException {
        D(0);
        return this.a.n();
    }

    public final int u() throws IOException {
        D(0);
        return this.a.o();
    }

    public final int v() throws IOException {
        D(5);
        return this.a.p();
    }

    public final long w() throws IOException {
        D(1);
        return this.a.q();
    }

    public final int x() throws IOException {
        D(0);
        return this.a.r();
    }

    public final long y() throws IOException {
        D(0);
        return this.a.s();
    }

    public final int z() throws IOException {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            this.b = this.a.e();
        }
        int i2 = this.b;
        if (i2 == 0 || i2 == this.c) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }
}
