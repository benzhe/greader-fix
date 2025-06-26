package defpackage;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;

/* loaded from: classes.dex */
public final class n30 implements MediaContent {
    public final t70 a;
    public final VideoController b = new VideoController();

    public n30(t70 t70Var) {
        this.a = t70Var;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getAspectRatio() {
        try {
            return this.a.getAspectRatio();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getCurrentTime() {
        try {
            return this.a.getCurrentTime();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getDuration() {
        try {
            return this.a.getDuration();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final Drawable getMainImage() {
        try {
            x20 x20VarW5 = this.a.w5();
            if (x20VarW5 != null) {
                return (Drawable) y20.l0(x20VarW5);
            }
            return null;
        } catch (RemoteException e) {
            is0.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final VideoController getVideoController() {
        try {
            if (this.a.getVideoController() != null) {
                this.b.zza(this.a.getVideoController());
            }
        } catch (RemoteException e) {
            is0.zzc("Exception occurred while getting video controller", e);
        }
        return this.b;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean hasVideoContent() {
        try {
            return this.a.hasVideoContent();
        } catch (RemoteException e) {
            is0.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final void setMainImage(Drawable drawable) {
        try {
            this.a.c1(new y20(drawable));
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }
}
