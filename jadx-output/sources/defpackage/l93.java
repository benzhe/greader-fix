package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class l93<T, B> {
    public abstract void a(B b, int i, long j);

    public abstract void b(B b, int i, k53 k53Var);

    public abstract void c(B b, int i, T t);

    public abstract void d(T t, ga3 ga3Var) throws IOException;

    public abstract boolean e(z53 z53Var);

    public final boolean f(B b, z53 z53Var) throws IOException {
        int i = z53Var.b;
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            a(b, i2, z53Var.m());
            return true;
        }
        if (i3 == 1) {
            l(b, i2, z53Var.o());
            return true;
        }
        if (i3 == 2) {
            b(b, i2, z53Var.s());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw e73.f();
            }
            o(b, i2, z53Var.p());
            return true;
        }
        B bN = n();
        int i4 = 4 | (i2 << 3);
        while (z53Var.z() != Integer.MAX_VALUE && f(bN, z53Var)) {
        }
        if (i4 != z53Var.b) {
            throw e73.e();
        }
        c(b, i2, h(bN));
        return true;
    }

    public abstract void g(Object obj);

    public abstract T h(B b);

    public abstract int i(T t);

    public abstract T j(Object obj);

    public abstract B k(Object obj);

    public abstract void l(B b, int i, long j);

    public abstract int m(T t);

    public abstract B n();

    public abstract void o(B b, int i, int i2);

    public abstract void p(T t, ga3 ga3Var) throws IOException;

    public abstract void q(Object obj, T t);

    public abstract void r(Object obj, B b);

    public abstract T s(T t, T t2);
}
