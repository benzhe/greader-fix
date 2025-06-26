package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbbq;
import defpackage.gu0;
import defpackage.hu0;
import defpackage.is0;
import defpackage.iu0;
import defpackage.jo;
import defpackage.jt0;
import defpackage.ju0;
import defpackage.kt0;
import defpackage.lt0;
import defpackage.mt0;
import defpackage.nt0;
import defpackage.ot0;
import defpackage.pt0;
import defpackage.qt0;
import defpackage.rt0;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbbq extends zzbbz implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {
    public static final Map<Integer, String> v;
    public final iu0 g;
    public final hu0 h;
    public final boolean i;
    public int j;
    public int k;
    public MediaPlayer l;
    public Uri m;
    public int n;
    public int o;
    public int p;
    public gu0 q;
    public boolean r;
    public int s;
    public rt0 t;
    public Integer u;

    static {
        HashMap map = new HashMap();
        v = map;
        map.put(-1004, "MEDIA_ERROR_IO");
        map.put(-1007, "MEDIA_ERROR_MALFORMED");
        map.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        map.put(-110, "MEDIA_ERROR_TIMED_OUT");
        map.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        map.put(100, "MEDIA_ERROR_SERVER_DIED");
        map.put(1, "MEDIA_ERROR_UNKNOWN");
        map.put(1, "MEDIA_INFO_UNKNOWN");
        map.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        map.put(701, "MEDIA_INFO_BUFFERING_START");
        map.put(702, "MEDIA_INFO_BUFFERING_END");
        map.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        map.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        map.put(802, "MEDIA_INFO_METADATA_UPDATE");
        map.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        map.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzbbq(Context context, iu0 iu0Var, boolean z, boolean z2, hu0 hu0Var) {
        super(context);
        this.j = 0;
        this.k = 0;
        this.u = null;
        setSurfaceTextureListener(this);
        this.g = iu0Var;
        this.h = hu0Var;
        this.r = z;
        this.i = z2;
        hu0Var.c(this);
    }

    public final void A(int i) {
        if (i == 3) {
            this.h.b();
            ju0 ju0Var = this.f;
            ju0Var.d = true;
            ju0Var.b();
        } else if (this.j == 3) {
            this.h.m = false;
            this.f.a();
        }
        this.j = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz, defpackage.lu0
    public final void a() {
        ju0 ju0Var = this.f;
        float f = ju0Var.c ? ju0Var.e ? 0.0f : ju0Var.f : 0.0f;
        MediaPlayer mediaPlayer = this.l;
        if (mediaPlayer == null) {
            is0.zzez("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void e() throws IllegalStateException {
        zzd.zzed("AdMediaPlayerView pause");
        if (y() && this.l.isPlaying()) {
            this.l.pause();
            A(4);
            zzj.zzegq.post(new pt0(this));
        }
        this.k = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void f() throws IllegalStateException {
        zzd.zzed("AdMediaPlayerView play");
        if (y()) {
            this.l.start();
            A(3);
            this.e.c = true;
            zzj.zzegq.post(new qt0(this));
        }
        this.k = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getCurrentPosition() {
        if (y()) {
            return this.l.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getDuration() {
        if (y()) {
            return this.l.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long getTotalBytes() {
        if (this.u != null) {
            return getDuration() * this.u.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.l;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.l;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void h(int i) throws IllegalStateException {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzd.zzed(sb.toString());
        if (!y()) {
            this.s = i;
        } else {
            this.l.seekTo(i);
            this.s = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void j() throws IllegalStateException {
        zzd.zzed("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.l;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.l.release();
            this.l = null;
            A(0);
            this.k = 0;
        }
        this.h.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void k(float f, float f2) {
        gu0 gu0Var = this.q;
        if (gu0Var != null) {
            gu0Var.e(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void l(rt0 rt0Var) {
        this.t = rt0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final String m() {
        String str = this.r ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long n() {
        if (this.u != null) {
            return (getTotalBytes() * this.p) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int o() {
        if (Build.VERSION.SDK_INT < 26 || !y()) {
            return -1;
        }
        return this.l.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.p = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzd.zzed("AdMediaPlayerView completion");
        A(5);
        this.k = 5;
        zzj.zzegq.post(new jt0(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = v;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 38);
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        is0.zzez(sb.toString());
        A(-1);
        this.k = -1;
        zzj.zzegq.post(new mt0(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = v;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 37);
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzd.zzed(sb.toString());
        return true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int defaultSize = TextureView.getDefaultSize(this.n, i);
        int defaultSize2 = TextureView.getDefaultSize(this.o, i2);
        if (this.n > 0 && this.o > 0 && this.q == null) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i4 = this.n;
                int i5 = i4 * size2;
                int i6 = this.o;
                if (i5 < size * i6) {
                    defaultSize = (i4 * size2) / i6;
                    defaultSize2 = size2;
                } else {
                    if (i4 * size2 > size * i6) {
                        defaultSize2 = (i6 * size) / i4;
                        defaultSize = size;
                    }
                    defaultSize = size;
                    defaultSize2 = size2;
                }
            } else if (mode == 1073741824) {
                int i7 = (this.o * size) / this.n;
                if (mode2 != Integer.MIN_VALUE || i7 <= size2) {
                    defaultSize2 = i7;
                    defaultSize = size;
                }
                defaultSize = size;
                defaultSize2 = size2;
            } else {
                if (mode2 == 1073741824) {
                    i3 = (this.n * size2) / this.o;
                    if (mode == Integer.MIN_VALUE && i3 > size) {
                        defaultSize = size;
                    }
                    defaultSize2 = size2;
                } else {
                    int i8 = this.n;
                    int i9 = this.o;
                    if (mode2 != Integer.MIN_VALUE || i9 <= size2) {
                        i3 = i8;
                        size2 = i9;
                    } else {
                        i3 = (size2 * i8) / i9;
                    }
                    if (mode == Integer.MIN_VALUE && i3 > size) {
                        defaultSize2 = (i9 * size) / i8;
                        defaultSize = size;
                    }
                }
                defaultSize = i3;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        gu0 gu0Var = this.q;
        if (gu0Var != null) {
            gu0Var.i(defaultSize, defaultSize2);
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
        zzd.zzed("AdMediaPlayerView prepared");
        A(2);
        this.h.e();
        zzj.zzegq.post(new kt0(this, mediaPlayer));
        this.n = mediaPlayer.getVideoWidth();
        this.o = mediaPlayer.getVideoHeight();
        int i = this.s;
        if (i != 0) {
            h(i);
        }
        x();
        int i2 = this.n;
        int i3 = this.o;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        is0.zzey(sb.toString());
        if (this.k == 3) {
            f();
        }
        a();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws IllegalStateException, InterruptedException, IOException, SecurityException, IllegalArgumentException {
        zzd.zzed("AdMediaPlayerView surface created");
        w();
        zzj.zzegq.post(new lt0(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzd.zzed("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.l;
        if (mediaPlayer != null && this.s == 0) {
            this.s = mediaPlayer.getCurrentPosition();
        }
        gu0 gu0Var = this.q;
        if (gu0Var != null) {
            gu0Var.c();
        }
        zzj.zzegq.post(new nt0(this));
        z(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) throws IllegalStateException {
        zzd.zzed("AdMediaPlayerView surface changed");
        boolean z = this.k == 3;
        boolean z2 = this.n == i && this.o == i2;
        if (this.l != null && z && z2) {
            int i3 = this.s;
            if (i3 != 0) {
                h(i3);
            }
            f();
        }
        gu0 gu0Var = this.q;
        if (gu0Var != null) {
            gu0Var.i(i, i2);
        }
        zzj.zzegq.post(new ot0(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.h.d(this);
        this.e.a(surfaceTexture, this.t);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzd.zzed(sb.toString());
        this.n = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.o = videoHeight;
        if (this.n == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzd.zzed(sb.toString());
        zzj.zzegq.post(new Runnable(this, i) { // from class: it0
            public final zzbbq e;
            public final int f;

            {
                this.e = this;
                this.f = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbbq zzbbqVar = this.e;
                int i2 = this.f;
                rt0 rt0Var = zzbbqVar.t;
                if (rt0Var != null) {
                    rt0Var.onWindowVisibilityChanged(i2);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void setVideoPath(String str) throws IllegalStateException, InterruptedException, IOException, SecurityException, IllegalArgumentException {
        Uri uri = Uri.parse(str);
        zzti zztiVarN = zzti.n(uri);
        if (zztiVarN == null || zztiVarN.e != null) {
            if (zztiVarN != null) {
                uri = Uri.parse(zztiVarN.e);
            }
            this.m = uri;
            this.s = 0;
            w();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzbbq.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return jo.c(jo.x(hexString, name.length() + 1), name, "@", hexString);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long v() {
        return 0L;
    }

    public final void w() throws IllegalStateException, InterruptedException, IOException, SecurityException, IllegalArgumentException {
        SurfaceTexture surfaceTexture;
        zzd.zzed("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture2 = getSurfaceTexture();
        if (this.m == null || surfaceTexture2 == null) {
            return;
        }
        z(false);
        try {
            zzr.zzll();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.l = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.l.setOnCompletionListener(this);
            this.l.setOnErrorListener(this);
            this.l.setOnInfoListener(this);
            this.l.setOnPreparedListener(this);
            this.l.setOnVideoSizeChangedListener(this);
            this.p = 0;
            if (this.r) {
                gu0 gu0Var = new gu0(getContext());
                this.q = gu0Var;
                int width = getWidth();
                int height = getHeight();
                gu0Var.q = width;
                gu0Var.p = height;
                gu0Var.s = surfaceTexture2;
                this.q.start();
                gu0 gu0Var2 = this.q;
                if (gu0Var2.s == null) {
                    surfaceTexture = null;
                } else {
                    try {
                        gu0Var2.x.await();
                    } catch (InterruptedException unused) {
                    }
                    surfaceTexture = gu0Var2.r;
                }
                if (surfaceTexture != null) {
                    surfaceTexture2 = surfaceTexture;
                } else {
                    this.q.c();
                    this.q = null;
                }
            }
            this.l.setDataSource(getContext(), this.m);
            zzr.zzlm();
            this.l.setSurface(new Surface(surfaceTexture2));
            this.l.setAudioStreamType(3);
            this.l.setScreenOnWhilePlaying(true);
            this.l.prepareAsync();
            A(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String strValueOf = String.valueOf(this.m);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 36);
            sb.append("Failed to initialize MediaPlayer at ");
            sb.append(strValueOf);
            is0.zzd(sb.toString(), e);
            onError(this.l, 1, 0);
        }
    }

    public final void x() throws IllegalStateException {
        if (this.i && y() && this.l.getCurrentPosition() > 0 && this.k != 3) {
            zzd.zzed("AdMediaPlayerView nudging MediaPlayer");
            MediaPlayer mediaPlayer = this.l;
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.setVolume(0.0f, 0.0f);
                } catch (IllegalStateException unused) {
                }
            } else {
                is0.zzez("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            }
            this.l.start();
            int currentPosition = this.l.getCurrentPosition();
            long jA = zzr.zzlc().a();
            while (y() && this.l.getCurrentPosition() == currentPosition && zzr.zzlc().a() - jA <= 250) {
            }
            this.l.pause();
            a();
        }
    }

    public final boolean y() {
        int i;
        return (this.l == null || (i = this.j) == -1 || i == 0 || i == 1) ? false : true;
    }

    public final void z(boolean z) {
        zzd.zzed("AdMediaPlayerView release");
        gu0 gu0Var = this.q;
        if (gu0Var != null) {
            gu0Var.c();
            this.q = null;
        }
        MediaPlayer mediaPlayer = this.l;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.l.release();
            this.l = null;
            A(0);
            if (z) {
                this.k = 0;
                this.k = 0;
            }
        }
    }
}
