package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class yk6<T, B> {
    public abstract void a(B b, int i, int i2);

    public abstract void b(B b, int i, long j);

    public abstract void c(B b, int i, T t);

    public abstract void d(B b, int i, qi6 qi6Var);

    public abstract void e(B b, int i, long j);

    public abstract B f(Object obj);

    public abstract T g(Object obj);

    public abstract int h(T t);

    public abstract int i(T t);

    public abstract void j(Object obj);

    public abstract T k(T t, T t2);

    public final boolean l(B b, ok6 ok6Var) throws IOException {
        int tag = ok6Var.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            e(b, i, ok6Var.K());
            return true;
        }
        if (i2 == 1) {
            b(b, i, ok6Var.c());
            return true;
        }
        if (i2 == 2) {
            d(b, i, ok6Var.D());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw kj6.d();
            }
            a(b, i, ok6Var.h());
            return true;
        }
        B bM = m();
        int i3 = 4 | (i << 3);
        while (ok6Var.y() != Integer.MAX_VALUE && l(bM, ok6Var)) {
        }
        if (i3 != ok6Var.getTag()) {
            throw kj6.a();
        }
        c(b, i, q(bM));
        return true;
    }

    public abstract B m();

    public abstract void n(Object obj, B b);

    public abstract void o(Object obj, T t);

    public abstract boolean p(ok6 ok6Var);

    public abstract T q(B b);

    public abstract void r(T t, hl6 hl6Var) throws IOException;

    public abstract void s(T t, hl6 hl6Var) throws IOException;
}
