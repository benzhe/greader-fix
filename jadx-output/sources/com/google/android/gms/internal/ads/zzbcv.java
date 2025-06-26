package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcv;
import defpackage.ae3;
import defpackage.be3;
import defpackage.cv0;
import defpackage.de3;
import defpackage.dv0;
import defpackage.fu0;
import defpackage.gu0;
import defpackage.hu0;
import defpackage.is0;
import defpackage.iu0;
import defpackage.je3;
import defpackage.jo;
import defpackage.ju0;
import defpackage.kw0;
import defpackage.le3;
import defpackage.lw0;
import defpackage.ms0;
import defpackage.mv0;
import defpackage.rt0;
import defpackage.xu0;
import defpackage.zd3;
import defpackage.zv0;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzbcv extends zzbbz implements TextureView.SurfaceTextureListener, mv0 {
    public final iu0 g;
    public final hu0 h;
    public final boolean i;
    public final fu0 j;
    public rt0 k;
    public Surface l;
    public cv0 m;
    public String n;
    public String[] o;
    public boolean p;
    public int q;
    public gu0 r;
    public final boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public int w;
    public float x;

    public zzbcv(Context context, hu0 hu0Var, iu0 iu0Var, boolean z, boolean z2, fu0 fu0Var) {
        super(context);
        this.q = 1;
        this.i = z2;
        this.g = iu0Var;
        this.h = hu0Var;
        this.s = z;
        this.j = fu0Var;
        setSurfaceTextureListener(this);
        hu0Var.c(this);
    }

    public static String w(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sbY = jo.y(jo.x(message, jo.x(canonicalName, jo.x(str, 2))), str, "/", canonicalName, ":");
        sbY.append(message);
        return sbY.toString();
    }

    public final boolean A() {
        cv0 cv0Var = this.m;
        return (cv0Var == null || cv0Var.k == null || this.p) ? false : true;
    }

    public final boolean B() {
        return A() && this.q != 1;
    }

    public final void C() {
        String str;
        if (this.m != null || (str = this.n) == null || this.l == null) {
            return;
        }
        if (str.startsWith("cache:")) {
            zv0 zv0VarX0 = this.g.x0(this.n);
            if (zv0VarX0 instanceof kw0) {
                kw0 kw0Var = (kw0) zv0VarX0;
                synchronized (kw0Var) {
                    kw0Var.l = true;
                    kw0Var.notify();
                }
                cv0 cv0Var = kw0Var.h;
                cv0Var.o = null;
                kw0Var.h = null;
                this.m = cv0Var;
                if (cv0Var.k == null) {
                    is0.zzez("Precached video player has been released.");
                    return;
                }
            } else {
                if (!(zv0VarX0 instanceof lw0)) {
                    String strValueOf = String.valueOf(this.n);
                    is0.zzez(strValueOf.length() != 0 ? "Stream cache miss: ".concat(strValueOf) : new String("Stream cache miss: "));
                    return;
                }
                lw0 lw0Var = (lw0) zv0VarX0;
                String strZ = z();
                synchronized (lw0Var.o) {
                    ByteBuffer byteBuffer = lw0Var.m;
                    if (byteBuffer != null && !lw0Var.n) {
                        byteBuffer.flip();
                        lw0Var.n = true;
                    }
                    lw0Var.j = true;
                }
                ByteBuffer byteBuffer2 = lw0Var.m;
                boolean z = lw0Var.r;
                String str2 = lw0Var.h;
                if (str2 == null) {
                    is0.zzez("Stream cache URL is null.");
                    return;
                } else {
                    cv0 cv0Var2 = new cv0(this.g.getContext(), this.j, this.g);
                    this.m = cv0Var2;
                    cv0Var2.m(new Uri[]{Uri.parse(str2)}, strZ, byteBuffer2, z);
                }
            }
        } else {
            this.m = new cv0(this.g.getContext(), this.j, this.g);
            String strZ2 = z();
            Uri[] uriArr = new Uri[this.o.length];
            int i = 0;
            while (true) {
                String[] strArr = this.o;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            cv0 cv0Var3 = this.m;
            Objects.requireNonNull(cv0Var3);
            cv0Var3.m(uriArr, strZ2, ByteBuffer.allocate(0), false);
        }
        this.m.o = this;
        y(this.l, false);
        de3 de3Var = this.m.k;
        if (de3Var != null) {
            int i2 = de3Var.k;
            this.q = i2;
            if (i2 == 3) {
                D();
            }
        }
    }

    public final void D() {
        if (this.t) {
            return;
        }
        this.t = true;
        zzj.zzegq.post(new Runnable(this) { // from class: nu0
            public final zzbcv e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                rt0 rt0Var = this.e.k;
                if (rt0Var != null) {
                    ((zzbcb) rt0Var).i();
                }
            }
        });
        a();
        this.h.e();
        if (this.u) {
            f();
        }
    }

    public final void E() {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            cv0Var.p(false);
        }
    }

    public final void F(int i, int i2) {
        float f = i2 > 0 ? i / i2 : 1.0f;
        if (this.x != f) {
            this.x = f;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz, defpackage.lu0
    public final void a() {
        ju0 ju0Var = this.f;
        x(ju0Var.c ? ju0Var.e ? 0.0f : ju0Var.f : 0.0f, false);
    }

    @Override // defpackage.mv0
    public final void b(final boolean z, final long j) {
        if (this.g != null) {
            ms0.e.execute(new Runnable(this, z, j) { // from class: yu0
                public final zzbcv e;
                public final boolean f;
                public final long g;

                {
                    this.e = this;
                    this.f = z;
                    this.g = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbcv zzbcvVar = this.e;
                    zzbcvVar.g.R(this.f, this.g);
                }
            });
        }
    }

    @Override // defpackage.mv0
    public final void c(String str, Exception exc) {
        final String strW = w(str, exc);
        String strValueOf = String.valueOf(strW);
        is0.zzez(strValueOf.length() != 0 ? "ExoPlayerAdapter exception: ".concat(strValueOf) : new String("ExoPlayerAdapter exception: "));
        zzj.zzegq.post(new Runnable(this, strW) { // from class: qu0
            public final zzbcv e;
            public final String f;

            {
                this.e = this;
                this.f = strW;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.e;
                String str2 = this.f;
                rt0 rt0Var = zzbcvVar.k;
                if (rt0Var != null) {
                    ((zzbcb) rt0Var).h("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
                }
            }
        });
    }

    @Override // defpackage.mv0
    public final void d(String str, Exception exc) {
        final String strW = w(str, exc);
        String strValueOf = String.valueOf(strW);
        is0.zzez(strValueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(strValueOf) : new String("ExoPlayerAdapter error: "));
        this.p = true;
        if (this.j.a) {
            E();
        }
        zzj.zzegq.post(new Runnable(this, strW) { // from class: ou0
            public final zzbcv e;
            public final String f;

            {
                this.e = this;
                this.f = strW;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.e;
                String str2 = this.f;
                rt0 rt0Var = zzbcvVar.k;
                if (rt0Var != null) {
                    ((zzbcb) rt0Var).j("ExoPlayerAdapter error", str2);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void e() {
        if (B()) {
            if (this.j.a) {
                E();
            }
            this.m.k.g(false);
            this.h.m = false;
            this.f.a();
            zzj.zzegq.post(new Runnable(this) { // from class: ru0
                public final zzbcv e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    rt0 rt0Var = this.e.k;
                    if (rt0Var != null) {
                        ((zzbcb) rt0Var).a();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void f() {
        cv0 cv0Var;
        if (!B()) {
            this.u = true;
            return;
        }
        if (this.j.a && (cv0Var = this.m) != null) {
            cv0Var.p(true);
        }
        this.m.k.g(true);
        this.h.b();
        ju0 ju0Var = this.f;
        ju0Var.d = true;
        ju0Var.b();
        this.e.c = true;
        zzj.zzegq.post(new Runnable(this) { // from class: su0
            public final zzbcv e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                rt0 rt0Var = this.e.k;
                if (rt0Var != null) {
                    ((zzbcb) rt0Var).b();
                }
            }
        });
    }

    @Override // defpackage.mv0
    public final void g(int i, int i2) {
        this.v = i;
        this.w = i2;
        F(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getCurrentPosition() {
        if (B()) {
            return (int) this.m.k.e();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getDuration() {
        if (B()) {
            return (int) this.m.k.b();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long getTotalBytes() {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            return cv0Var.k();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getVideoHeight() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int getVideoWidth() {
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void h(int i) {
        if (B()) {
            de3 de3Var = this.m.k;
            long j = i;
            int iF = de3Var.f();
            if (iF < 0 || (!de3Var.o.a() && iF >= de3Var.o.g())) {
                throw new le3(de3Var.o, iF, j);
            }
            de3Var.l++;
            de3Var.u = iF;
            if (!de3Var.o.a()) {
                de3Var.o.c(iF, de3Var.g);
                if (j != -9223372036854775807L) {
                    zd3.b(j);
                }
                int i2 = (de3Var.o.e(0, de3Var.h, false).c > (-9223372036854775807L) ? 1 : (de3Var.o.e(0, de3Var.h, false).c == (-9223372036854775807L) ? 0 : -1));
            }
            if (j == -9223372036854775807L) {
                de3Var.v = 0L;
                de3Var.e.j.obtainMessage(3, new je3(de3Var.o, iF, -9223372036854775807L)).sendToTarget();
                return;
            }
            de3Var.v = j;
            de3Var.e.j.obtainMessage(3, new je3(de3Var.o, iF, zd3.b(j))).sendToTarget();
            Iterator<ae3> it = de3Var.f.iterator();
            while (it.hasNext()) {
                it.next().j();
            }
        }
    }

    @Override // defpackage.mv0
    public final void i(int i) {
        if (this.q != i) {
            this.q = i;
            if (i == 3) {
                D();
                return;
            }
            if (i != 4) {
                return;
            }
            if (this.j.a) {
                E();
            }
            this.h.m = false;
            this.f.a();
            zzj.zzegq.post(new Runnable(this) { // from class: mu0
                public final zzbcv e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    rt0 rt0Var = this.e.k;
                    if (rt0Var != null) {
                        zzbcb zzbcbVar = (zzbcb) rt0Var;
                        zzbcbVar.h("ended", new String[0]);
                        zzbcbVar.f();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void j() {
        if (A()) {
            this.m.k.e.j.sendEmptyMessage(5);
            if (this.m != null) {
                y(null, true);
                cv0 cv0Var = this.m;
                if (cv0Var != null) {
                    cv0Var.o = null;
                    cv0Var.l();
                    this.m = null;
                }
                this.q = 1;
                this.p = false;
                this.t = false;
                this.u = false;
            }
        }
        this.h.m = false;
        this.f.a();
        this.h.a();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void k(float f, float f2) {
        gu0 gu0Var = this.r;
        if (gu0Var != null) {
            gu0Var.e(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void l(rt0 rt0Var) {
        this.k = rt0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final String m() {
        String str = this.s ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long n() {
        cv0 cv0Var = this.m;
        if (cv0Var == null) {
            return -1L;
        }
        if (cv0Var.n()) {
            return 0L;
        }
        return cv0Var.p;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int o() {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            return cv0Var.q;
        }
        return -1;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.x;
        if (f != 0.0f && this.r == null) {
            float f2 = measuredWidth;
            float f3 = f2 / measuredHeight;
            if (f > f3) {
                measuredHeight = (int) (f2 / f);
            }
            if (f < f3) {
                measuredWidth = (int) (measuredHeight * f);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        gu0 gu0Var = this.r;
        if (gu0Var != null) {
            gu0Var.i(measuredWidth, measuredHeight);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) throws InterruptedException {
        cv0 cv0Var;
        int i3;
        SurfaceTexture surfaceTexture2;
        if (this.s) {
            gu0 gu0Var = new gu0(getContext());
            this.r = gu0Var;
            gu0Var.q = i;
            gu0Var.p = i2;
            gu0Var.s = surfaceTexture;
            gu0Var.start();
            gu0 gu0Var2 = this.r;
            if (gu0Var2.s == null) {
                surfaceTexture2 = null;
            } else {
                try {
                    gu0Var2.x.await();
                } catch (InterruptedException unused) {
                }
                surfaceTexture2 = gu0Var2.r;
            }
            if (surfaceTexture2 != null) {
                surfaceTexture = surfaceTexture2;
            } else {
                this.r.c();
                this.r = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.l = surface;
        if (this.m == null) {
            C();
        } else {
            y(surface, true);
            if (!this.j.a && (cv0Var = this.m) != null) {
                cv0Var.p(true);
            }
        }
        int i4 = this.v;
        if (i4 == 0 || (i3 = this.w) == 0) {
            F(i, i2);
        } else {
            F(i4, i3);
        }
        zzj.zzegq.post(new Runnable(this) { // from class: uu0
            public final zzbcv e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                rt0 rt0Var = this.e.k;
                if (rt0Var != null) {
                    zzbcb zzbcbVar = (zzbcb) rt0Var;
                    zzbcbVar.h.b();
                    zzj.zzegq.post(new wt0(zzbcbVar));
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        e();
        gu0 gu0Var = this.r;
        if (gu0Var != null) {
            gu0Var.c();
            this.r = null;
        }
        if (this.m != null) {
            E();
            Surface surface = this.l;
            if (surface != null) {
                surface.release();
            }
            this.l = null;
            y(null, true);
        }
        zzj.zzegq.post(new Runnable(this) { // from class: wu0
            public final zzbcv e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                rt0 rt0Var = this.e.k;
                if (rt0Var != null) {
                    ((zzbcb) rt0Var).c();
                }
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        gu0 gu0Var = this.r;
        if (gu0Var != null) {
            gu0Var.i(i, i2);
        }
        zzj.zzegq.post(new Runnable(this, i, i2) { // from class: tu0
            public final zzbcv e;
            public final int f;
            public final int g;

            {
                this.e = this;
                this.f = i;
                this.g = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.e;
                int i3 = this.f;
                int i4 = this.g;
                rt0 rt0Var = zzbcvVar.k;
                if (rt0Var != null) {
                    ((zzbcb) rt0Var).k(i3, i4);
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.h.d(this);
        this.e.a(surfaceTexture, this.k);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzd.zzed(sb.toString());
        zzj.zzegq.post(new Runnable(this, i) { // from class: vu0
            public final zzbcv e;
            public final int f;

            {
                this.e = this;
                this.f = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcv zzbcvVar = this.e;
                int i2 = this.f;
                rt0 rt0Var = zzbcvVar.k;
                if (rt0Var != null) {
                    rt0Var.onWindowVisibilityChanged(i2);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void p(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.n = str;
            this.o = (String[]) Arrays.copyOf(strArr, strArr.length);
            C();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void q(int i) {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            dv0 dv0Var = cv0Var.f;
            synchronized (dv0Var) {
                dv0Var.b = i * 1000;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void r(int i) {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            dv0 dv0Var = cv0Var.f;
            synchronized (dv0Var) {
                dv0Var.c = i * 1000;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void s(int i) {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            dv0 dv0Var = cv0Var.f;
            synchronized (dv0Var) {
                dv0Var.d = i * 1000;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void setVideoPath(String str) {
        if (str != null) {
            this.n = str;
            this.o = new String[]{str};
            C();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void t(int i) {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            dv0 dv0Var = cv0Var.f;
            synchronized (dv0Var) {
                dv0Var.e = i * 1000;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void u(int i) throws SocketException {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            Iterator<WeakReference<xu0>> it = cv0Var.w.iterator();
            while (it.hasNext()) {
                xu0 xu0Var = it.next().get();
                if (xu0Var != null) {
                    xu0Var.o = i;
                    for (Socket socket : xu0Var.p) {
                        if (!socket.isClosed()) {
                            try {
                                socket.setReceiveBufferSize(xu0Var.o);
                            } catch (SocketException e) {
                                is0.zzd("Failed to update receive buffer size.", e);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long v() {
        cv0 cv0Var = this.m;
        if (cv0Var != null) {
            return cv0Var.q();
        }
        return -1L;
    }

    public final void x(float f, boolean z) {
        cv0 cv0Var = this.m;
        if (cv0Var == null) {
            is0.zzez("Trying to set volume before player is initalized.");
            return;
        }
        if (cv0Var.k == null) {
            return;
        }
        be3 be3Var = new be3(cv0Var.h, 2, Float.valueOf(f));
        if (z) {
            cv0Var.k.d(be3Var);
        } else {
            cv0Var.k.c(be3Var);
        }
    }

    public final void y(Surface surface, boolean z) {
        cv0 cv0Var = this.m;
        if (cv0Var == null) {
            is0.zzez("Trying to set surface before player is initalized.");
            return;
        }
        de3 de3Var = cv0Var.k;
        if (de3Var == null) {
            return;
        }
        be3 be3Var = new be3(cv0Var.g, 1, surface);
        if (z) {
            de3Var.d(be3Var);
        } else {
            de3Var.c(be3Var);
        }
    }

    public final String z() {
        return zzr.zzkv().zzq(this.g.getContext(), this.g.b().e);
    }
}
