package defpackage;

import com.google.android.gms.internal.ads.zzvh;

/* JADX INFO: Add missing generic type declarations: [AppOpenAd] */
/* loaded from: classes.dex */
public final class lg2<AppOpenAd> implements rv2<AppOpenAd> {
    public final /* synthetic */ c72 a;
    public final /* synthetic */ ng2 b;
    public final /* synthetic */ gg2 c;

    public lg2(gg2 gg2Var, c72 c72Var, ng2 ng2Var) {
        this.c = gg2Var;
        this.a = c72Var;
        this.b = ng2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        t31 t31Var = (t31) this.c.e.b();
        final zzvh zzvhVarY1 = t31Var == null ? c50.y1(th, null) : c50.y1(th, t31Var.d().l);
        synchronized (this.c) {
            gg2 gg2Var = this.c;
            gg2Var.h = null;
            if (t31Var != null) {
                t31Var.a().D0(new fa1(zzvhVarY1));
                if (((Boolean) os3.j.f.a(y40.M4)).booleanValue()) {
                    this.c.b.execute(new Runnable(this, zzvhVarY1) { // from class: kg2
                        public final lg2 e;
                        public final zzvh f;

                        {
                            this.e = this;
                            this.f = zzvhVarY1;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            lg2 lg2Var = this.e;
                            lg2Var.c.d.Q(this.f);
                        }
                    });
                }
            } else {
                gg2Var.d.Q(zzvhVarY1);
                ((t31) this.c.c(this.b).a()).d().f.D0(sd1.a);
            }
            c50.X1(zzvhVarY1.e, th, "AppOpenAdLoader.onFailure");
            this.a.a();
        }
    }

    @Override // defpackage.rv2
    public final void onSuccess(Object obj) {
        f61 f61Var = (f61) obj;
        synchronized (this.c) {
            this.c.h = null;
            if (((Boolean) os3.j.f.a(y40.M4)).booleanValue()) {
                f61Var.g.e.a.h = this.c.d;
            }
            this.a.onSuccess(f61Var);
        }
    }
}
