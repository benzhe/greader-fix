package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import java.util.List;

/* loaded from: classes.dex */
public final class ik0 implements NativeCustomFormatAd {
    public final q80 a;
    public final MediaView b;
    public final VideoController c = new VideoController();
    public NativeCustomFormatAd.DisplayOpenMeasurement d;

    public ik0(q80 q80Var) {
        Context context;
        this.a = q80Var;
        MediaView mediaView = null;
        try {
            context = (Context) y20.l0(q80Var.Q1());
        } catch (RemoteException | NullPointerException e) {
            is0.zzc("", e);
            context = null;
        }
        if (context != null) {
            MediaView mediaView2 = new MediaView(context);
            try {
                if (this.a.A3(new y20(mediaView2))) {
                    mediaView = mediaView2;
                }
            } catch (RemoteException e2) {
                is0.zzc("", e2);
            }
        }
        this.b = mediaView;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void destroy() {
        try {
            this.a.destroy();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.a.getAvailableAssetNames();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final String getCustomFormatId() {
        try {
            return this.a.getCustomTemplateId();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeCustomFormatAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.d == null && this.a.S0()) {
                this.d = new zj0(this.a);
            }
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
        return this.d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final NativeAd.Image getImage(String str) {
        try {
            u70 u70VarX5 = this.a.X5(str);
            if (u70VarX5 != null) {
                return new ck0(u70VarX5);
            }
            return null;
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final CharSequence getText(String str) {
        try {
            return this.a.S1(str);
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final VideoController getVideoController() {
        try {
            su3 videoController = this.a.getVideoController();
            if (videoController != null) {
                this.c.zza(videoController);
            }
        } catch (RemoteException e) {
            is0.zzc("Exception occurred while getting video controller", e);
        }
        return this.c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final MediaView getVideoMediaView() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void performClick(String str) {
        try {
            this.a.performClick(str);
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd
    public final void recordImpression() {
        try {
            this.a.recordImpression();
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
