package defpackage;

/* loaded from: classes2.dex */
public abstract class wb7<T> implements xb7<T> {
    @Override // defpackage.xb7
    public final void e(yb7<? super T> yb7Var) {
        try {
            f(yb7Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            n56.r2(th);
            n56.z1(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void f(yb7<? super T> yb7Var);

    public final mb7<T> g(gb7 gb7Var) {
        we7 we7Var = new we7(this);
        int iOrdinal = gb7Var.ordinal();
        if (iOrdinal == 0) {
            return we7Var;
        }
        if (iOrdinal == 1) {
            return new ef7(we7Var);
        }
        if (iOrdinal == 3) {
            return new df7(we7Var);
        }
        if (iOrdinal == 4) {
            return new ff7(we7Var);
        }
        int i = mb7.e;
        ed7.a(i, "capacity");
        return new cf7(we7Var, i, true, false, dd7.c);
    }
}
