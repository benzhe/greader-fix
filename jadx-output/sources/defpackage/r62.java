package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;

/* loaded from: classes.dex */
public final class r62 extends ht3 {
    public final zzvt e;
    public final Context f;
    public final ui2 g;
    public final String h;
    public final w52 i;
    public final ej2 j;
    public qg1 k;
    public boolean l = ((Boolean) os3.j.f.a(y40.q0)).booleanValue();

    public r62(Context context, zzvt zzvtVar, String str, ui2 ui2Var, w52 w52Var, ej2 ej2Var) {
        this.e = zzvtVar;
        this.h = str;
        this.f = context;
        this.g = ui2Var;
        this.i = w52Var;
        this.j = ej2Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean W6() {
        /*
            r1 = this;
            monitor-enter(r1)
            qg1 r0 = r1.k     // Catch: java.lang.Throwable -> L14
            if (r0 == 0) goto L12
            c71 r0 = r0.l     // Catch: java.lang.Throwable -> L14
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f     // Catch: java.lang.Throwable -> L14
            boolean r0 = r0.get()     // Catch: java.lang.Throwable -> L14
            if (r0 != 0) goto L12
            r0 = 1
        L10:
            monitor-exit(r1)
            return r0
        L12:
            r0 = 0
            goto L10
        L14:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r62.W6():boolean");
    }

    @Override // defpackage.it3
    public final synchronized void destroy() {
        bi.f("destroy must be called on the main UI thread.");
        qg1 qg1Var = this.k;
        if (qg1Var != null) {
            qg1Var.c.I0(null);
        }
    }

    @Override // defpackage.it3
    public final Bundle getAdMetadata() {
        bi.f("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // defpackage.it3
    public final synchronized String getAdUnitId() {
        return this.h;
    }

    @Override // defpackage.it3
    public final synchronized String getMediationAdapterClassName() {
        t91 t91Var;
        qg1 qg1Var = this.k;
        if (qg1Var == null || (t91Var = qg1Var.f) == null) {
            return null;
        }
        return t91Var.e;
    }

    @Override // defpackage.it3
    public final su3 getVideoController() {
        return null;
    }

    @Override // defpackage.it3
    public final synchronized boolean isLoading() {
        return this.g.isLoading();
    }

    @Override // defpackage.it3
    public final synchronized boolean isReady() {
        bi.f("isLoaded must be called on the main UI thread.");
        return W6();
    }

    @Override // defpackage.it3
    public final synchronized void pause() {
        bi.f("pause must be called on the main UI thread.");
        qg1 qg1Var = this.k;
        if (qg1Var != null) {
            qg1Var.c.G0(null);
        }
    }

    @Override // defpackage.it3
    public final synchronized void resume() {
        bi.f("resume must be called on the main UI thread.");
        qg1 qg1Var = this.k;
        if (qg1Var != null) {
            qg1Var.c.H0(null);
        }
    }

    @Override // defpackage.it3
    public final synchronized void setImmersiveMode(boolean z) {
        bi.f("setImmersiveMode must be called on the main UI thread.");
        this.l = z;
    }

    @Override // defpackage.it3
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // defpackage.it3
    public final void setUserId(String str) {
    }

    @Override // defpackage.it3
    public final synchronized void showInterstitial() {
        bi.f("showInterstitial must be called on the main UI thread.");
        qg1 qg1Var = this.k;
        if (qg1Var == null) {
            return;
        }
        qg1Var.c(this.l, null);
    }

    @Override // defpackage.it3
    public final void stopLoading() {
    }

    @Override // defpackage.it3
    public final void zza(zzaaz zzaazVar) {
    }

    @Override // defpackage.it3
    public final void zza(zzvt zzvtVar) {
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
    public final void zza(ps3 ps3Var) {
    }

    @Override // defpackage.it3
    public final void zza(wt3 wt3Var) {
    }

    @Override // defpackage.it3
    public final void zza(yn3 yn3Var) {
    }

    @Override // defpackage.it3
    public final synchronized boolean zza(zzvq zzvqVar) {
        bi.f("loadAd must be called on the main UI thread.");
        zzr.zzkv();
        if (zzj.zzbc(this.f) && zzvqVar.w == null) {
            is0.zzex("Failed to load the ad because app ID is missing.");
            w52 w52Var = this.i;
            if (w52Var != null) {
                w52Var.Q(c50.x1(dm2.APP_ID_MISSING, null, null));
            }
            return false;
        }
        if (W6()) {
            return false;
        }
        c50.Q3(this.f, zzvqVar.j);
        this.k = null;
        return this.g.a(zzvqVar, this.h, new vi2(this.e), new u62(this));
    }

    @Override // defpackage.it3
    public final void zzbl(String str) {
    }

    @Override // defpackage.it3
    public final synchronized void zze(x20 x20Var) {
        if (this.k == null) {
            is0.zzez("Interstitial can not be shown before loaded.");
            this.i.d(c50.x1(dm2.NOT_READY, null, null));
        } else {
            this.k.c(this.l, (Activity) y20.l0(x20Var));
        }
    }

    @Override // defpackage.it3
    public final x20 zzki() {
        return null;
    }

    @Override // defpackage.it3
    public final void zzkj() {
    }

    @Override // defpackage.it3
    public final zzvt zzkk() {
        return null;
    }

    @Override // defpackage.it3
    public final synchronized String zzkl() {
        t91 t91Var;
        qg1 qg1Var = this.k;
        if (qg1Var == null || (t91Var = qg1Var.f) == null) {
            return null;
        }
        return t91Var.e;
    }

    @Override // defpackage.it3
    public final synchronized ru3 zzkm() {
        if (!((Boolean) os3.j.f.a(y40.m4)).booleanValue()) {
            return null;
        }
        qg1 qg1Var = this.k;
        if (qg1Var == null) {
            return null;
        }
        return qg1Var.f;
    }

    @Override // defpackage.it3
    public final pt3 zzkn() {
        pt3 pt3Var;
        w52 w52Var = this.i;
        synchronized (w52Var) {
            pt3Var = w52Var.f.get();
        }
        return pt3Var;
    }

    @Override // defpackage.it3
    public final us3 zzko() {
        return this.i.r();
    }

    @Override // defpackage.it3
    public final void zza(zzvq zzvqVar, vs3 vs3Var) {
        this.i.h.set(vs3Var);
        zza(zzvqVar);
    }

    @Override // defpackage.it3
    public final void zza(yt3 yt3Var) {
        this.i.i.set(yt3Var);
    }

    @Override // defpackage.it3
    public final void zza(us3 us3Var) {
        bi.f("setAdListener must be called on the main UI thread.");
        this.i.e.set(us3Var);
    }

    @Override // defpackage.it3
    public final void zza(pt3 pt3Var) {
        bi.f("setAppEventListener must be called on the main UI thread.");
        this.i.f.set(pt3Var);
    }

    @Override // defpackage.it3
    public final synchronized void zza(t50 t50Var) {
        bi.f("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.g.f = t50Var;
    }

    @Override // defpackage.it3
    public final void zza(mu3 mu3Var) {
        bi.f("setPaidEventListener must be called on the main UI thread.");
        this.i.g.set(mu3Var);
    }

    @Override // defpackage.it3
    public final void zza(lt3 lt3Var) {
        bi.f("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // defpackage.it3
    public final void zza(pn0 pn0Var) {
        this.j.i.set(pn0Var);
    }
}
