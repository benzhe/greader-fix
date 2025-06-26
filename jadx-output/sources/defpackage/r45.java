package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class r45<TResult> implements b55<TResult> {
    public final Executor a;
    public final Object b = new Object();
    public y35 c;

    public r45(Executor executor, y35 y35Var) {
        this.a = executor;
        this.c = y35Var;
    }

    @Override // defpackage.b55
    public final void a(e45<TResult> e45Var) {
        if (e45Var.m()) {
            synchronized (this.b) {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new q45(this));
            }
        }
    }
}
