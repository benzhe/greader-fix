package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class bk0 extends NativeAd {
    public final v90 a;
    public final ck0 c;
    public final NativeAd.AdChoicesInfo d;
    public final List<NativeAd.Image> b = new ArrayList();
    public final List<MuteThisAdReason> e = new ArrayList();

    public bk0(v90 v90Var) {
        u70 u70VarP;
        this.a = v90Var;
        ak0 ak0Var = null;
        try {
            List listI = v90Var.i();
            if (listI != null) {
                for (Object obj : listI) {
                    u70 u70VarW6 = obj instanceof IBinder ? h70.W6((IBinder) obj) : null;
                    if (u70VarW6 != null) {
                        this.b.add(new ck0(u70VarW6));
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
                        this.e.add(new ju3(iu3VarW6));
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
        ck0 ck0Var = u70VarP != null ? new ck0(u70VarP) : null;
        this.c = ck0Var;
        try {
            if (this.a.f() != null) {
                ak0Var = new ak0(this.a.f());
            }
        } catch (RemoteException e4) {
            is0.zzc("", e4);
        }
        this.d = ak0Var;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Object a() {
        try {
            return this.a.D();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.a.N();
        } catch (RemoteException e) {
            is0.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.a.destroy();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.a.e0();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getAdvertiser() {
        try {
            return this.a.r();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getBody() {
        try {
            return this.a.g();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getCallToAction() {
        try {
            return this.a.e();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
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

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getHeadline() {
        try {
            return this.a.d();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.Image getIcon() {
        return this.c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<NativeAd.Image> getImages() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
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

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getPrice() {
        try {
            return this.a.k();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
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

    @Override // com.google.android.gms.ads.nativead.NativeAd
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

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getStore() {
        try {
            return this.a.s();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.a.k0();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.a.n2();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
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

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.a.u(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.a.q6();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.a.B(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.a.E(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.a.j0(new gu3(muteThisAdListener));
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.a.zza(new c40(onPaidEventListener));
        } catch (RemoteException e) {
            is0.zzc("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.a.b0(new kk0(unconfirmedClickListener));
        } catch (RemoteException e) {
            is0.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }
}
