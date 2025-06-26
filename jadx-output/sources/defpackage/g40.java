package defpackage;

import com.google.android.gms.ads.VideoController;

/* loaded from: classes.dex */
public final class g40 extends wu3 {
    public final VideoController.VideoLifecycleCallbacks e;

    public g40(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.e = videoLifecycleCallbacks;
    }

    @Override // defpackage.xu3
    public final void X() {
        this.e.onVideoEnd();
    }

    @Override // defpackage.xu3
    public final void onVideoPause() {
        this.e.onVideoPause();
    }

    @Override // defpackage.xu3
    public final void onVideoPlay() {
        this.e.onVideoPlay();
    }

    @Override // defpackage.xu3
    public final void onVideoStart() {
        this.e.onVideoStart();
    }

    @Override // defpackage.xu3
    public final void u0(boolean z) {
        this.e.onVideoMute(z);
    }
}
