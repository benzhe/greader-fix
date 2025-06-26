package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzht;
import java.nio.ByteBuffer;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pf3 extends uh3 implements xk3 {
    public final ye3 T;
    public final hf3 U;
    public boolean V;
    public int W;
    public int X;
    public long Y;
    public boolean Z;

    public pf3(wh3 wh3Var, Handler handler, ze3 ze3Var) {
        super(1, wh3Var, true);
        this.U = new hf3(new xe3[0], new qf3(this, null));
        this.T = new ye3(handler, ze3Var);
    }

    @Override // defpackage.uh3
    public final void A(MediaCodec mediaCodec, MediaFormat mediaFormat) throws IllegalStateException, yd3 {
        int[] iArr;
        int i;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.V && integer == 6 && (i = this.X) < 6) {
            iArr = new int[i];
            for (int i2 = 0; i2 < this.X; i2++) {
                iArr[i2] = i2;
            }
        } else {
            iArr = null;
        }
        try {
            this.U.d("audio/raw", integer, integer2, this.W, iArr);
        } catch (lf3 e) {
            throw yd3.b(e, this.c);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0095  */
    @Override // defpackage.uh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int B(defpackage.wh3 r8, com.google.android.gms.internal.ads.zzht r9) throws defpackage.di3 {
        /*
            r7 = this;
            java.lang.String r0 = r9.j
            boolean r1 = defpackage.c50.l3(r0)
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = defpackage.el3.a
            r3 = 21
            if (r1 < r3) goto L13
            r4 = 16
            goto L14
        L13:
            r4 = 0
        L14:
            vh3 r8 = r8.a(r0, r2)
            r0 = 1
            if (r8 != 0) goto L1c
            return r0
        L1c:
            if (r1 < r3) goto L95
            int r1 = r9.w
            r3 = -1
            if (r1 == r3) goto L5a
            android.media.MediaCodecInfo$CodecCapabilities r5 = r8.f
            if (r5 != 0) goto L2e
            java.lang.String r1 = "sampleRate.caps"
            r8.c(r1)
        L2c:
            r1 = 0
            goto L58
        L2e:
            android.media.MediaCodecInfo$AudioCapabilities r5 = r5.getAudioCapabilities()
            if (r5 != 0) goto L3a
            java.lang.String r1 = "sampleRate.aCaps"
            r8.c(r1)
            goto L2c
        L3a:
            boolean r5 = r5.isSampleRateSupported(r1)
            if (r5 != 0) goto L57
            r5 = 31
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r5)
            java.lang.String r5 = "sampleRate.support, "
            r6.append(r5)
            r6.append(r1)
            java.lang.String r1 = r6.toString()
            r8.c(r1)
            goto L2c
        L57:
            r1 = 1
        L58:
            if (r1 == 0) goto L96
        L5a:
            int r9 = r9.v
            if (r9 == r3) goto L95
            android.media.MediaCodecInfo$CodecCapabilities r1 = r8.f
            if (r1 != 0) goto L69
            java.lang.String r9 = "channelCount.caps"
            r8.c(r9)
        L67:
            r8 = 0
            goto L93
        L69:
            android.media.MediaCodecInfo$AudioCapabilities r1 = r1.getAudioCapabilities()
            if (r1 != 0) goto L75
            java.lang.String r9 = "channelCount.aCaps"
            r8.c(r9)
            goto L67
        L75:
            int r1 = r1.getMaxInputChannelCount()
            if (r1 >= r9) goto L92
            r1 = 33
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r1)
            java.lang.String r1 = "channelCount.support, "
            r3.append(r1)
            r3.append(r9)
            java.lang.String r9 = r3.toString()
            r8.c(r9)
            goto L67
        L92:
            r8 = 1
        L93:
            if (r8 == 0) goto L96
        L95:
            r2 = 1
        L96:
            if (r2 == 0) goto L9a
            r8 = 3
            goto L9b
        L9a:
            r8 = 2
        L9b:
            r9 = r4 | 4
            r8 = r8 | r9
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pf3.B(wh3, com.google.android.gms.internal.ads.zzht):int");
    }

    @Override // defpackage.uh3
    public final vh3 C(wh3 wh3Var, zzht zzhtVar, boolean z) throws di3 {
        return wh3Var.a(zzhtVar.j, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    @Override // defpackage.uh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(defpackage.vh3 r3, android.media.MediaCodec r4, com.google.android.gms.internal.ads.zzht r5, android.media.MediaCrypto r6) {
        /*
            r2 = this;
            java.lang.String r3 = r3.a
            int r6 = defpackage.el3.a
            r0 = 0
            r1 = 24
            if (r6 >= r1) goto L37
            java.lang.String r6 = "OMX.SEC.aac.dec"
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L37
            java.lang.String r3 = defpackage.el3.c
            java.lang.String r6 = "samsung"
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L37
            java.lang.String r3 = defpackage.el3.b
            java.lang.String r6 = "zeroflte"
            boolean r6 = r3.startsWith(r6)
            if (r6 != 0) goto L35
            java.lang.String r6 = "herolte"
            boolean r6 = r3.startsWith(r6)
            if (r6 != 0) goto L35
            java.lang.String r6 = "heroqlte"
            boolean r3 = r3.startsWith(r6)
            if (r3 == 0) goto L37
        L35:
            r3 = 1
            goto L38
        L37:
            r3 = 0
        L38:
            r2.V = r3
            android.media.MediaFormat r3 = r5.i()
            r5 = 0
            r4.configure(r3, r5, r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pf3.E(vh3, android.media.MediaCodec, com.google.android.gms.internal.ads.zzht, android.media.MediaCrypto):void");
    }

    @Override // defpackage.uh3
    public final boolean F(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws yd3 {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.R.e++;
            hf3 hf3Var = this.U;
            if (hf3Var.J == 1) {
                hf3Var.J = 2;
            }
            return true;
        }
        try {
            if (!this.U.f(byteBuffer, j3)) {
                return false;
            }
            mediaCodec.releaseOutputBuffer(i, false);
            this.R.d++;
            return true;
        } catch (kf3 | of3 e) {
            throw yd3.b(e, this.c);
        }
    }

    @Override // defpackage.uh3
    public final void I(String str, long j, long j2) {
        ye3 ye3Var = this.T;
        if (ye3Var.b != null) {
            ye3Var.a.post(new af3(ye3Var, str, j, j2));
        }
    }

    @Override // defpackage.uh3
    public final void J(zzht zzhtVar) throws yd3 {
        super.J(zzhtVar);
        ye3 ye3Var = this.T;
        if (ye3Var.b != null) {
            ye3Var.a.post(new df3(ye3Var, zzhtVar));
        }
        this.W = "audio/raw".equals(zzhtVar.j) ? zzhtVar.x : 2;
        this.X = zzhtVar.v;
    }

    @Override // defpackage.uh3
    public final void K() throws IllegalStateException, yd3 {
        try {
            hf3 hf3Var = this.U;
            if (!hf3Var.V && hf3Var.a() && hf3Var.l()) {
                jf3 jf3Var = hf3Var.g;
                long jO = hf3Var.o();
                jf3Var.h = jf3Var.e();
                jf3Var.g = SystemClock.elapsedRealtime() * 1000;
                jf3Var.i = jO;
                jf3Var.a.stop();
                hf3Var.V = true;
            }
        } catch (of3 e) {
            throw yd3.b(e, this.c);
        }
    }

    @Override // defpackage.xk3
    public final pe3 a() {
        return this.U.s;
    }

    @Override // defpackage.xd3, defpackage.ce3
    public final void b(int i, Object obj) throws IllegalStateException, yd3 {
        if (i == 2) {
            hf3 hf3Var = this.U;
            float fFloatValue = ((Float) obj).floatValue();
            if (hf3Var.N != fFloatValue) {
                hf3Var.N = fFloatValue;
                hf3Var.n();
                return;
            }
            return;
        }
        if (i != 3) {
            return;
        }
        int iIntValue = ((Integer) obj).intValue();
        hf3 hf3Var2 = this.U;
        if (hf3Var2.n == iIntValue) {
            return;
        }
        hf3Var2.n = iIntValue;
        hf3Var2.c();
        hf3Var2.X = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0162 A[Catch: Exception -> 0x017d, TRY_LEAVE, TryCatch #0 {Exception -> 0x017d, blocks: (B:44:0x013d, B:46:0x0162), top: B:84:0x013d }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0224  */
    @Override // defpackage.xk3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long c() {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pf3.c():long");
    }

    @Override // defpackage.xk3
    public final pe3 d(pe3 pe3Var) {
        return this.U.e(pe3Var);
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void e() throws IllegalStateException {
        this.U.b();
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void f() throws IllegalStateException {
        hf3 hf3Var = this.U;
        hf3Var.W = false;
        if (hf3Var.a()) {
            hf3Var.x = 0L;
            hf3Var.w = 0;
            hf3Var.v = 0;
            hf3Var.y = 0L;
            hf3Var.z = false;
            hf3Var.A = 0L;
            jf3 jf3Var = hf3Var.g;
            if (jf3Var.g != -9223372036854775807L) {
                return;
            }
            jf3Var.a.pause();
        }
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void h(long j, boolean z) throws IllegalStateException, yd3 {
        super.h(j, z);
        this.U.c();
        this.Y = j;
        this.Z = true;
    }

    @Override // defpackage.uh3, defpackage.oe3
    public final boolean isReady() {
        return this.U.m() || super.isReady();
    }

    @Override // defpackage.uh3, defpackage.oe3
    public final boolean j() {
        if (this.O) {
            hf3 hf3Var = this.U;
            if (!hf3Var.a() || (hf3Var.V && !hf3Var.m())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.xd3, defpackage.oe3
    public final xk3 m() {
        return this;
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void y() {
        try {
            hf3 hf3Var = this.U;
            hf3Var.c();
            for (xe3 xe3Var : hf3Var.c) {
                xe3Var.g();
            }
            hf3Var.X = 0;
            hf3Var.W = false;
            try {
                super.y();
                synchronized (this.R) {
                }
                this.T.a(this.R);
            } catch (Throwable th) {
                synchronized (this.R) {
                    this.T.a(this.R);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                super.y();
                synchronized (this.R) {
                    this.T.a(this.R);
                    throw th2;
                }
            } catch (Throwable th3) {
                synchronized (this.R) {
                    this.T.a(this.R);
                    throw th3;
                }
            }
        }
    }

    @Override // defpackage.uh3, defpackage.xd3
    public final void z(boolean z) throws yd3 {
        xf3 xf3Var = new xf3();
        this.R = xf3Var;
        ye3 ye3Var = this.T;
        if (ye3Var.b != null) {
            ye3Var.a.post(new bf3(ye3Var, xf3Var));
        }
        Objects.requireNonNull(this.b);
        Objects.requireNonNull(this.U);
    }
}
