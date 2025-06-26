package defpackage;

import com.google.android.gms.internal.ads.zzvh;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class fk2 implements rv2<dp1> {
    public final /* synthetic */ c72 a;
    public final /* synthetic */ gk2 b;
    public final /* synthetic */ zj2 c;

    public fk2(zj2 zj2Var, c72 c72Var, gk2 gk2Var) {
        this.c = zj2Var;
        this.a = c72Var;
        this.b = gk2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        gp1 gp1VarB = this.c.e.b();
        final zzvh zzvhVarY1 = gp1VarB == null ? c50.y1(th, null) : c50.y1(th, gp1VarB.d().l);
        synchronized (this.c) {
            if (gp1VarB != null) {
                gp1VarB.a().D0(new fa1(zzvhVarY1));
                this.c.b.execute(new Runnable(this, zzvhVarY1) { // from class: hk2
                    public final fk2 e;
                    public final zzvh f;

                    {
                        this.e = this;
                        this.f = zzvhVarY1;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        fk2 fk2Var = this.e;
                        fk2Var.c.d.Q(this.f);
                    }
                });
            } else {
                this.c.d.Q(zzvhVarY1);
                this.c.b(this.b).a().d().f.D0(sd1.a);
            }
            c50.X1(zzvhVarY1.e, th, "RewardedAdLoader.onFailure");
            this.a.a();
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(dp1 dp1Var) {
        dp1 dp1Var2 = dp1Var;
        synchronized (this.c) {
            dp1Var2.g.e.a.i = this.c.d;
            this.a.onSuccess(dp1Var2);
            zj2 zj2Var = this.c;
            Executor executor = zj2Var.b;
            final ej2 ej2Var = zj2Var.d;
            ej2Var.getClass();
            executor.execute(new Runnable(ej2Var) { // from class: ek2
                public final ej2 e;

                {
                    this.e = ej2Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.onAdLoaded();
                }
            });
            this.c.d.onAdMetadataChanged();
        }
    }
}
