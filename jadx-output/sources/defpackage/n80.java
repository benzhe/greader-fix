package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class n80 extends NativeAppInstallAd {
    public final i80 a;
    public final y70 c;
    public final NativeAd.AdChoicesInfo e;
    public final List<NativeAd.Image> b = new ArrayList();
    public final VideoController d = new VideoController();

    public n80(i80 i80Var) {
        u70 u70VarP;
        u70 w70Var;
        IBinder iBinder;
        this.a = i80Var;
        r70 r70Var = null;
        try {
            List listI = i80Var.i();
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
            u70VarP = this.a.p();
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        y70 y70Var = u70VarP != null ? new y70(u70VarP) : null;
        this.c = y70Var;
        try {
            if (this.a.f() != null) {
                r70Var = new r70(this.a.f());
            }
        } catch (RemoteException e3) {
            is0.zzc("", e3);
        }
        this.e = r70Var;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final Object a() {
        try {
            return this.a.D();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final void destroy() {
        try {
            this.a.destroy();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getBody() {
        try {
            return this.a.g();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getCallToAction() {
        try {
            return this.a.e();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final Bundle getExtras() {
        try {
            return this.a.getExtras();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getHeadline() {
        try {
            return this.a.d();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final NativeAd.Image getIcon() {
        return this.c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final List<NativeAd.Image> getImages() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getPrice() {
        try {
            return this.a.k();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
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

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public final CharSequence getStore() {
        try {
            return this.a.s();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
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

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.a.u(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.a.B(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.a.E(bundle);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
