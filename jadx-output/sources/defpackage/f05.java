package defpackage;

/* loaded from: classes.dex */
public final class f05 implements Runnable {
    public final /* synthetic */ a05 e;
    public final /* synthetic */ long f;
    public final /* synthetic */ h05 g;

    public f05(h05 h05Var, a05 a05Var, long j) {
        this.g = h05Var;
        this.e = a05Var;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        this.g.l(this.e, false, this.f);
        h05 h05Var = this.g;
        h05Var.e = null;
        h15 h15VarZ = h05Var.a.z();
        h15VarZ.d();
        h15VarZ.f();
        h15VarZ.t(new o05(h15VarZ, null));
    }
}
