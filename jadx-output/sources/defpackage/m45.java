package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class m45<TResult, TContinuationResult> implements b55<TResult> {
    public final Executor a;
    public final w35<TResult, TContinuationResult> b;
    public final e55<TContinuationResult> c;

    public m45(Executor executor, w35<TResult, TContinuationResult> w35Var, e55<TContinuationResult> e55Var) {
        this.a = executor;
        this.b = w35Var;
        this.c = e55Var;
    }

    @Override // defpackage.b55
    public final void a(e45<TResult> e45Var) {
        this.a.execute(new o45(this, e45Var));
    }
}
