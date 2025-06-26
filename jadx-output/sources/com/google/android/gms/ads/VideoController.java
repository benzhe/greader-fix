package com.google.android.gms.ads;

import android.os.RemoteException;
import defpackage.bi;
import defpackage.g40;
import defpackage.is0;
import defpackage.su3;

/* loaded from: classes.dex */
public final class VideoController {
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    public final Object a = new Object();
    public su3 b;
    public VideoLifecycleCallbacks c;

    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    @Deprecated
    public final float getAspectRatio() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return 0.0f;
            }
            try {
                return su3Var.getAspectRatio();
            } catch (RemoteException e) {
                is0.zzc("Unable to call getAspectRatio on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final int getPlaybackState() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return 0;
            }
            try {
                return su3Var.getPlaybackState();
            } catch (RemoteException e) {
                is0.zzc("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    public final float getVideoCurrentTime() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return 0.0f;
            }
            try {
                return su3Var.getCurrentTime();
            } catch (RemoteException e) {
                is0.zzc("Unable to call getCurrentTime on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final float getVideoDuration() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return 0.0f;
            }
            try {
                return su3Var.getDuration();
            } catch (RemoteException e) {
                is0.zzc("Unable to call getDuration on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.a) {
            videoLifecycleCallbacks = this.c;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.a) {
            z = this.b != null;
        }
        return z;
    }

    public final boolean isClickToExpandEnabled() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return false;
            }
            try {
                return su3Var.F0();
            } catch (RemoteException e) {
                is0.zzc("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public final boolean isCustomControlsEnabled() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return false;
            }
            try {
                return su3Var.g5();
            } catch (RemoteException e) {
                is0.zzc("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public final boolean isMuted() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return true;
            }
            try {
                return su3Var.m1();
            } catch (RemoteException e) {
                is0.zzc("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public final void mute(boolean z) {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return;
            }
            try {
                su3Var.g2(z);
            } catch (RemoteException e) {
                is0.zzc("Unable to call mute on video controller.", e);
            }
        }
    }

    public final void pause() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return;
            }
            try {
                su3Var.pause();
            } catch (RemoteException e) {
                is0.zzc("Unable to call pause on video controller.", e);
            }
        }
    }

    public final void play() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return;
            }
            try {
                su3Var.play();
            } catch (RemoteException e) {
                is0.zzc("Unable to call play on video controller.", e);
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        bi.j(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.a) {
            this.c = videoLifecycleCallbacks;
            su3 su3Var = this.b;
            if (su3Var == null) {
                return;
            }
            try {
                su3Var.n4(new g40(videoLifecycleCallbacks));
            } catch (RemoteException e) {
                is0.zzc("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    public final void stop() {
        synchronized (this.a) {
            su3 su3Var = this.b;
            if (su3Var == null) {
                return;
            }
            try {
                su3Var.stop();
            } catch (RemoteException e) {
                is0.zzc("Unable to call stop on video controller.", e);
            }
        }
    }

    public final void zza(su3 su3Var) {
        synchronized (this.a) {
            this.b = su3Var;
            VideoLifecycleCallbacks videoLifecycleCallbacks = this.c;
            if (videoLifecycleCallbacks != null) {
                setVideoLifecycleCallbacks(videoLifecycleCallbacks);
            }
        }
    }

    public final su3 zzdz() {
        su3 su3Var;
        synchronized (this.a) {
            su3Var = this.b;
        }
        return su3Var;
    }
}
