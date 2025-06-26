package defpackage;

/* loaded from: classes.dex */
public final class pk2 implements c72<dp1> {
    public final /* synthetic */ nk2 a;

    public pk2(nk2 nk2Var) {
        this.a = nk2Var;
    }

    @Override // defpackage.c72
    public final void a() {
        synchronized (this.a) {
            this.a.i = null;
        }
    }

    @Override // defpackage.c72
    public final /* synthetic */ void onSuccess(dp1 dp1Var) {
        dp1 dp1Var2 = dp1Var;
        synchronized (this.a) {
            this.a.i = dp1Var2;
            dp1Var2.b();
        }
    }
}
