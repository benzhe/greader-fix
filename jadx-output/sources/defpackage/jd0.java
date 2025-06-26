package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.ads.instream.InstreamAdView;

/* loaded from: classes.dex */
public final class jd0 extends InstreamAd {
    public final zc0 a;
    public VideoController b;
    public MediaContent c;

    public jd0(zc0 zc0Var) {
        this.a = zc0Var;
        VideoController videoController = new VideoController();
        try {
            videoController.zza(zc0Var.getVideoController());
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        this.b = videoController;
        try {
        } catch (RemoteException e2) {
            is0.zze("#007 Could not call remote method.", e2);
        }
        n30 n30Var = this.a.a0() != null ? new n30(this.a.a0()) : null;
        this.c = n30Var;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void a(InstreamAdView instreamAdView) {
        try {
            this.a.G4(new y20(instreamAdView));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void destroy() {
        try {
            this.a.destroy();
            this.b = null;
            this.c = null;
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getAspectRatio() {
        VideoController videoController = this.b;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getAspectRatio();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final MediaContent getMediaContent() {
        return this.c;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final VideoController getVideoController() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoCurrentTime() {
        VideoController videoController = this.b;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getVideoCurrentTime();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoDuration() {
        VideoController videoController = this.b;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getVideoDuration();
    }
}
