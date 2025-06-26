package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import defpackage.bi;
import defpackage.c40;
import defpackage.dv3;
import defpackage.er3;
import defpackage.is0;
import defpackage.it3;
import defpackage.lr3;
import defpackage.sn0;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public final class InterstitialAd {
    public final dv3 a;

    public InterstitialAd(Context context) {
        this.a = new dv3(context);
        bi.j(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.a.c;
    }

    public final Bundle getAdMetadata() {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            it3 it3Var = dv3Var.e;
            if (it3Var != null) {
                return it3Var.getAdMetadata();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    public final String getAdUnitId() {
        return this.a.f;
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

    public final ResponseInfo getResponseInfo() {
        return this.a.a();
    }

    public final boolean isLoaded() {
        return this.a.b();
    }

    public final boolean isLoading() {
        return this.a.c();
    }

    public final void loadAd(AdRequest adRequest) {
        this.a.g(adRequest.zzdt());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setAdListener(AdListener adListener) {
        this.a.d(adListener);
        if (adListener != 0 && (adListener instanceof er3)) {
            this.a.f((er3) adListener);
        } else if (adListener == 0) {
            this.a.f(null);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            dv3Var.g = adMetadataListener;
            it3 it3Var = dv3Var.e;
            if (it3Var != null) {
                it3Var.zza(adMetadataListener != null ? new lr3(adMetadataListener) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdUnitId(String str) {
        dv3 dv3Var = this.a;
        if (dv3Var.f != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        dv3Var.f = str;
    }

    public final void setImmersiveMode(boolean z) {
        this.a.e(z);
    }

    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            dv3Var.m = onPaidEventListener;
            it3 it3Var = dv3Var.e;
            if (it3Var != null) {
                it3Var.zza(new c40(onPaidEventListener));
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        dv3 dv3Var = this.a;
        Objects.requireNonNull(dv3Var);
        try {
            dv3Var.j = rewardedVideoAdListener;
            it3 it3Var = dv3Var.e;
            if (it3Var != null) {
                it3Var.zza(rewardedVideoAdListener != null ? new sn0(rewardedVideoAdListener) : null);
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

    public final void zze(boolean z) {
        this.a.k = true;
    }
}
