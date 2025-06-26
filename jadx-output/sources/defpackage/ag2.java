package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class ag2 extends ht3 implements zzab, xb1, qn3 {
    public final sy0 e;
    public final Context f;
    public final ViewGroup g;
    public final String i;
    public final yf2 j;
    public final mg2 k;
    public final zzbar l;
    public g31 n;
    public v31 o;
    public AtomicBoolean h = new AtomicBoolean();
    public long m = -1;

    public ag2(sy0 sy0Var, Context context, String str, yf2 yf2Var, mg2 mg2Var, zzbar zzbarVar) {
        this.g = new FrameLayout(context);
        this.e = sy0Var;
        this.f = context;
        this.i = str;
        this.j = yf2Var;
        this.k = mg2Var;
        mg2Var.i.set(this);
        this.l = zzbarVar;
    }

    public static zzvt W6(ag2 ag2Var) {
        return c50.V2(ag2Var.f, Collections.singletonList(ag2Var.o.b.q.get(0)));
    }

    public final synchronized void X6(int i) {
        co3 co3Var;
        if (this.h.compareAndSet(false, true)) {
            v31 v31Var = this.o;
            if (v31Var != null && (co3Var = v31Var.n) != null) {
                this.k.g.set(co3Var);
            }
            this.k.a();
            this.g.removeAllViews();
            g31 g31Var = this.n;
            if (g31Var != null) {
                zzr.zzky().e(g31Var);
            }
            if (this.o != null) {
                long jB = -1;
                if (this.m != -1) {
                    jB = zzr.zzlc().b() - this.m;
                }
                this.o.o.a(jB, i);
            }
            destroy();
        }
    }

    @Override // defpackage.qn3
    public final void b2() {
        X6(3);
    }

    @Override // defpackage.it3
    public final synchronized void destroy() {
        bi.f("destroy must be called on the main UI thread.");
        v31 v31Var = this.o;
        if (v31Var != null) {
            v31Var.a();
        }
    }

    @Override // defpackage.xb1
    public final void g6() {
        if (this.o == null) {
            return;
        }
        this.m = zzr.zzlc().b();
        int i = this.o.k;
        if (i <= 0) {
            return;
        }
        g31 g31Var = new g31(this.e.f(), zzr.zzlc());
        this.n = g31Var;
        g31Var.b(i, new Runnable(this) { // from class: cg2
            public final ag2 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final ag2 ag2Var = this.e;
                Objects.requireNonNull(ag2Var);
                zr0 zr0Var = os3.j.a;
                if (zr0.f()) {
                    ag2Var.X6(5);
                } else {
                    ag2Var.e.e().execute(new Runnable(ag2Var) { // from class: dg2
                        public final ag2 e;

                        {
                            this.e = ag2Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.X6(5);
                        }
                    });
                }
            }
        });
    }

    @Override // defpackage.it3
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // defpackage.it3
    public final synchronized String getAdUnitId() {
        return this.i;
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
        return this.j.isLoading();
    }

    @Override // defpackage.it3
    public final boolean isReady() {
        return false;
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
    public final void showInterstitial() {
    }

    @Override // defpackage.it3
    public final void stopLoading() {
    }

    @Override // defpackage.it3
    public final void zza(zzvq zzvqVar, vs3 vs3Var) {
    }

    @Override // defpackage.it3
    public final void zza(zzwc zzwcVar) {
        this.j.g.j = zzwcVar;
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
        bi.f("getAdFrame must be called on the main UI thread.");
        return new y20(this.g);
    }

    @Override // defpackage.it3
    public final synchronized void zzkj() {
    }

    @Override // defpackage.it3
    public final synchronized zzvt zzkk() {
        bi.f("getAdSize must be called on the main UI thread.");
        v31 v31Var = this.o;
        if (v31Var == null) {
            return null;
        }
        return c50.V2(this.f, Collections.singletonList(v31Var.b.q.get(0)));
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

    @Override // com.google.android.gms.ads.internal.overlay.zzab
    public final void zzwg() {
        X6(4);
    }

    @Override // defpackage.it3
    public final synchronized boolean zza(zzvq zzvqVar) throws RemoteException {
        bi.f("loadAd must be called on the main UI thread.");
        zzr.zzkv();
        boolean z = false;
        if (zzj.zzbc(this.f) && zzvqVar.w == null) {
            is0.zzex("Failed to load the ad because app ID is missing.");
            this.k.Q(c50.x1(dm2.APP_ID_MISSING, null, null));
            return false;
        }
        if (isLoading()) {
            return false;
        }
        this.h = new AtomicBoolean();
        yf2 yf2Var = this.j;
        String str = this.i;
        eg2 eg2Var = new eg2(this);
        synchronized (yf2Var) {
            bi.f("loadAd must be called on the main UI thread.");
            if (str == null) {
                is0.zzex("Ad unit ID should not be null for app open ad.");
                yf2Var.b.execute(new jg2(yf2Var));
            } else if (yf2Var.h == null) {
                c50.Q3(yf2Var.a, zzvqVar.j);
                nl2 nl2Var = yf2Var.g;
                nl2Var.d = str;
                nl2Var.b = zzvt.L0();
                nl2Var.a = zzvqVar;
                ll2 ll2VarA = nl2Var.a();
                ng2 ng2Var = new ng2(null);
                ng2Var.a = ll2VarA;
                aw2<AppOpenAd> aw2VarA = yf2Var.e.a(new pi2(ng2Var), new hg2(yf2Var));
                yf2Var.h = aw2VarA;
                lg2 lg2Var = new lg2(yf2Var, eg2Var, ng2Var);
                aw2VarA.i(new sv2(aw2VarA, lg2Var), yf2Var.b);
                z = true;
            }
        }
        return z;
    }

    @Override // defpackage.it3
    public final void zza(yn3 yn3Var) {
        this.k.f.set(yn3Var);
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
