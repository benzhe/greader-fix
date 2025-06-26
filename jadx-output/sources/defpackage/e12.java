package defpackage;

import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class e12 implements rv2<j41> {
    public final /* synthetic */ z02 a;

    public e12(z02 z02Var) {
        this.a = z02Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        zzvh zzvhVarY1 = c50.y1(th, this.a.a.c().l);
        this.a.d.D0(new fa1(zzvhVarY1));
        c50.X1(zzvhVarY1.e, th, "DelayedBannerAd.onFailure");
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(j41 j41Var) {
        j41Var.b();
    }
}
