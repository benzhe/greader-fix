package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzavt;

/* loaded from: classes.dex */
public final class wn0 implements RewardedVideoAd {
    public final jn0 a;
    public final Context b;
    public final Object c = new Object();
    public final sn0 d = new sn0(null);
    public String e;
    public String f;

    public wn0(Context context, jn0 jn0Var) {
        this.a = jn0Var == null ? new b40() : jn0Var;
        this.b = context.getApplicationContext();
    }

    public final void a(String str, zu3 zu3Var) {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.U6(new zzavt(nr3.a(this.b, zu3Var), str));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy() {
        synchronized (this.c) {
            this.d.e = null;
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.A6(new y20(null));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final Bundle getAdMetadata() {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                try {
                    return jn0Var.getAdMetadata();
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getCustomData() {
        String str;
        synchronized (this.c) {
            str = this.f;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                return jn0Var.getMediationAdapterClassName();
            }
            return null;
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final ResponseInfo getResponseInfo() {
        ru3 ru3VarZzkm = null;
        try {
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                ru3VarZzkm = jn0Var.zzkm();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.c) {
            rewardedVideoAdListener = this.d.e;
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.c) {
            str = this.e;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return false;
            }
            try {
                return jn0Var.isLoaded();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        a(str, adRequest.zzdt());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.Y4(new y20(null));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume() {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.k4(new y20(null));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                try {
                    jn0Var.zza(new lr3(adMetadataListener));
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setCustomData(String str) {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                try {
                    jn0Var.setCustomData(str);
                    this.f = str;
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                try {
                    jn0Var.setImmersiveMode(z);
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.c) {
            sn0 sn0Var = this.d;
            sn0Var.e = rewardedVideoAdListener;
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                try {
                    jn0Var.zza(sn0Var);
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.c) {
            this.e = str;
            jn0 jn0Var = this.a;
            if (jn0Var != null) {
                try {
                    jn0Var.setUserId(str);
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.show();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        a(str, publisherAdRequest.zzdt());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context) {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.Y4(new y20(context));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume(Context context) {
        synchronized (this.c) {
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.k4(new y20(context));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy(Context context) {
        synchronized (this.c) {
            this.d.e = null;
            jn0 jn0Var = this.a;
            if (jn0Var == null) {
                return;
            }
            try {
                jn0Var.A6(new y20(context));
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
