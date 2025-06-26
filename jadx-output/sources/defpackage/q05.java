package defpackage;

/* loaded from: classes.dex */
public final class q05 extends is4 {
    public final /* synthetic */ h15 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q05(h15 h15Var, ny4 ny4Var) {
        super(ny4Var);
        this.e = h15Var;
    }

    @Override // defpackage.is4
    public final void a() {
        h15 h15Var = this.e;
        h15Var.d();
        if (h15Var.w()) {
            h15Var.a.a().n.a("Inactivity, disconnecting from the service");
            h15Var.n();
        }
    }
}
