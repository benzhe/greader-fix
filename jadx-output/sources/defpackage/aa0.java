package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class aa0 extends UnifiedNativeAd {
    public final v90 a;
    public final y70 c;
    public final NativeAd.AdChoicesInfo e;
    public final List<NativeAd.Image> b = new ArrayList();
    public final VideoController d = new VideoController();
    public final List<MuteThisAdReason> f = new ArrayList();

    public aa0(v90 v90Var) {
        u70 u70VarP;
        u70 w70Var;
        IBinder iBinder;
        this.a = v90Var;
        r70 r70Var = null;
        try {
            List listI = v90Var.i();
            if (listI != null) {
                for (Object obj : listI) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        w70Var = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        w70Var = iInterfaceQueryLocalInterface instanceof u70 ? (u70) iInterfaceQueryLocalInterface : new w70(iBinder);
                    }
                    if (w70Var != null) {
                        this.b.add(new y70(w70Var));
                    }
                }
            }
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        try {
            List listQ4 = this.a.q4();
            if (listQ4 != null) {
                for (Object obj2 : listQ4) {
                    iu3 iu3VarW6 = obj2 instanceof IBinder ? lv3.W6((IBinder) obj2) : null;
                    if (iu3VarW6 != null) {
                        this.f.add(new ju3(iu3VarW6));
                    }
                }
            }
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        try {
            u70VarP = this.a.p();
        } catch (RemoteException e3) {
            is0.zzc("", e3);
        }
        y70 y70Var = u70VarP != null ? new y70(u70VarP) : null;
        this.c = y70Var;
        try {
            if (this.a.f() != null) {
                r70Var = new r70(this.a.f());
            }
        } catch (RemoteException e4) {
            is0.zzc("", e4);
        }
        this.e = r70Var;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object a() {
        try {
            return this.a.D();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.a.N();
        } catch (RemoteException e) {
            is0.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void destroy() {
        try {
            this.a.destroy();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void enableCustomClickGesture() {
        try {
            this.a.e0();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.a.r();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.a.g();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.a.e();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Bundle getExtras() {
        try {
            Bundle extras = this.a.getExtras();
            if (extras != null) {
                return extras;
            }
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.a.d();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.c;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.a.a0() != null) {
                return new n30(this.a.a0());
            }
            return null;
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getMediationAdapterClassName() {
        try {
            return this.a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.a.k();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final ResponseInfo getResponseInfo() {
        ru3 ru3VarZzkm;
        try {
            ru3VarZzkm = this.a.zzkm();
        } catch (RemoteException e) {
            is0.zzc("", e);
            ru3VarZzkm = null;
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double dQ = this.a.q();
            if (dQ == -1.0d) {
                return null;
            }
            return Double.valueOf(dQ);
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.a.s();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.a.getVideoController() != null) {
                this.d.zza(this.a.getVideoController());
            }
        } catch (RemoteException e) {
            is0.zzc("Exception occurred while getting video controller", e);
        }
        return this.d;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.a.k0();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.a.n2();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        boolean zN2;
        try {
            try {
                zN2 = this.a.n2();
            } catch (RemoteException e) {
                is0.zzc("", e);
                zN2 = false;
            }
            if (!zN2) {
                is0.zzex("Ad is not custom mute enabled");
                return;
            }
            if (muteThisAdReason == null) {
                this.a.L(null);
            } else if (muteThisAdReason instanceof ju3) {
                this.a.L(((ju3) muteThisAdReason).b);
            } else {
                is0.zzex("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.a.u(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void recordCustomClickGesture() {
        try {
            this.a.q6();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.a.B(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.a.E(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.a.j0(new gu3(muteThisAdListener));
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.a.zza(new c40(onPaidEventListener));
        } catch (RemoteException e) {
            is0.zzc("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setUnconfirmedClickListener(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.a.b0(new pa0(unconfirmedClickListener));
        } catch (RemoteException e) {
            is0.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzka() {
        try {
            x20 x20VarO = this.a.o();
            if (x20VarO != null) {
                return y20.l0(x20VarO);
            }
            return null;
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }
}
