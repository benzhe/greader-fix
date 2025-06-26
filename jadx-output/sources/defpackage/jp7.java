package defpackage;

/* loaded from: classes2.dex */
public abstract class jp7<T> extends kr7 {
    public int g;

    public jp7(int i) {
        this.g = i;
    }

    public void b(Object obj, Throwable th) {
    }

    public abstract pk7<T> c();

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T d(Object obj) {
        return obj;
    }

    public final void e(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            n56.i(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        im7.c(th);
        n56.c1(c().getContext(), new ep7("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object f();

    @Override // java.lang.Runnable
    public final void run() {
        Object objK;
        lr7 lr7Var = this.f;
        try {
            pk7<T> pk7VarC = c();
            if (pk7VarC == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>");
            }
            hp7 hp7Var = (hp7) pk7VarC;
            pk7<T> pk7Var = hp7Var.l;
            rk7 context = pk7Var.getContext();
            Object objF = f();
            Object objB = k.b(context, hp7Var.j);
            try {
                uo7 uo7Var = (uo7) (!(objF instanceof uo7) ? null : objF);
                Throwable th = uo7Var != null ? uo7Var.a : null;
                yp7 yp7Var = n56.j1(this.g) ? (yp7) context.c(yp7.d) : null;
                if (th == null && yp7Var != null && !yp7Var.isActive()) {
                    Throwable thG = yp7Var.g();
                    b(objF, thG);
                    if (fp7.b && (pk7Var instanceof wk7)) {
                        thG = xq7.a(thG, (wk7) pk7Var);
                    }
                    pk7Var.resumeWith(n56.K(thG));
                } else if (th != null) {
                    pk7Var.resumeWith(n56.K(th));
                } else {
                    pk7Var.resumeWith(d(objF));
                }
                Object objK2 = yj7.a;
                try {
                    lr7Var.e();
                } catch (Throwable th2) {
                    objK2 = n56.K(th2);
                }
                e(null, sj7.a(objK2));
            } finally {
                k.a(context, objB);
            }
        } catch (Throwable th3) {
            try {
                lr7Var.e();
                objK = yj7.a;
            } catch (Throwable th4) {
                objK = n56.K(th4);
            }
            e(th3, sj7.a(objK));
        }
    }
}
