package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class hb7 implements lb7 {
    public static hb7 c() {
        return xd7.a;
    }

    @Override // defpackage.lb7
    public final void a(jb7 jb7Var) {
        try {
            i(jb7Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            n56.r2(th);
            n56.z1(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final hb7 b(lb7 lb7Var) {
        Objects.requireNonNull(lb7Var, "next is null");
        return new vd7(this, lb7Var);
    }

    public final hb7 d(qc7 qc7Var) {
        tc7<? super ic7> tc7Var = dd7.d;
        qc7 qc7Var2 = dd7.c;
        return f(tc7Var, tc7Var, qc7Var, qc7Var2, qc7Var2, qc7Var2);
    }

    public final hb7 e(tc7<? super Throwable> tc7Var) {
        tc7<? super ic7> tc7Var2 = dd7.d;
        qc7 qc7Var = dd7.c;
        return f(tc7Var2, tc7Var, qc7Var, qc7Var, qc7Var, qc7Var);
    }

    public final hb7 f(tc7<? super ic7> tc7Var, tc7<? super Throwable> tc7Var2, qc7 qc7Var, qc7 qc7Var2, qc7 qc7Var3, qc7 qc7Var4) {
        Objects.requireNonNull(tc7Var2, "onError is null");
        Objects.requireNonNull(qc7Var, "onComplete is null");
        return new ee7(this, tc7Var, tc7Var2, qc7Var, qc7Var2, qc7Var3, qc7Var4);
    }

    public final hb7 g(zb7 zb7Var) {
        return new ce7(this, zb7Var);
    }

    public final ic7 h() {
        td7 td7Var = new td7();
        a(td7Var);
        return td7Var;
    }

    public abstract void i(jb7 jb7Var);

    public final hb7 j(zb7 zb7Var) {
        Objects.requireNonNull(zb7Var, "scheduler is null");
        return new ge7(this, zb7Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> rb7<T> k() {
        return this instanceof hd7 ? ((hd7) this).b() : new hg7(this);
    }
}
