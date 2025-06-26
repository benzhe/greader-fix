package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class e45<TResult> {
    public e45<TResult> a(Executor executor, y35 y35Var) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public e45<TResult> b(z35<TResult> z35Var) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public e45<TResult> c(Executor executor, z35<TResult> z35Var) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract e45<TResult> d(a45 a45Var);

    public abstract e45<TResult> e(Executor executor, a45 a45Var);

    public abstract e45<TResult> f(b45<? super TResult> b45Var);

    public abstract e45<TResult> g(Executor executor, b45<? super TResult> b45Var);

    public <TContinuationResult> e45<TContinuationResult> h(w35<TResult, TContinuationResult> w35Var) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> e45<TContinuationResult> i(Executor executor, w35<TResult, TContinuationResult> w35Var) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> e45<TContinuationResult> j(Executor executor, w35<TResult, e45<TContinuationResult>> w35Var) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract Exception k();

    public abstract TResult l();

    public abstract boolean m();

    public abstract boolean n();

    public abstract boolean o();

    public <TContinuationResult> e45<TContinuationResult> p(d45<TResult, TContinuationResult> d45Var) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    public <TContinuationResult> e45<TContinuationResult> q(Executor executor, d45<TResult, TContinuationResult> d45Var) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
