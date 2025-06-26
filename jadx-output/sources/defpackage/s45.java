package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class s45<TResult> implements b55<TResult> {
    public final Executor a;
    public final Object b = new Object();
    public z35<TResult> c;

    public s45(Executor executor, z35<TResult> z35Var) {
        this.a = executor;
        this.c = z35Var;
    }

    @Override // defpackage.b55
    public final void a(e45<TResult> e45Var) {
        synchronized (this.b) {
            if (this.c == null) {
                return;
            }
            this.a.execute(new t45(this, e45Var));
        }
    }
}
