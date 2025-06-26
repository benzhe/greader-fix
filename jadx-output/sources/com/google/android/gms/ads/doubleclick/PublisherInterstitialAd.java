package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import defpackage.bi;
import defpackage.dv3;
import defpackage.is0;
import defpackage.it3;
import defpackage.sr3;
import defpackage.x50;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public final class PublisherInterstitialAd {
    public final dv3 a;

    public PublisherInterstitialAd(Context context) {
        this.a = new dv3(context, this);
        bi.j(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.a.c;
    }

    public final String getAdUnitId() {
        return this.a.f;
    }

    public final AppEventListener getAppEventListener() {
        return this.a.h;
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            it3 it3Var = dv3Var.e;
            if (it3Var != null) {
                return it3Var.zzkl();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return null;
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.a.i;
    }

    public final ResponseInfo getResponseInfo() {
        return this.a.a();
    }

    public final boolean isLoaded() {
        return this.a.b();
    }

    public final boolean isLoading() {
        return this.a.c();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.a.g(publisherAdRequest.zzdt());
    }

    public final void setAdListener(AdListener adListener) {
        this.a.d(adListener);
    }

    public final void setAdUnitId(String str) {
        dv3 dv3Var = this.a;
        if (dv3Var.f != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        dv3Var.f = str;
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            dv3Var.h = appEventListener;
            it3 it3Var = dv3Var.e;
            if (it3Var != null) {
                it3Var.zza(appEventListener != null ? new sr3(appEventListener) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setImmersiveMode(boolean z) {
        this.a.e(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            dv3Var.i = onCustomRenderedAdLoadedListener;
            it3 it3Var = dv3Var.e;
            if (it3Var != null) {
                it3Var.zza(onCustomRenderedAdLoadedListener != null ? new x50(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show() {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            dv3Var.h("show");
            dv3Var.e.showInterstitial();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
