package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class md0<AdT> extends AdManagerInterstitialAd {
    public final Context a;
    public final it3 b;
    public final String c;
    public AppEventListener d;
    public FullScreenContentCallback e;
    public OnPaidEventListener f;

    public md0(Context context, String str) {
        this.a = context;
        this.c = str;
        this.b = os3.j.b.c(context, new zzvt(), str, new eg0());
    }

    public final void a(zu3 zu3Var, AdLoadCallback<AdT> adLoadCallback) {
        try {
            this.b.zza(nr3.a(this.a, zu3Var), new kr3(adLoadCallback, this));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        return this.c;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final AppEventListener getAppEventListener() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final ResponseInfo getResponseInfo() {
        ru3 ru3VarZzkm = null;
        try {
            it3 it3Var = this.b;
            if (it3Var != null) {
                ru3VarZzkm = it3Var.zzkm();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.d = appEventListener;
            this.b.zza(appEventListener != null ? new um3(appEventListener) : null);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.e = fullScreenContentCallback;
            this.b.zza(new qs3(fullScreenContentCallback));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.b.setImmersiveMode(z);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f = onPaidEventListener;
            this.b.zza(new c40(onPaidEventListener));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(Activity activity) {
        if (activity == null) {
            is0.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.b.zze(new y20(activity));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
