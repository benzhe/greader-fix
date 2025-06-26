package defpackage;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.google.android.gms.internal.ads.zzht;
import com.google.android.gms.internal.ads.zzqa;
import java.nio.ByteBuffer;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ml3 extends uh3 {
    public static final int[] w0 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    public final Context T;
    public final ql3 U;
    public final rl3 V;
    public final int W;
    public final boolean X;
    public final long[] Y;
    public zzht[] Z;
    public ol3 a0;
    public Surface b0;
    public Surface c0;
    public int d0;
    public boolean e0;
    public long f0;
    public long g0;
    public int h0;
    public int i0;
    public int j0;
    public float k0;
    public int l0;
    public int m0;
    public int n0;
    public float o0;
    public int p0;
    public int q0;
    public int r0;
    public float s0;
    public nl3 t0;
    public long u0;
    public int v0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ml3(Context context, wh3 wh3Var, Handler handler, sl3 sl3Var) {
        super(2, wh3Var, false);
        boolean z = false;
        this.W = -1;
        this.T = context.getApplicationContext();
        this.U = new ql3(context);
        this.V = new rl3(handler, sl3Var);
        if (el3.a <= 22 && "foster".equals(el3.b) && "NVIDIA".equals(el3.c)) {
            z = true;
        }
        this.X = z;
        this.Y = new long[10];
        this.u0 = -9223372036854775807L;
        this.f0 = -9223372036854775807L;
        this.l0 = -1;
        this.m0 = -1;
        this.o0 = -1.0f;
        this.k0 = -1.0f;
        this.d0 = 1;
        U();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int O(java.lang.String r5, int r6, int r7) {
        /*
            r0 = -1
            if (r6 == r0) goto L82
            if (r7 != r0) goto L7
            goto L82
        L7:
            r5.hashCode()
            int r1 = r5.hashCode()
            r2 = 3
            r3 = 4
            r4 = 2
            switch(r1) {
                case -1664118616: goto L4d;
                case -1662541442: goto L42;
                case 1187890754: goto L37;
                case 1331836730: goto L2c;
                case 1599127256: goto L21;
                case 1599127257: goto L16;
                default: goto L14;
            }
        L14:
            r5 = -1
            goto L57
        L16:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L1f
            goto L14
        L1f:
            r5 = 5
            goto L57
        L21:
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L2a
            goto L14
        L2a:
            r5 = 4
            goto L57
        L2c:
            java.lang.String r1 = "video/avc"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L35
            goto L14
        L35:
            r5 = 3
            goto L57
        L37:
            java.lang.String r1 = "video/mp4v-es"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L40
            goto L14
        L40:
            r5 = 2
            goto L57
        L42:
            java.lang.String r1 = "video/hevc"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L4b
            goto L14
        L4b:
            r5 = 1
            goto L57
        L4d:
            java.lang.String r1 = "video/3gpp"
            boolean r5 = r5.equals(r1)
            if (r5 != 0) goto L56
            goto L14
        L56:
            r5 = 0
        L57:
            switch(r5) {
                case 0: goto L79;
                case 1: goto L76;
                case 2: goto L79;
                case 3: goto L5b;
                case 4: goto L79;
                case 5: goto L76;
                default: goto L5a;
            }
        L5a:
            return r0
        L5b:
            java.lang.String r5 = defpackage.el3.d
            java.lang.String r1 = "BRAVIA 4K 2015"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L66
            return r0
        L66:
            r5 = 16
            int r6 = defpackage.el3.h(r6, r5)
            int r5 = defpackage.el3.h(r7, r5)
            int r5 = r5 * r6
            int r5 = r5 << r3
            int r6 = r5 << 4
            goto L7b
        L76:
            int r6 = r6 * r7
            goto L7c
        L79:
            int r6 = r6 * r7
        L7b:
            r3 = 2
        L7c:
            int r6 = r6 * 3
            int r3 = r3 * 2
            int r6 = r6 / r3
            return r6
        L82:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ml3.O(java.lang.String, int, int):int");
    }

    public static boolean P(boolean z, zzht zzhtVar, zzht zzhtVar2) {
        if (zzhtVar.j.equals(zzhtVar2.j)) {
            int i = zzhtVar.q;
            if (i == -1) {
                i = 0;
            }
            int i2 = zzhtVar2.q;
            if (i2 == -1) {
                i2 = 0;
            }
            if (i == i2) {
                if (z) {
                    return true;
                }
                if (zzhtVar.n == zzhtVar2.n && zzhtVar.o == zzhtVar2.o) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.uh3
    public final void A(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.l0 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.m0 = integer;
        float f = this.k0;
        this.o0 = f;
        if (el3.a >= 21) {
            int i = this.j0;
            if (i == 90 || i == 270) {
                int i2 = this.l0;
                this.l0 = integer;
                this.m0 = i2;
                this.o0 = 1.0f / f;
            }
        } else {
            this.n0 = this.j0;
        }
        mediaCodec.setVideoScalingMode(this.d0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0152  */
    @Override // defpackage.uh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int B(defpackage.wh3 r19, com.google.android.gms.internal.ads.zzht r20) throws defpackage.di3 {
        /*
            Method dump skipped, instructions count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ml3.B(wh3, com.google.android.gms.internal.ads.zzht):int");
    }

    @Override // defpackage.uh3
    public final void D(zf3 zf3Var) {
        int i = el3.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x0133 A[EDGE_INSN: B:95:0x0133->B:73:0x0133 BREAK  A[LOOP:1: B:37:0x0088->B:71:0x011e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x011e A[SYNTHETIC] */
    @Override // defpackage.uh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(defpackage.vh3 r22, android.media.MediaCodec r23, com.google.android.gms.internal.ads.zzht r24, android.media.MediaCrypto r25) throws defpackage.di3 {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ml3.E(vh3, android.media.MediaCodec, com.google.android.gms.internal.ads.zzht, android.media.MediaCrypto):void");
    }

    @Override // defpackage.uh3
    public final boolean F(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws InterruptedException {
        long j4;
        long j5;
        long j6;
        while (true) {
            int i3 = this.v0;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.Y;
            if (j3 < jArr[0]) {
                break;
            }
            this.u0 = jArr[0];
            int i4 = i3 - 1;
            this.v0 = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        if (z) {
            c50.g("skipVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            c50.R();
            this.R.e++;
            return true;
        }
        long j7 = j3 - j;
        if (this.b0 == this.c0) {
            if (!(j7 < -30000)) {
                return false;
            }
            c50.g("skipVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            c50.R();
            this.R.e++;
            return true;
        }
        if (!this.e0) {
            if (el3.a >= 21) {
                Q(mediaCodec, i, System.nanoTime());
            } else {
                R(mediaCodec, i);
            }
            return true;
        }
        if (this.d != 2) {
            return false;
        }
        long jElapsedRealtime = j7 - ((SystemClock.elapsedRealtime() * 1000) - j2);
        long jNanoTime = System.nanoTime();
        long j8 = (jElapsedRealtime * 1000) + jNanoTime;
        ql3 ql3Var = this.U;
        long j9 = j3 * 1000;
        if (ql3Var.h) {
            if (j3 != ql3Var.e) {
                ql3Var.k++;
                ql3Var.f = ql3Var.g;
            }
            long j10 = ql3Var.k;
            if (j10 >= 6) {
                long j11 = ql3Var.f + ((j9 - ql3Var.j) / j10);
                if (ql3Var.a(j11, j8)) {
                    ql3Var.h = false;
                } else {
                    j4 = (ql3Var.i + j11) - ql3Var.j;
                    j5 = j11;
                }
            } else if (ql3Var.a(j9, j8)) {
                ql3Var.h = false;
            }
            j4 = j8;
            j5 = j9;
        } else {
            j4 = j8;
            j5 = j9;
        }
        if (!ql3Var.h) {
            ql3Var.j = j9;
            ql3Var.i = j8;
            ql3Var.k = 0L;
            ql3Var.h = true;
        }
        ql3Var.e = j3;
        ql3Var.g = j5;
        pl3 pl3Var = ql3Var.a;
        if (pl3Var != null && pl3Var.e != 0) {
            long j12 = ql3Var.a.e;
            long j13 = ql3Var.c;
            long j14 = (((j4 - j12) / j13) * j13) + j12;
            if (j4 <= j14) {
                j6 = j14 - j13;
            } else {
                j6 = j14;
                j14 = j13 + j14;
            }
            if (j14 - j4 >= j4 - j6) {
                j14 = j6;
            }
            j4 = j14 - ql3Var.d;
        }
        long j15 = (j4 - jNanoTime) / 1000;
        if (j15 < -30000) {
            c50.g("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            c50.R();
            xf3 xf3Var = this.R;
            xf3Var.f++;
            this.h0++;
            int i5 = this.i0 + 1;
            this.i0 = i5;
            xf3Var.g = Math.max(i5, xf3Var.g);
            if (this.h0 == this.W) {
                X();
            }
            return true;
        }
        if (el3.a >= 21) {
            if (j15 >= 50000) {
                return false;
            }
            Q(mediaCodec, i, j4);
            return true;
        }
        if (j15 >= 30000) {
            return false;
        }
        if (j15 > 11000) {
            try {
                Thread.sleep((j15 - 10000) / 1000);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        R(mediaCodec, i);
        return true;
    }

    @Override // defpackage.uh3
    public final boolean G(MediaCodec mediaCodec, boolean z, zzht zzhtVar, zzht zzhtVar2) {
        if (!P(z, zzhtVar, zzhtVar2)) {
            return false;
        }
        int i = zzhtVar2.n;
        ol3 ol3Var = this.a0;
        return i <= ol3Var.a && zzhtVar2.o <= ol3Var.b && zzhtVar2.k <= ol3Var.c;
    }

    @Override // defpackage.uh3
    public final boolean H(vh3 vh3Var) {
        return this.b0 != null || Y(vh3Var.d);
    }

    @Override // defpackage.uh3
    public final void I(String str, long j, long j2) {
        rl3 rl3Var = this.V;
        if (rl3Var.b != null) {
            rl3Var.a.post(new tl3(rl3Var, str, j, j2));
        }
    }

    @Override // defpackage.uh3
    public final void J(zzht zzhtVar) throws yd3 {
        super.J(zzhtVar);
        rl3 rl3Var = this.V;
        if (rl3Var.b != null) {
            rl3Var.a.post(new wl3(rl3Var, zzhtVar));
        }
        float f = zzhtVar.r;
        if (f == -1.0f) {
            f = 1.0f;
        }
        this.k0 = f;
        int i = zzhtVar.q;
        if (i == -1) {
            i = 0;
        }
        this.j0 = i;
    }

    @Override // defpackage.uh3
    public final void M() {
        try {
            super.M();
            Surface surface = this.c0;
            if (surface != null) {
                if (this.b0 == surface) {
                    this.b0 = null;
                }
                surface.release();
                this.c0 = null;
            }
        } catch (Throwable th) {
            if (this.c0 != null) {
                Surface surface2 = this.b0;
                Surface surface3 = this.c0;
                if (surface2 == surface3) {
                    this.b0 = null;
                }
                surface3.release();
                this.c0 = null;
            }
            throw th;
        }
    }

    public final void Q(MediaCodec mediaCodec, int i, long j) {
        V();
        c50.g("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        c50.R();
        this.R.d++;
        this.i0 = 0;
        T();
    }

    public final void R(MediaCodec mediaCodec, int i) {
        V();
        c50.g("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        c50.R();
        this.R.d++;
        this.i0 = 0;
        T();
    }

    public final void S() {
        this.e0 = false;
        int i = el3.a;
    }

    public final void T() {
        if (this.e0) {
            return;
        }
        this.e0 = true;
        rl3 rl3Var = this.V;
        Surface surface = this.b0;
        if (rl3Var.b != null) {
            rl3Var.a.post(new xl3(rl3Var, surface));
        }
    }

    public final void U() {
        this.p0 = -1;
        this.q0 = -1;
        this.s0 = -1.0f;
        this.r0 = -1;
    }

    public final void V() {
        int i = this.p0;
        int i2 = this.l0;
        if (i == i2 && this.q0 == this.m0 && this.r0 == this.n0 && this.s0 == this.o0) {
            return;
        }
        this.V.a(i2, this.m0, this.n0, this.o0);
        this.p0 = this.l0;
        this.q0 = this.m0;
        this.r0 = this.n0;
        this.s0 = this.o0;
    }

    public final void W() {
        if (this.p0 == -1 && this.q0 == -1) {
            return;
        }
        this.V.a(this.l0, this.m0, this.n0, this.o0);
    }

    public final void X() {
        if (this.h0 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.g0;
            rl3 rl3Var = this.V;
            int i = this.h0;
            if (rl3Var.b != null) {
                rl3Var.a.post(new vl3(rl3Var, i, j));
            }
            this.h0 = 0;
            this.g0 = jElapsedRealtime;
        }
    }

    public final boolean Y(boolean z) {
        if (el3.a >= 23) {
            return !z || zzqa.b(this.T);
        }
        return false;
    }

    @Override // defpackage.xd3, defpackage.ce3
    public final void b(int i, Object obj) throws yd3 {
        if (i != 1) {
            if (i == 4) {
                int iIntValue = ((Integer) obj).intValue();
                this.d0 = iIntValue;
                MediaCodec mediaCodec = this.r;
                if (mediaCodec != null) {
                    mediaCodec.setVideoScalingMode(iIntValue);
                    return;
                }
                return;
            }
            return;
        }
        Surface surfaceA = (Surface) obj;
        if (surfaceA == null) {
            Surface surface = this.c0;
            if (surface != null) {
                surfaceA = surface;
            } else {
                vh3 vh3Var = this.s;
                if (vh3Var != null && Y(vh3Var.d)) {
                    surfaceA = zzqa.a(this.T, vh3Var.d);
                    this.c0 = surfaceA;
                }
            }
        }
        if (this.b0 == surfaceA) {
            if (surfaceA == null || surfaceA == this.c0) {
                return;
            }
            W();
            if (this.e0) {
                rl3 rl3Var = this.V;
                Surface surface2 = this.b0;
                if (rl3Var.b != null) {
                    rl3Var.a.post(new xl3(rl3Var, surface2));
                    return;
                }
                return;
            }
            return;
        }
        this.b0 = surfaceA;
        int i2 = this.d;
        if (i2 == 1 || i2 == 2) {
            MediaCodec mediaCodec2 = this.r;
            if (el3.a < 23 || mediaCodec2 == null || surfaceA == null) {
                M();
                L();
            } else {
                mediaCodec2.setOutputSurface(surfaceA);
            }
        }
        if (surfaceA == null || surfaceA == this.c0) {
            U();
            S();
            return;
        }
        W();
        S();
        if (i2 == 2) {
            this.f0 = -9223372036854775807L;
        }
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void e() {
        this.h0 = 0;
        this.g0 = SystemClock.elapsedRealtime();
        this.f0 = -9223372036854775807L;
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void f() {
        X();
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void h(long j, boolean z) throws yd3 {
        super.h(j, z);
        S();
        this.i0 = 0;
        int i = this.v0;
        if (i != 0) {
            this.u0 = this.Y[i - 1];
            this.v0 = 0;
        }
        if (z) {
            this.f0 = -9223372036854775807L;
        } else {
            this.f0 = -9223372036854775807L;
        }
    }

    @Override // defpackage.uh3, defpackage.oe3
    public final boolean isReady() {
        Surface surface;
        if (super.isReady() && (this.e0 || (((surface = this.c0) != null && this.b0 == surface) || this.r == null))) {
            this.f0 = -9223372036854775807L;
            return true;
        }
        if (this.f0 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f0) {
            return true;
        }
        this.f0 = -9223372036854775807L;
        return false;
    }

    @Override // defpackage.xd3
    public final void x(zzht[] zzhtVarArr, long j) throws yd3 {
        this.Z = zzhtVarArr;
        if (this.u0 == -9223372036854775807L) {
            this.u0 = j;
            return;
        }
        int i = this.v0;
        long[] jArr = this.Y;
        if (i == jArr.length) {
            long j2 = jArr[i - 1];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j2);
            Log.w("MediaCodecVideoRenderer", sb.toString());
        } else {
            this.v0 = i + 1;
        }
        this.Y[this.v0 - 1] = j;
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void y() {
        this.l0 = -1;
        this.m0 = -1;
        this.o0 = -1.0f;
        this.k0 = -1.0f;
        this.u0 = -9223372036854775807L;
        this.v0 = 0;
        U();
        S();
        ql3 ql3Var = this.U;
        if (ql3Var.b) {
            ql3Var.a.f.sendEmptyMessage(2);
        }
        this.t0 = null;
        try {
            super.y();
            synchronized (this.R) {
            }
            rl3 rl3Var = this.V;
            xf3 xf3Var = this.R;
            if (rl3Var.b != null) {
                rl3Var.a.post(new zl3(rl3Var, xf3Var));
            }
        } catch (Throwable th) {
            synchronized (this.R) {
                rl3 rl3Var2 = this.V;
                xf3 xf3Var2 = this.R;
                if (rl3Var2.b != null) {
                    rl3Var2.a.post(new zl3(rl3Var2, xf3Var2));
                }
                throw th;
            }
        }
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void z(boolean z) throws yd3 {
        this.R = new xf3();
        Objects.requireNonNull(this.b);
        rl3 rl3Var = this.V;
        xf3 xf3Var = this.R;
        if (rl3Var.b != null) {
            rl3Var.a.post(new ul3(rl3Var, xf3Var));
        }
        ql3 ql3Var = this.U;
        ql3Var.h = false;
        if (ql3Var.b) {
            ql3Var.a.f.sendEmptyMessage(1);
        }
    }
}
