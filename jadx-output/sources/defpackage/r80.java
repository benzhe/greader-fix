package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class r80 extends NativeContentAd {
    public final m80 a;
    public final y70 c;
    public final NativeAd.AdChoicesInfo e;
    public final List<NativeAd.Image> b = new ArrayList();
    public final VideoController d = new VideoController();

    public r80(m80 m80Var) {
        u70 u70VarR;
        u70 w70Var;
        IBinder iBinder;
        this.a = m80Var;
        r70 r70Var = null;
        try {
            List listI = m80Var.i();
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
            u70VarR = this.a.R();
        } catch (RemoteException e2) {
            is0.zzc("", e2);
        }
        y70 y70Var = u70VarR != null ? new y70(u70VarR) : null;
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

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final void destroy() {
        try {
            this.a.destroy();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getAdvertiser() {
        try {
            return this.a.r();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getBody() {
        try {
            return this.a.g();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getCallToAction() {
        try {
            return this.a.e();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final Bundle getExtras() {
        try {
            return this.a.getExtras();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getHeadline() {
        try {
            return this.a.d();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final List<NativeAd.Image> getImages() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.Image getLogo() {
        return this.c;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
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
