package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;
import defpackage.bi;
import defpackage.d23;
import defpackage.gd2;
import defpackage.gl0;
import defpackage.gx;
import defpackage.ht3;
import defpackage.hx;
import defpackage.i60;
import defpackage.is0;
import defpackage.ix;
import defpackage.jl0;
import defpackage.jo;
import defpackage.jx;
import defpackage.kx;
import defpackage.lt3;
import defpackage.ms0;
import defpackage.mu3;
import defpackage.pn0;
import defpackage.ps3;
import defpackage.pt3;
import defpackage.ru3;
import defpackage.su3;
import defpackage.t50;
import defpackage.us3;
import defpackage.vs3;
import defpackage.wt3;
import defpackage.x20;
import defpackage.y20;
import defpackage.yn3;
import defpackage.yt3;
import java.util.Objects;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class zzl extends ht3 {
    public final zzbar e;
    public final zzvt f;
    public final Future<d23> g = ms0.a.y(new jx(this));
    public final Context h;
    public final kx i;
    public WebView j;
    public us3 k;
    public d23 l;
    public AsyncTask<Void, Void, String> m;

    public zzl(Context context, zzvt zzvtVar, String str, zzbar zzbarVar) {
        this.h = context;
        this.e = zzbarVar;
        this.f = zzvtVar;
        this.j = new WebView(context);
        this.i = new kx(context, str);
        W6(0);
        this.j.setVerticalScrollBarEnabled(false);
        this.j.getSettings().setJavaScriptEnabled(true);
        this.j.setWebViewClient(new hx(this));
        this.j.setOnTouchListener(new gx(this));
    }

    public final void W6(int i) {
        if (this.j == null) {
            return;
        }
        this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    public final String X6() {
        String str = this.i.e;
        if (TextUtils.isEmpty(str)) {
            str = "www.google.com";
        }
        String strA = i60.d.a();
        return jo.c(jo.x(strA, jo.x(str, 8)), "https://", str, strA);
    }

    @Override // defpackage.it3
    public final void destroy() throws RemoteException {
        bi.f("destroy must be called on the main UI thread.");
        this.m.cancel(true);
        this.g.cancel(true);
        this.j.destroy();
        this.j = null;
    }

    @Override // defpackage.it3
    public final Bundle getAdMetadata() {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // defpackage.it3
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // defpackage.it3
    public final su3 getVideoController() {
        return null;
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
        bi.f("pause must be called on the main UI thread.");
    }

    @Override // defpackage.it3
    public final void resume() throws RemoteException {
        bi.f("resume must be called on the main UI thread.");
    }

    @Override // defpackage.it3
    public final void setImmersiveMode(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
    }

    @Override // defpackage.it3
    public final void setUserId(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void stopLoading() throws RemoteException {
    }

    @Override // defpackage.it3
    public final void zza(zzvq zzvqVar, vs3 vs3Var) {
    }

    @Override // defpackage.it3
    public final void zza(mu3 mu3Var) {
    }

    @Override // defpackage.it3
    public final void zza(yt3 yt3Var) {
    }

    @Override // defpackage.it3
    public final boolean zza(zzvq zzvqVar) throws RemoteException {
        bi.j(this.j, "This Search Ad has already been torn down");
        kx kxVar = this.i;
        zzbar zzbarVar = this.e;
        Objects.requireNonNull(kxVar);
        kxVar.d = zzvqVar.n.e;
        Bundle bundle = zzvqVar.q;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 != null) {
            String strA = i60.c.a();
            for (String str : bundle2.keySet()) {
                if (strA.equals(str)) {
                    kxVar.e = bundle2.getString(str);
                } else if (str.startsWith("csa_")) {
                    kxVar.c.put(str.substring(4), bundle2.getString(str));
                }
            }
            kxVar.c.put("SDKVersion", zzbarVar.e);
            if (i60.a.a().booleanValue()) {
                try {
                    Bundle bundleB = gd2.b(kxVar.a, new JSONArray(i60.b.a()));
                    for (String str2 : bundleB.keySet()) {
                        kxVar.c.put(str2, bundleB.get(str2).toString());
                    }
                } catch (JSONException e) {
                    is0.zzc("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
                }
            }
        }
        this.m = new ix(this, null).execute(new Void[0]);
        return true;
    }

    @Override // defpackage.it3
    public final void zzbl(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zze(x20 x20Var) {
    }

    @Override // defpackage.it3
    public final x20 zzki() throws RemoteException {
        bi.f("getAdFrame must be called on the main UI thread.");
        return new y20(this.j);
    }

    @Override // defpackage.it3
    public final void zzkj() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final zzvt zzkk() throws RemoteException {
        return this.f;
    }

    @Override // defpackage.it3
    public final String zzkl() throws RemoteException {
        return null;
    }

    @Override // defpackage.it3
    public final ru3 zzkm() {
        return null;
    }

    @Override // defpackage.it3
    public final pt3 zzkn() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // defpackage.it3
    public final us3 zzko() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // defpackage.it3
    public final void zza(us3 us3Var) throws RemoteException {
        this.k = us3Var;
    }

    @Override // defpackage.it3
    public final void zza(pt3 pt3Var) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(lt3 lt3Var) {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(zzvt zzvtVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // defpackage.it3
    public final void zza(gl0 gl0Var) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(jl0 jl0Var, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(t50 t50Var) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(ps3 ps3Var) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(wt3 wt3Var) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(pn0 pn0Var) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(zzaaz zzaazVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(zzzj zzzjVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(zzwc zzwcVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // defpackage.it3
    public final void zza(yn3 yn3Var) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }
}
