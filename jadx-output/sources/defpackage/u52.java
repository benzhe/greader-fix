package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;
import java.util.Collections;

/* loaded from: classes.dex */
public final class u52 extends ht3 implements oc1 {
    public final Context e;
    public final ih2 f;
    public final String g;
    public final w52 h;
    public zzvt i;
    public final nl2 j;
    public j41 k;

    public u52(Context context, zzvt zzvtVar, String str, ih2 ih2Var, w52 w52Var) {
        this.e = context;
        this.f = ih2Var;
        this.i = zzvtVar;
        this.g = str;
        this.h = w52Var;
        this.j = ih2Var.i;
        ih2Var.h.F0(this, ih2Var.b);
    }

    public final synchronized void W6(zzvt zzvtVar) {
        nl2 nl2Var = this.j;
        nl2Var.b = zzvtVar;
        nl2Var.q = this.i.r;
    }

    public final synchronized boolean X6(zzvq zzvqVar) throws RemoteException {
        bi.f("loadAd must be called on the main UI thread.");
        zzr.zzkv();
        if (!zzj.zzbc(this.e) || zzvqVar.w != null) {
            c50.Q3(this.e, zzvqVar.j);
            return this.f.a(zzvqVar, this.g, null, new x52(this));
        }
        is0.zzex("Failed to load the ad because app ID is missing.");
        w52 w52Var = this.h;
        if (w52Var != null) {
            w52Var.Q(c50.x1(dm2.APP_ID_MISSING, null, null));
        }
        return false;
    }

    @Override // defpackage.it3
    public final synchronized void destroy() {
        bi.f("destroy must be called on the main UI thread.");
        j41 j41Var = this.k;
        if (j41Var != null) {
            j41Var.a();
        }
    }

