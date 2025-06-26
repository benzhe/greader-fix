package defpackage;

import defpackage.w27;

/* loaded from: classes2.dex */
public final class f87 extends w27.a {
    public final a67 a;
    public final j47<?, ?> b;
    public final i47 c;
    public final x27 d;
    public y57 g;
    public boolean h;
    public i67 i;
    public final Object f = new Object();
    public final l37 e = l37.g();

    public f87(a67 a67Var, j47<?, ?> j47Var, i47 i47Var, x27 x27Var) {
        this.a = a67Var;
        this.b = j47Var;
        this.c = i47Var;
        this.d = x27Var;
    }

    @Override // w27.a
    public void a(i47 i47Var) {
        c50.G(!this.h, "apply() or fail() already called");
        c50.A(i47Var, "headers");
        this.c.f(i47Var);
        l37 l37VarB = this.e.b();
        try {
            y57 y57VarG = this.a.g(this.b, this.c, this.d);
            this.e.i(l37VarB);
            c(y57VarG);
        } catch (Throwable th) {
            this.e.i(l37VarB);
            throw th;
        }
    }

    @Override // w27.a
    public void b(x47 x47Var) {
        c50.t(!x47Var.f(), "Cannot fail with OK status");
        c50.G(!this.h, "apply() or fail() already called");
        c(new m67(x47Var));
    }

    public final void c(y57 y57Var) {
        c50.G(!this.h, "already finalized");
        this.h = true;
        synchronized (this.f) {
            if (this.g == null) {
                this.g = y57Var;
            } else {
                c50.G(this.i != null, "delayedStream is null");
                this.i.q(y57Var);
            }
        }
    }
}
