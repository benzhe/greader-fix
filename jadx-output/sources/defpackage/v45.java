package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class v45<TResult> implements b55<TResult> {
    public final Executor a;
    public final Object b = new Object();
    public a45 c;

    public v45(Executor executor, a45 a45Var) {
        this.a = executor;
        this.c = a45Var;
    }

    @Override // defpackage.b55
    public final void a(e45<TResult> e45Var) {
        if (e45Var.o() || e45Var.m()) {
            return;
        }
        synchronized (this.b) {
            if (this.c == null) {
                return;
            }
            this.a.execute(new u45(this, e45Var));
        }
    }
}
