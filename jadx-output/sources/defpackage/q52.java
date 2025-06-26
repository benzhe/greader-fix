package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;
import java.util.Collections;

/* loaded from: classes.dex */
public final class q52 extends ht3 {
    public final Context e;
    public final us3 f;
    public final ll2 g;
    public final j41 h;
    public final ViewGroup i;

    public q52(Context context, us3 us3Var, ll2 ll2Var, j41 j41Var) {
        this.e = context;
        this.f = us3Var;
        this.g = ll2Var;
        this.h = j41Var;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        frameLayout.addView(j41Var.f(), zzr.zzkx().zzzw());
        frameLayout.setMinimumHeight(zzkk().g);
        frameLayout.setMinimumWidth(zzkk().j);
        this.i = frameLayout;
    }

    @Override // defpackage.it3
    public final void destroy() throws RemoteException {
        bi.f("destroy must be called on the main UI thread.");
        this.h.a();
    }

    @Override // defpackage.it3
    public final Bundle getAdMetadata() throws RemoteException {
        is0.zzey("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // defpackage.it3
    public final String getAdUnitId() throws RemoteException {
        return this.g.f;
    }

    @Override // defpackage.it3
    public final String getMediationAdapterClassName() throws RemoteException {
        t91 t91Var = this.h.f;
        if (t91Var != null) {
            return t91Var.e;
        }
        return null;
    }

    @Override // defpackage.it3
    public final su3 getVideoController() throws RemoteException {
        return this.h.c();
    }

    @Override // defpackage.it3
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // defpackage.it3
    public final boolean isReady() throws RemoteException {
        return false;
    }

    @Override // defpackage.it3
    public final void pause() throws RemoteException {
        bi.f("destroy must be called on the main UI thread.");
        this.h.c.G0(null);
    }

    @Override // defpackage.it3
    public final void resume() throws RemoteException {
        bi.f("destroy must be called on the main UI thread.");
        this.h.c.H0(null);
    }

    @Override // defpackage.it3
    public final void setImmersiveMode(boolean z) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        is0.zzey("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void setUserId(String str) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void showInterstitial() throws RemoteException {
    }

    @Override // defpackage.it3
    public final void stopLoading() throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(zzvq zzvqVar, vs3 vs3Var) {
    }

    @Override // defpackage.it3
    public final void zza(zzwc zzwcVar) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(zzzj zzzjVar) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(gl0 gl0Var) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(jl0 jl0Var, String str) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(pn0 pn0Var) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(yn3 yn3Var) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(yt3 yt3Var) {
    }

    @Override // defpackage.it3
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        is0.zzey("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // defpackage.it3
    public final void zzbl(String str) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zze(x20 x20Var) {
    }

    @Override // defpackage.it3
    public final x20 zzki() throws RemoteException {
        return new y20(this.i);
    }

    @Override // defpackage.it3
    public final void zzkj() throws RemoteException {
        this.h.i();
    }

    @Override // defpackage.it3
    public final zzvt zzkk() {
        bi.f("getAdSize must be called on the main UI thread.");
        return c50.V2(this.e, Collections.singletonList(this.h.e()));
    }

    @Override // defpackage.it3
    public final String zzkl() throws RemoteException {
        t91 t91Var = this.h.f;
        if (t91Var != null) {
            return t91Var.e;
        }
        return null;
    }

    @Override // defpackage.it3
    public final ru3 zzkm() {
        return this.h.f;
    }

    @Override // defpackage.it3
    public final pt3 zzkn() throws RemoteException {
        return this.g.n;
    }

    @Override // defpackage.it3
    public final us3 zzko() throws RemoteException {
        return this.f;
    }

    @Override // defpackage.it3
    public final void zza(zzaaz zzaazVar) throws RemoteException {
        is0.zzey("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void zza(zzvt zzvtVar) throws RemoteException {
        bi.f("setAdSize must be called on the main UI thread.");
        j41 j41Var = this.h;
        if (j41Var != null) {
            j41Var.d(this.i, zzvtVar);
        }
    }

    @Override // defpackage.it3
    public final void zza(t50 t50Var) throws RemoteException {
        is0.zzey("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void zza(ps3 ps3Var) throws RemoteException {
        is0.zzey("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void zza(wt3 wt3Var) throws RemoteException {
        is0.zzey("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void zza(us3 us3Var) throws RemoteException {
        is0.zzey("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void zza(pt3 pt3Var) throws RemoteException {
        is0.zzey("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void zza(lt3 lt3Var) throws RemoteException {
        is0.zzey("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // defpackage.it3
    public final void zza(mu3 mu3Var) {
        is0.zzey("setOnPaidEventListener is not supported in Publisher AdView returned by AdLoader.");
    }
}
