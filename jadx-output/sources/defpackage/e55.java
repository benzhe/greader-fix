package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e55<TResult> extends e45<TResult> {
    public final Object a = new Object();
    public final a55<TResult> b = new a55<>();
    public boolean c;
    public volatile boolean d;
    public TResult e;
    public Exception f;

    @Override // defpackage.e45
    public final e45<TResult> a(Executor executor, y35 y35Var) {
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new r45(executor, y35Var));
        w();
        return this;
    }

    @Override // defpackage.e45
    public final e45<TResult> b(z35<TResult> z35Var) {
        Executor executor = g45.a;
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new s45(executor, z35Var));
        w();
        return this;
    }

    @Override // defpackage.e45
    public final e45<TResult> c(Executor executor, z35<TResult> z35Var) {
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new s45(executor, z35Var));
        w();
        return this;
    }

    @Override // defpackage.e45
    public final e45<TResult> d(a45 a45Var) {
        e(g45.a, a45Var);
        return this;
    }

    @Override // defpackage.e45
    public final e45<TResult> e(Executor executor, a45 a45Var) {
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new v45(executor, a45Var));
        w();
        return this;
    }

    @Override // defpackage.e45
    public final e45<TResult> f(b45<? super TResult> b45Var) {
        g(g45.a, b45Var);
        return this;
    }

    @Override // defpackage.e45
    public final e45<TResult> g(Executor executor, b45<? super TResult> b45Var) {
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new w45(executor, b45Var));
        w();
        return this;
    }

    @Override // defpackage.e45
    public final <TContinuationResult> e45<TContinuationResult> h(w35<TResult, TContinuationResult> w35Var) {
        return i(g45.a, w35Var);
    }

    @Override // defpackage.e45
    public final <TContinuationResult> e45<TContinuationResult> i(Executor executor, w35<TResult, TContinuationResult> w35Var) {
        e55 e55Var = new e55();
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new m45(executor, w35Var, e55Var));
        w();
        return e55Var;
    }

    @Override // defpackage.e45
    public final <TContinuationResult> e45<TContinuationResult> j(Executor executor, w35<TResult, e45<TContinuationResult>> w35Var) {
        e55 e55Var = new e55();
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new n45(executor, w35Var, e55Var));
        w();
        return e55Var;
    }

    @Override // defpackage.e45
    public final Exception k() {
        Exception exc;
        synchronized (this.a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // defpackage.e45
    public final TResult l() {
        TResult tresult;
        synchronized (this.a) {
            bi.m(this.c, "Task is not yet complete");
            if (this.d) {
                throw new CancellationException("Task is already canceled.");
            }
            if (this.f != null) {
                throw new c45(this.f);
            }
            tresult = this.e;
        }
        return tresult;
    }

    @Override // defpackage.e45
    public final boolean m() {
        return this.d;
    }

    @Override // defpackage.e45
    public final boolean n() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }

    @Override // defpackage.e45
    public final boolean o() {
        boolean z;
        synchronized (this.a) {
            z = this.c && !this.d && this.f == null;
        }
        return z;
    }

    @Override // defpackage.e45
    public final <TContinuationResult> e45<TContinuationResult> p(d45<TResult, TContinuationResult> d45Var) {
        return q(g45.a, d45Var);
    }

    @Override // defpackage.e45
    public final <TContinuationResult> e45<TContinuationResult> q(Executor executor, d45<TResult, TContinuationResult> d45Var) {
        e55 e55Var = new e55();
        a55<TResult> a55Var = this.b;
        int i = f55.a;
        a55Var.b(new z45(executor, d45Var, e55Var));
        w();
        return e55Var;
    }

    public final void r(Exception exc) {
        bi.j(exc, "Exception must not be null");
        synchronized (this.a) {
            v();
            this.c = true;
            this.f = exc;
        }
        this.b.a(this);
    }

    public final void s(TResult tresult) {
        synchronized (this.a) {
            v();
            this.c = true;
            this.e = tresult;
        }
        this.b.a(this);
    }

    public final boolean t() {
        synchronized (this.a) {
            if (this.c) {
                return false;
            }
            this.c = true;
            this.d = true;
            this.b.a(this);
            return true;
        }
    }

    public final boolean u(TResult tresult) {
        synchronized (this.a) {
            if (this.c) {
                return false;
            }
            this.c = true;
            this.e = tresult;
            this.b.a(this);
            return true;
        }
    }

    public final void v() {
        String strO;
        if (this.c) {
            int i = x35.e;
            if (!n()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception excK = k();
            if (excK != null) {
                strO = "failure";
            } else if (o()) {
                String strValueOf = String.valueOf(l());
                strO = jo.O(strValueOf.length() + 7, "result ", strValueOf);
            } else {
                strO = m() ? "cancellation" : "unknown issue";
            }
            String strValueOf2 = String.valueOf(strO);
        }
    }

    public final void w() {
        synchronized (this.a) {
            if (this.c) {
                this.b.a(this);
            }
        }
    }
}
