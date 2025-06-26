package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class y45 implements Runnable {
    public final /* synthetic */ e45 e;
    public final /* synthetic */ z45 f;

    public y45(z45 z45Var, e45 e45Var) {
        this.f = z45Var;
        this.e = e45Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            e45 e45VarA = this.f.b.a(this.e.l());
            if (e45VarA == null) {
                z45 z45Var = this.f;
                z45Var.c.r(new NullPointerException("Continuation returned null"));
            } else {
                Executor executor = g45.b;
                e45VarA.g(executor, this.f);
                e45VarA.e(executor, this.f);
                e45VarA.a(executor, this.f);
            }
        } catch (c45 e) {
            if (!(e.getCause() instanceof Exception)) {
                this.f.c.r(e);
                return;
            }
            z45 z45Var2 = this.f;
            z45Var2.c.r((Exception) e.getCause());
        } catch (CancellationException unused) {
            this.f.c.t();
        } catch (Exception e2) {
            this.f.c.r(e2);
        }
    }
}
