package defpackage;

/* loaded from: classes2.dex */
public abstract class r67 extends f47 {
    public final f47 a;

    public r67(f47 f47Var) {
        this.a = f47Var;
    }

    @Override // defpackage.y27
    public String a() {
        return this.a.a();
    }

    @Override // defpackage.y27
    public <RequestT, ResponseT> a37<RequestT, ResponseT> h(j47<RequestT, ResponseT> j47Var, x27 x27Var) {
        return this.a.h(j47Var, x27Var);
    }

    @Override // defpackage.f47
    public void i() {
        this.a.i();
    }

    @Override // defpackage.f47
    public i37 j(boolean z) {
        return this.a.j(z);
    }

    @Override // defpackage.f47
    public void k(i37 i37Var, Runnable runnable) {
        this.a.k(i37Var, runnable);
    }

    @Override // defpackage.f47
    public void l() {
        this.a.l();
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("delegate", this.a);
        return nd5VarK0.toString();
    }
}
