package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class n45<TResult, TContinuationResult> implements y35, a45, b45<TContinuationResult>, b55<TResult> {
    public final Executor a;
    public final w35<TResult, e45<TContinuationResult>> b;
    public final e55<TContinuationResult> c;

    public n45(Executor executor, w35<TResult, e45<TContinuationResult>> w35Var, e55<TContinuationResult> e55Var) {
        this.a = executor;
        this.b = w35Var;
        this.c = e55Var;
    }

    @Override // defpackage.b55
    public final void a(e45<TResult> e45Var) {
        this.a.execute(new p45(this, e45Var));
    }

    @Override // defpackage.y35
    public final void b() {
        this.c.t();
    }

    @Override // defpackage.a45
    public final void c(Exception exc) {
        this.c.r(exc);
    }

    @Override // defpackage.b45
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.c.s(tcontinuationresult);
    }
}
