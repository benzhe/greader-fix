package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class p45 implements Runnable {
    public final /* synthetic */ e45 e;
    public final /* synthetic */ n45 f;

    public p45(n45 n45Var, e45 e45Var) {
        this.f = n45Var;
        this.e = e45Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            e45 e45Var = (e45) this.f.b.a(this.e);
            if (e45Var == null) {
                n45 n45Var = this.f;
                n45Var.c.r(new NullPointerException("Continuation returned null"));
            } else {
                Executor executor = g45.b;
                e45Var.g(executor, this.f);
                e45Var.e(executor, this.f);
                e45Var.a(executor, this.f);
            }
        } catch (c45 e) {
            if (e.getCause() instanceof Exception) {
                this.f.c.r((Exception) e.getCause());
            } else {
                this.f.c.r(e);
            }
        } catch (Exception e2) {
            this.f.c.r(e2);
        }
    }
}
