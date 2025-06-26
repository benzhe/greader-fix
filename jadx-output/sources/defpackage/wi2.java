package defpackage;

import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class wi2 implements rv2<qg1> {
    public final /* synthetic */ c72 a;
    public final /* synthetic */ oh1 b;
    public final /* synthetic */ ui2 c;

    public wi2(ui2 ui2Var, c72 c72Var, oh1 oh1Var) {
        this.c = ui2Var;
        this.a = c72Var;
        this.b = oh1Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        final zzvh zzvhVarY1 = c50.y1(th, this.b.b().l);
        synchronized (this.c) {
            this.c.h = null;
            this.b.c().D0(new fa1(zzvhVarY1));
            if (((Boolean) os3.j.f.a(y40.N4)).booleanValue()) {
                this.c.b.execute(new Runnable(this, zzvhVarY1) { // from class: bj2
                    public final wi2 e;
                    public final zzvh f;

                    {
                        this.e = this;
                        this.f = zzvhVarY1;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        wi2 wi2Var = this.e;
                        wi2Var.c.d.Q(this.f);
                    }
                });
                this.c.b.execute(new Runnable(this, zzvhVarY1) { // from class: aj2
                    public final wi2 e;
                    public final zzvh f;

                    {
                        this.e = this;
                        this.f = zzvhVarY1;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        wi2 wi2Var = this.e;
                        wi2Var.c.e.Q(this.f);
                    }
                });
            }
            c50.X1(zzvhVarY1.e, th, "InterstitialAdLoader.onFailure");
            this.a.a();
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(qg1 qg1Var) {
        qg1 qg1Var2 = qg1Var;
        synchronized (this.c) {
            this.c.h = null;
            o40<Boolean> o40Var = y40.N4;
            if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
                vc1 vc1Var = qg1Var2.g.e;
                ui2 ui2Var = this.c;
                w52 w52Var = ui2Var.d;
                rc1 rc1Var = vc1Var.a;
                rc1Var.f = w52Var;
                rc1Var.i = ui2Var.e;
            }
            this.a.onSuccess(qg1Var2);
            if (((Boolean) os3.j.f.a(o40Var)).booleanValue()) {
                this.c.b.execute(new Runnable(this) { // from class: zi2
                    public final wi2 e;

                    {
                        this.e = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.c.d.onAdLoaded();
                    }
                });
                this.c.b.execute(new Runnable(this) { // from class: yi2
                    public final wi2 e;

                    {
                        this.e = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.c.e.onAdLoaded();
                    }
                });
            }
        }
    }
}