    @Override // defpackage.it3
    public final Bundle getAdMetadata() {
        bi.f("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // defpackage.it3
    public final synchronized String getAdUnitId() {
        return this.g;
    }

    @Override // defpackage.it3
    public final synchronized String getMediationAdapterClassName() {
        t91 t91Var;
        j41 j41Var = this.k;
        if (j41Var == null || (t91Var = j41Var.f) == null) {
            return null;
        }
        return t91Var.e;
    }

    @Override // defpackage.it3
    public final synchronized su3 getVideoController() {
        bi.f("getVideoController must be called from the main thread.");
        j41 j41Var = this.k;
        if (j41Var == null) {
            return null;
        }
        return j41Var.c();
    }

    @Override // defpackage.it3
    public final synchronized boolean isLoading() {
        return this.f.isLoading();
    }

    @Override // defpackage.it3
    public final boolean isReady() {
        return false;
    }

    @Override // defpackage.oc1
    public final synchronized void j3() {
        boolean zZza;
        Object parent = this.f.f.getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            zZza = zzr.zzkv().zza(view, view.getContext());
        } else {
            zZza = false;
        }
        if (!zZza) {
            this.f.h.G0(60);
            return;
        }
        zzvt zzvtVarV2 = this.j.b;
        j41 j41Var = this.k;
        if (j41Var != null && j41Var.g() != null && this.j.q) {
            zzvtVarV2 = c50.V2(this.e, Collections.singletonList(this.k.g()));
        }
        W6(zzvtVarV2);
        try {
            X6(this.j.a);
        } catch (RemoteException unused) {
            is0.zzez("Failed to refresh the banner ad.");
        }
    }

    @Override // defpackage.it3
    public final synchronized void pause() {
        bi.f("pause must be called on the main UI thread.");
        j41 j41Var = this.k;
        if (j41Var != null) {
            j41Var.c.G0(null);
        }
    }

    @Override // defpackage.it3
    public final synchronized void resume() {
        bi.f("resume must be called on the main UI thread.");
        j41 j41Var = this.k;
        if (j41Var != null) {
            j41Var.c.H0(null);
        }
    }

    @Override // defpackage.it3
    public final void setImmersiveMode(boolean z) {
    }

    @Override // defpackage.it3
    public final synchronized void setManualImpressionsEnabled(boolean z) {
        bi.f("setManualImpressionsEnabled must be called from the main thread.");
        this.j.f = z;
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
    public final void zza(pn0 pn0Var) {
    }

    @Override // defpackage.it3
    public final void zza(yn3 yn3Var) {
    }

    @Override // defpackage.it3
    public final void zza(yt3 yt3Var) {
    }

    @Override // defpackage.it3
    public final synchronized boolean zza(zzvq zzvqVar) throws RemoteException {
        W6(this.i);
        return X6(zzvqVar);
    }

    @Override // defpackage.it3
    public final void zzbl(String str) {
    }

    @Override // defpackage.it3
    public final void zze(x20 x20Var) {
    }

    @Override // defpackage.it3
    public final x20 zzki() {
        bi.f("destroy must be called on the main UI thread.");
        return new y20(this.f.f);
    }

    @Override // defpackage.it3
    public final synchronized void zzkj() {
        bi.f("recordManualImpression must be called on the main UI thread.");
        j41 j41Var = this.k;
        if (j41Var != null) {
            j41Var.i();
        }
    }

    @Override // defpackage.it3
    public final synchronized zzvt zzkk() {
        bi.f("getAdSize must be called on the main UI thread.");
        j41 j41Var = this.k;
        if (j41Var != null) {
            return c50.V2(this.e, Collections.singletonList(j41Var.e()));
        }
        return this.j.b;
    }

    @Override // defpackage.it3
    public final synchronized String zzkl() {
        t91 t91Var;
        j41 j41Var = this.k;
        if (j41Var == null || (t91Var = j41Var.f) == null) {
            return null;
        }
        return t91Var.e;
    }

    @Override // defpackage.it3
    public final synchronized ru3 zzkm() {
        if (!((Boolean) os3.j.f.a(y40.m4)).booleanValue()) {
            return null;
        }
        j41 j41Var = this.k;
        if (j41Var == null) {
            return null;
        }
        return j41Var.f;
    }

    @Override // defpackage.it3
    public final pt3 zzkn() {
        pt3 pt3Var;
        w52 w52Var = this.h;
        synchronized (w52Var) {
            pt3Var = w52Var.f.get();
        }
        return pt3Var;
    }

    @Override // defpackage.it3
    public final us3 zzko() {
        return this.h.r();
    }

    @Override // defpackage.it3
    public final void zza(us3 us3Var) {
        bi.f("setAdListener must be called on the main UI thread.");
        this.h.e.set(us3Var);
    }

    @Override // defpackage.it3
    public final void zza(pt3 pt3Var) {
        bi.f("setAppEventListener must be called on the main UI thread.");
        this.h.f.set(pt3Var);
    }

    @Override // defpackage.it3
    public final synchronized void zza(zzvt zzvtVar) {
        bi.f("setAdSize must be called on the main UI thread.");
        this.j.b = zzvtVar;
        this.i = zzvtVar;
        j41 j41Var = this.k;
        if (j41Var != null) {
            j41Var.d(this.f.f, zzvtVar);
        }
    }

    @Override // defpackage.it3
    public final synchronized void zza(wt3 wt3Var) {
        bi.f("setCorrelationIdProvider must be called on the main UI thread");
        this.j.c = wt3Var;
    }

    @Override // defpackage.it3
    public final synchronized void zza(zzaaz zzaazVar) {
        bi.f("setVideoOptions must be called on the main UI thread.");
        this.j.e = zzaazVar;
    }

    @Override // defpackage.it3
    public final void zza(ps3 ps3Var) {
        bi.f("setAdListener must be called on the main UI thread.");
        q62 q62Var = this.f.e;
        synchronized (q62Var) {
            q62Var.e = ps3Var;
        }
    }

    @Override // defpackage.it3
    public final synchronized void zza(t50 t50Var) {
        bi.f("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.f.g = t50Var;
    }

    @Override // defpackage.it3
    public final void zza(mu3 mu3Var) {
        bi.f("setPaidEventListener must be called on the main UI thread.");
        this.h.g.set(mu3Var);
    }

    @Override // defpackage.it3
    public final void zza(lt3 lt3Var) {
        bi.f("setAdMetadataListener must be called on the main UI thread.");
    }
}
