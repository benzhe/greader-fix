package com.google.android.gms.ads.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.internal.ads.zzaww;
import defpackage.bi;
import defpackage.bo0;
import defpackage.c40;
import defpackage.d40;
import defpackage.is0;
import defpackage.qo0;
import defpackage.ru3;
import defpackage.so0;
import defpackage.to0;
import defpackage.y20;
import java.util.Objects;

/* loaded from: classes.dex */
public class RewardedAd {
    public qo0 a;

    @Deprecated
    public RewardedAd(Context context, String str) {
        this.a = null;
        bi.j(context, "context cannot be null");
        bi.j(str, "adUnitID cannot be null");
        this.a = new qo0(context, str);
    }

    public static void load(Context context, String str, AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "AdUnitId cannot be null.");
        bi.j(adRequest, "AdRequest cannot be null.");
        bi.j(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new qo0(context, str).a(adRequest.zzdt(), rewardedAdLoadCallback);
    }

    public Bundle getAdMetadata() {
        qo0 qo0Var = this.a;
        if (qo0Var == null) {
            return new Bundle();
        }
        Objects.requireNonNull(qo0Var);
        try {
            return qo0Var.c.getAdMetadata();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    public String getAdUnitId() {
        qo0 qo0Var = this.a;
        return qo0Var != null ? qo0Var.b : "";
    }

    public FullScreenContentCallback getFullScreenContentCallback() {
        qo0 qo0Var = this.a;
        if (qo0Var == null) {
            return null;
        }
        FullScreenContentCallback fullScreenContentCallback = qo0Var.i;
        return null;
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        qo0 qo0Var = this.a;
        if (qo0Var == null) {
            return null;
        }
        Objects.requireNonNull(qo0Var);
        try {
            return qo0Var.c.getMediationAdapterClassName();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return "";
        }
    }

    public OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            return qo0Var.g;
        }
        return null;
    }

    public OnPaidEventListener getOnPaidEventListener() {
        qo0 qo0Var = this.a;
        if (qo0Var == null) {
            return null;
        }
        OnPaidEventListener onPaidEventListener = qo0Var.h;
        return null;
    }

    public ResponseInfo getResponseInfo() {
        qo0 qo0Var = this.a;
        ru3 ru3VarZzkm = null;
        if (qo0Var == null) {
            return null;
        }
        Objects.requireNonNull(qo0Var);
        try {
            ru3VarZzkm = qo0Var.c.zzkm();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    public RewardItem getRewardItem() {
        qo0 qo0Var = this.a;
        if (qo0Var == null) {
            return null;
        }
        Objects.requireNonNull(qo0Var);
        try {
            bo0 bo0VarC2 = qo0Var.c.c2();
            if (bo0VarC2 == null) {
                return null;
            }
            return new to0(bo0VarC2);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Deprecated
    public boolean isLoaded() {
        qo0 qo0Var = this.a;
        if (qo0Var == null) {
            return false;
        }
        Objects.requireNonNull(qo0Var);
        try {
            return qo0Var.c.isLoaded();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    @Deprecated
    public void loadAd(AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            qo0Var.a(adRequest.zzdt(), rewardedAdLoadCallback);
        }
    }

    public void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            qo0Var.i = fullScreenContentCallback;
            qo0Var.e.e = fullScreenContentCallback;
            qo0Var.f.f = fullScreenContentCallback;
        }
    }

    public void setImmersiveMode(boolean z) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            Objects.requireNonNull(qo0Var);
            try {
                qo0Var.c.setImmersiveMode(z);
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            Objects.requireNonNull(qo0Var);
            try {
                qo0Var.g = onAdMetadataChangedListener;
                qo0Var.c.r4(new d40(onAdMetadataChangedListener));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            Objects.requireNonNull(qo0Var);
            try {
                qo0Var.h = onPaidEventListener;
                qo0Var.c.zza(new c40(onPaidEventListener));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            Objects.requireNonNull(qo0Var);
            try {
                qo0Var.c.E6(new zzaww(serverSideVerificationOptions));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            so0 so0Var = qo0Var.f;
            so0Var.e = rewardedAdCallback;
            try {
                qo0Var.c.J5(so0Var);
                qo0Var.c.zze(new y20(activity));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Deprecated
    public void loadAd(PublisherAdRequest publisherAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            qo0Var.a(publisherAdRequest.zzdt(), rewardedAdLoadCallback);
        }
    }

    public RewardedAd() {
        this.a = null;
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        bi.j(context, "Context cannot be null.");
        bi.j(str, "AdUnitId cannot be null.");
        bi.j(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        bi.j(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        new qo0(context, str).a(adManagerAdRequest.zzdt(), rewardedAdLoadCallback);
    }

    @Deprecated
    public void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            so0 so0Var = qo0Var.f;
            so0Var.e = rewardedAdCallback;
            try {
                qo0Var.c.J5(so0Var);
                qo0Var.c.S6(new y20(activity), z);
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        qo0 qo0Var = this.a;
        if (qo0Var != null) {
            qo0Var.show(activity, onUserEarnedRewardListener);
        }
    }
}
