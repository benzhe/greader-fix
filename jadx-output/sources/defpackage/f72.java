package defpackage;

import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class f72 implements rv2<f61> {
    public final /* synthetic */ c72 a;
    public final /* synthetic */ ji1 b;
    public final /* synthetic */ e72 c;

    public f72(e72 e72Var, c72 c72Var, ji1 ji1Var) {
        this.c = e72Var;
        this.a = c72Var;
        this.b = ji1Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        final zzvh zzvhVarY1 = c50.y1(th, this.b.c().l);
        this.b.d().D0(new fa1(zzvhVarY1));
        this.c.b.e().execute(new Runnable(this, zzvhVarY1) { // from class: i72
            public final f72 e;
            public final zzvh f;

            {
                this.e = this;
                this.f = zzvhVarY1;
            }

            @Override // java.lang.Runnable
            public final void run() {
                f72 f72Var = this.e;
                f72Var.c.d.c.Q(this.f);
            }
        });
        c50.X1(zzvhVarY1.e, th, "NativeAdLoader.onFailure");
        this.a.a();
    }

    @Override // defpackage.rv2
    public final void onSuccess(f61 f61Var) {
        f61 f61Var2 = f61Var;
        synchronized (this.c) {
            f61Var2.g.e.a.f = this.c.d.b;
            this.a.onSuccess(f61Var2);
            this.c.b.e().execute(new Runnable(this) { // from class: j72
                public final f72 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.c.d.b.onAdLoaded();
                }
            });
        }
    }
}
