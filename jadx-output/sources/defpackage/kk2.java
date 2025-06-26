package defpackage;

/* loaded from: classes.dex */
public final class kk2 implements c72<dp1> {
    public final /* synthetic */ ik2 a;

    public kk2(ik2 ik2Var) {
        this.a = ik2Var;
    }

    @Override // defpackage.c72
    public final void a() {
        synchronized (this.a) {
            this.a.k = null;
        }
    }

    @Override // defpackage.c72
    public final /* synthetic */ void onSuccess(dp1 dp1Var) {
        dp1 dp1Var2 = dp1Var;
        synchronized (this.a) {
            this.a.k = dp1Var2;
            dp1Var2.b();
        }
    }
}
