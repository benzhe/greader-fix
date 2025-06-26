package defpackage;

/* loaded from: classes.dex */
public final class ro1 implements rv2<xw0> {
    public final /* synthetic */ sk2 a;
    public final /* synthetic */ wk2 b;

    public ro1(sk2 sk2Var, wk2 wk2Var) {
        this.a = sk2Var;
        this.b = wk2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(xw0 xw0Var) {
        xw0Var.E(this.a, this.b);
    }
}
