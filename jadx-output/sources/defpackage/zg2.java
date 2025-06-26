package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zg2 extends ht3 implements zzp, qn3 {
    public final sy0 e;
    public final Context f;
    public final String h;
    public final xg2 i;
    public final mg2 j;
    public g31 l;
    public e41 m;
    public AtomicBoolean g = new AtomicBoolean();
    public long k = -1;

    public zg2(sy0 sy0Var, Context context, String str, xg2 xg2Var, mg2 mg2Var) {
        this.e = sy0Var;
        this.f = context;
        this.h = str;
        this.i = xg2Var;
        this.j = mg2Var;
        mg2Var.j.set(this);
    }

    public final synchronized void W6(int i) {
        if (this.g.compareAndSet(false, true)) {
            this.j.a();
            g31 g31Var = this.l;
            if (g31Var != null) {
                zzr.zzky().e(g31Var);
            }
            if (this.m != null) {
                long jB = -1;
                if (this.k != -1) {
                    jB = zzr.zzlc().b() - this.k;
                }
                this.m.k.a(jB, i);
            }
            destroy();
        }
    }

    @Override // defpackage.qn3
    public final void b2() {
        W6(3);
    }

    @Override // defpackage.it3
    public final synchronized void destroy() {
        bi.f("destroy must be called on the main UI thread.");
        e41 e41Var = this.m;
        if (e41Var != null) {
            e41Var.a();
        }
    }

    @Override // defpackage.it3
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // defpackage.it3
    public final synchronized String getAdUnitId() {
        return this.h;
    }

    @Override // defpackage.it3
    public final synchronized String getMediationAdapterClassName() {
        return null;
    }

    @Override // defpackage.it3
    public final synchronized su3 getVideoController() {
        return null;
    }

    @Override // defpackage.it3
    public final synchronized boolean isLoading() {
        return this.i.isLoading();
    }

    @Override // defpackage.it3
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void onUserLeaveHint() {
        e41 e41Var = this.m;
        if (e41Var != null) {
            e41Var.k.a(zzr.zzlc().b() - this.k, 1);
        }
    }

    @Override // defpackage.it3
    public final synchronized void pause() {
        bi.f("pause must be called on the main UI thread.");
    }

    @Override // defpackage.it3
    public final synchronized void resume() {
        bi.f("resume must be called on the main UI thread.");
    }

    @Override // defpackage.it3
    public final void setImmersiveMode(boolean z) {
    }

    @Override // defpackage.it3
    public final synchronized void setManualImpressionsEnabled(boolean z) {
    }

    @Override // defpackage.it3
    public final void setUserId(String str) {
    }

    @Override // defpackage.it3
    public final synchronized void showInterstitial() {
    }

    @Override // defpackage.it3
    public final void stopLoading() {
    }

    @Override // defpackage.it3
    public final void zza(zzvq zzvqVar, vs3 vs3Var) {
    }

    @Override // defpackage.it3
    public final void zza(zzwc zzwcVar) {
        this.i.g.j = zzwcVar;
    }

    @Override // defpackage.it3
    public final void zza(zzzj zzzjVar) {
    }

    @Override // defpackage.it3
    public final void zza(gl0 gl0Var) {
    }

    @Override // defpackage.it3
    public final void zza(jl0 jl0Var, String str) {
    }

    @Override // defpackage.it3
    public final void zza(lt3 lt3Var) {
    }

    @Override // defpackage.it3
    public final void zza(mu3 mu3Var) {
    }

    @Override // defpackage.it3
    public final void zza(pn0 pn0Var) {
    }

    @Override // defpackage.it3
    public final void zza(ps3 ps3Var) {
    }

    @Override // defpackage.it3
    public final void zza(pt3 pt3Var) {
    }

    @Override // defpackage.it3
    public final void zza(us3 us3Var) {
    }

    @Override // defpackage.it3
    public final void zza(yt3 yt3Var) {
    }

    @Override // defpackage.it3
    public final void zzbl(String str) {
    }

    @Override // defpackage.it3
    public final void zze(x20 x20Var) {
    }

    @Override // defpackage.it3
    public final x20 zzki() {
        return null;
    }

    @Override // defpackage.it3
    public final synchronized void zzkj() {
    }

    @Override // defpackage.it3
    public final synchronized zzvt zzkk() {
        return null;
    }

    @Override // defpackage.it3
    public final synchronized String zzkl() {
        return null;
    }

    @Override // defpackage.it3
    public final synchronized ru3 zzkm() {
        return null;
    }

    @Override // defpackage.it3
    public final pt3 zzkn() {
        return null;
    }

    @Override // defpackage.it3
    public final us3 zzko() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzvz() {
        if (this.m == null) {
            return;
        }
        this.k = zzr.zzlc().b();
        int i = this.m.i;
        if (i <= 0) {
            return;
        }
        g31 g31Var = new g31(this.e.f(), zzr.zzlc());
        this.l = g31Var;
        g31Var.b(i, new Runnable(this) { // from class: bh2
            public final zg2 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zg2 zg2Var = this.e;
                zg2Var.e.e().execute(new Runnable(zg2Var) { // from class: ch2
                    public final zg2 e;

                    {
                        this.e = zg2Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.W6(5);
                    }
                });
            }
        });
    }

    @Override // defpackage.it3
    public final synchronized boolean zza(zzvq zzvqVar) throws RemoteException {
        bi.f("loadAd must be called on the main UI thread.");
        zzr.zzkv();
        boolean z = false;
        if (zzj.zzbc(this.f) && zzvqVar.w == null) {
            is0.zzex("Failed to load the ad because app ID is missing.");
            this.j.Q(c50.x1(dm2.APP_ID_MISSING, null, null));
            return false;
        }
        if (isLoading()) {
            return false;
        }
        this.g = new AtomicBoolean();
        xg2 xg2Var = this.i;
        String str = this.h;
        dh2 dh2Var = new dh2(this);
        synchronized (xg2Var) {
            bi.f("loadAd must be called on the main UI thread.");
            if (str == null) {
                is0.zzex("Ad unit ID should not be null for app open ad.");
                xg2Var.b.execute(new jg2(xg2Var));
            } else if (xg2Var.h == null) {
                c50.Q3(xg2Var.a, zzvqVar.j);
                nl2 nl2Var = xg2Var.g;
                nl2Var.d = str;
                nl2Var.b = zzvt.L0();
                nl2Var.a = zzvqVar;
                ll2 ll2VarA = nl2Var.a();
                ng2 ng2Var = new ng2(null);
                ng2Var.a = ll2VarA;
                aw2<AppOpenAd> aw2VarA = xg2Var.e.a(new pi2(ng2Var), new hg2(xg2Var));
                xg2Var.h = aw2VarA;
                lg2 lg2Var = new lg2(xg2Var, dh2Var, ng2Var);
                aw2VarA.i(new sv2(aw2VarA, lg2Var), xg2Var.b);
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        int i = gh2.a[zzlVar.ordinal()];
        if (i == 1) {
            W6(3);
            return;
        }
        if (i == 2) {
            W6(2);
        } else if (i == 3) {
            W6(4);
        } else {
            if (i != 4) {
                return;
            }
            W6(6);
        }
    }

    @Override // defpackage.it3
    public final void zza(yn3 yn3Var) {
        this.j.f.set(yn3Var);
    }

    @Override // defpackage.it3
    public final synchronized void zza(zzvt zzvtVar) {
        bi.f("setAdSize must be called on the main UI thread.");
    }

    @Override // defpackage.it3
    public final synchronized void zza(wt3 wt3Var) {
    }

    @Override // defpackage.it3
    public final synchronized void zza(zzaaz zzaazVar) {
    }

    @Override // defpackage.it3
    public final synchronized void zza(t50 t50Var) {
    }
}
