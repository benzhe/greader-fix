package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class dv3 {
    public final eg0 a = new eg0();
    public final Context b;
    public AdListener c;
    public er3 d;
    public it3 e;
    public String f;
    public AdMetadataListener g;
    public AppEventListener h;
    public OnCustomRenderedAdLoadedListener i;
    public RewardedVideoAdListener j;
    public boolean k;
    public Boolean l;
    public OnPaidEventListener m;

    public dv3(Context context) {
        this.b = context;
    }

    public final ResponseInfo a() {
        ru3 ru3VarZzkm = null;
        try {
            it3 it3Var = this.e;
            if (it3Var != null) {
                ru3VarZzkm = it3Var.zzkm();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    public final boolean b() {
        try {
            it3 it3Var = this.e;
            if (it3Var == null) {
                return false;
            }
            return it3Var.isReady();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final boolean c() {
        try {
            it3 it3Var = this.e;
            if (it3Var == null) {
                return false;
            }
            return it3Var.isLoading();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void d(AdListener adListener) {
        try {
            this.c = adListener;
            it3 it3Var = this.e;
            if (it3Var != null) {
                it3Var.zza(adListener != null ? new hr3(adListener) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void e(boolean z) {
        try {
            this.l = Boolean.valueOf(z);
            it3 it3Var = this.e;
            if (it3Var != null) {
                it3Var.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void f(er3 er3Var) {
        try {
            this.d = er3Var;
            it3 it3Var = this.e;
            if (it3Var != null) {
                it3Var.zza(er3Var != null ? new fr3(er3Var) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void g(zu3 zu3Var) {
        try {
            if (this.e == null) {
                if (this.f == null) {
                    h("loadAd");
                }
                it3 it3VarC = os3.j.b.c(this.b, this.k ? zzvt.K0() : new zzvt(), this.f, this.a);
                this.e = it3VarC;
                if (this.c != null) {
                    it3VarC.zza(new hr3(this.c));
                }
                if (this.d != null) {
                    this.e.zza(new fr3(this.d));
                }
                if (this.g != null) {
                    this.e.zza(new lr3(this.g));
                }
                if (this.h != null) {
                    this.e.zza(new sr3(this.h));
                }
                if (this.i != null) {
                    this.e.zza(new x50(this.i));
                }
                if (this.j != null) {
                    this.e.zza(new sn0(this.j));
                }
                this.e.zza(new c40(this.m));
                Boolean bool = this.l;
                if (bool != null) {
                    this.e.setImmersiveMode(bool.booleanValue());
                }
            }
            if (this.e.zza(nr3.a(this.b, zu3Var))) {
                this.a.e = zu3Var.i;
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void h(String str) {
        if (this.e == null) {
            throw new IllegalStateException(jo.c(str.length() + 63, "The ad unit ID must be set on InterstitialAd before ", str, " is called."));
        }
    }

    public dv3(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this.b = context;
    }
}
