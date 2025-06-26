package defpackage;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzavy;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class dp1 extends f61 {
    public final Context h;
    public final WeakReference<xw0> i;
    public final wh1 j;
    public final gf1 k;
    public final ga1 l;
    public final rb1 m;
    public final c71 n;
    public final bo0 o;
    public final ar2 p;
    public boolean q;

    public dp1(i61 i61Var, Context context, xw0 xw0Var, wh1 wh1Var, gf1 gf1Var, ga1 ga1Var, rb1 rb1Var, c71 c71Var, sk2 sk2Var, ar2 ar2Var) {
        super(i61Var);
        this.q = false;
        this.h = context;
        this.j = wh1Var;
        this.i = new WeakReference<>(xw0Var);
        this.k = gf1Var;
        this.l = ga1Var;
        this.m = rb1Var;
        this.n = c71Var;
        this.p = ar2Var;
        zzavy zzavyVar = sk2Var.l;
        this.o = new bp0(zzavyVar != null ? zzavyVar.e : "", zzavyVar != null ? zzavyVar.f : 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.content.Context] */
    public final boolean c(boolean z, Activity activity) {
        if (((Boolean) os3.j.f.a(y40.o0)).booleanValue()) {
            zzr.zzkv();
            if (zzj.zzat(this.h)) {
                is0.zzez("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.l.D0(la1.a);
                if (((Boolean) os3.j.f.a(y40.p0)).booleanValue()) {
                    this.p.a(this.a.b.b.b);
                }
                return false;
            }
        }
        if (this.q) {
            is0.zzez("The rewarded ad have been showed.");
            this.l.D0(new ja1(c50.x1(dm2.AD_REUSED, null, null)));
            return false;
        }
        this.q = true;
        this.k.D0(ff1.a);
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.h;
        }
        try {
            this.j.a(z, activity2);
            this.k.D0(if1.a);
            return true;
        } catch (vh1 e) {
            this.l.D0(new ia1(e));
            return false;
        }
    }

    public final void finalize() throws Throwable {
        try {
            final xw0 xw0Var = this.i.get();
            if (((Boolean) os3.j.f.a(y40.k4)).booleanValue()) {
                if (!this.q && xw0Var != null) {
                    ms0.e.execute(new Runnable(xw0Var) { // from class: cp1
                        public final xw0 e;

                        {
                            this.e = xw0Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.destroy();
                        }
                    });
                }
            } else if (xw0Var != null) {
                xw0Var.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
