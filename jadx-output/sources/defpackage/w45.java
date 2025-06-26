package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class w45<TResult> implements b55<TResult> {
    public final Executor a;
    public final Object b = new Object();
    public b45<? super TResult> c;

    public w45(Executor executor, b45<? super TResult> b45Var) {
        this.a = executor;
        this.c = b45Var;
    }

    @Override // defpackage.b55
    public final void a(e45<TResult> e45Var) {
        if (e45Var.o()) {
            synchronized (this.b) {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new x45(this, e45Var));
            }
        }
    }
}
