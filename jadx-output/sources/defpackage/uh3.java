package defpackage;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzht;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class uh3 extends xd3 {
    public static final byte[] S;
    public boolean A;
    public boolean B;
    public ByteBuffer[] C;
    public ByteBuffer[] D;
    public long E;
    public int F;
    public int G;
    public boolean H;
    public boolean I;
    public int J;
    public int K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public xf3 R;
    public final wh3 i;
    public final boolean j;
    public final zf3 k;
    public final zf3 l;
    public final me3 m;
    public final List<Long> n;
    public final MediaCodec.BufferInfo o;
    public zzht p;
    public bg3<Object> q;
    public MediaCodec r;
    public vh3 s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    static {
        int i = el3.a;
        byte[] bArr = new byte[38];
        for (int i2 = 0; i2 < 38; i2++) {
            int i3 = i2 << 1;
            bArr[i2] = (byte) (Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i3 + 1), 16) + (Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i3), 16) << 4));
        }
        S = bArr;
    }

    public uh3(int i, wh3 wh3Var, boolean z) {
        super(i);
        c50.D(el3.a >= 16);
        Objects.requireNonNull(wh3Var);
        this.i = wh3Var;
        this.j = z;
        this.k = new zf3();
        this.l = new zf3();
        this.m = new me3();
        this.n = new ArrayList();
        this.o = new MediaCodec.BufferInfo();
        this.J = 0;
        this.K = 0;
    }

    public abstract void A(MediaCodec mediaCodec, MediaFormat mediaFormat) throws yd3;

    public abstract int B(wh3 wh3Var, zzht zzhtVar) throws di3;

    public vh3 C(wh3 wh3Var, zzht zzhtVar, boolean z) throws di3 {
        return wh3Var.a(zzhtVar.j, z);
    }

    public void D(zf3 zf3Var) {
    }

    public abstract void E(vh3 vh3Var, MediaCodec mediaCodec, zzht zzhtVar, MediaCrypto mediaCrypto) throws di3;

    public abstract boolean F(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws yd3;

    public boolean G(MediaCodec mediaCodec, boolean z, zzht zzhtVar, zzht zzhtVar2) {
        return false;
    }

    public boolean H(vh3 vh3Var) {
        return true;
    }

    public abstract void I(String str, long j, long j2);

    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void J(com.google.android.gms.internal.ads.zzht r5) throws defpackage.yd3 {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzht r0 = r4.p
            r4.p = r5
            com.google.android.gms.internal.ads.zzjo r5 = r5.m
            if (r0 != 0) goto La
            r1 = 0
            goto Lc
        La:
            com.google.android.gms.internal.ads.zzjo r1 = r0.m
        Lc:
            boolean r5 = defpackage.el3.d(r5, r1)
            r1 = 1
            r5 = r5 ^ r1
            if (r5 == 0) goto L29
            com.google.android.gms.internal.ads.zzht r5 = r4.p
            com.google.android.gms.internal.ads.zzjo r5 = r5.m
            if (r5 != 0) goto L1b
            goto L29
        L1b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r5.<init>(r0)
            int r0 = r4.c
            yd3 r5 = defpackage.yd3.b(r5, r0)
            throw r5
        L29:
            bg3<java.lang.Object> r5 = r4.q
            if (r5 != 0) goto L58
            android.media.MediaCodec r5 = r4.r
            if (r5 == 0) goto L58
            vh3 r2 = r4.s
            boolean r2 = r2.b
            com.google.android.gms.internal.ads.zzht r3 = r4.p
            boolean r5 = r4.G(r5, r2, r0, r3)
            if (r5 == 0) goto L58
            r4.I = r1
            r4.J = r1
            boolean r5 = r4.v
            if (r5 == 0) goto L54
            com.google.android.gms.internal.ads.zzht r5 = r4.p
            int r2 = r5.n
            int r3 = r0.n
            if (r2 != r3) goto L54
            int r5 = r5.o
            int r0 = r0.o
            if (r5 != r0) goto L54
            goto L55
        L54:
            r1 = 0
        L55:
            r4.A = r1
            return
        L58:
            boolean r5 = r4.L
            if (r5 == 0) goto L5f
            r4.K = r1
            return
        L5f:
            r4.M()
            r4.L()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uh3.J(com.google.android.gms.internal.ads.zzht):void");
    }

    public void K() throws yd3 {
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void L() throws defpackage.yd3 {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uh3.L():void");
    }

    public void M() {
        this.E = -9223372036854775807L;
        this.F = -1;
        this.G = -1;
        this.P = false;
        this.H = false;
        this.n.clear();
        this.C = null;
        this.D = null;
        this.s = null;
        this.I = false;
        this.L = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.M = false;
        this.J = 0;
        this.K = 0;
        this.k.c = null;
        MediaCodec mediaCodec = this.r;
        if (mediaCodec != null) {
            this.R.b++;
            try {
                mediaCodec.stop();
                try {
                    this.r.release();
                    this.r = null;
                    if (this.q != null) {
                        try {
                            throw null;
                        } finally {
                        }
                    }
                } catch (Throwable th) {
                    this.r = null;
                    if (this.q == null) {
                        throw th;
                    }
                    try {
                        throw null;
                    } finally {
                    }
                }
            } catch (Throwable th2) {
                try {
                    this.r.release();
                    this.r = null;
                    if (this.q == null) {
                        throw th2;
                    }
                    try {
                        throw null;
                    } finally {
                    }
                } catch (Throwable th3) {
                    this.r = null;
                    if (this.q == null) {
                        throw th3;
                    }
                    try {
                        throw null;
                    } finally {
                    }
                }
            }
        }
    }

    public final void N() throws yd3 {
        if (this.K == 2) {
            M();
            L();
        } else {
            this.O = true;
            K();
        }
    }

    @Override // defpackage.xd3
    public void e() {
    }

    @Override // defpackage.xd3
    public void f() {
    }

    @Override // defpackage.xd3
    public void h(long j, boolean z) throws yd3 {
        this.N = false;
        this.O = false;
        if (this.r != null) {
            this.E = -9223372036854775807L;
            this.F = -1;
            this.G = -1;
            this.Q = true;
            this.P = false;
            this.H = false;
            this.n.clear();
            this.A = false;
            this.B = false;
            if (this.u || ((this.x && this.M) || this.K != 0)) {
                M();
                L();
            } else {
                this.r.flush();
                this.L = false;
            }
            if (!this.I || this.p == null) {
                return;
            }
            this.J = 1;
        }
    }

    @Override // defpackage.oe3
    public boolean isReady() {
        boolean z;
        if (this.p != null && !this.P) {
            if (this.g) {
                z = this.h;
            } else {
                ri3 ri3Var = this.e;
                mi3 mi3Var = ri3Var.b;
                z = mi3Var.J || (!mi3Var.s() && mi3Var.s.valueAt(ri3Var.a).c.b());
            }
            if (z || this.G >= 0 || (this.E != -9223372036854775807L && SystemClock.elapsedRealtime() < this.E)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.oe3
    public boolean j() {
        return this.O;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0357 A[Catch: CryptoException -> 0x03c4, TryCatch #5 {CryptoException -> 0x03c4, blocks: (B:197:0x034b, B:199:0x0357, B:200:0x0360, B:202:0x036e, B:209:0x0387, B:211:0x03b4, B:205:0x0377, B:207:0x037b, B:208:0x037f, B:210:0x039b), top: B:263:0x034b }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x036e A[Catch: CryptoException -> 0x03c4, TryCatch #5 {CryptoException -> 0x03c4, blocks: (B:197:0x034b, B:199:0x0357, B:200:0x0360, B:202:0x036e, B:209:0x0387, B:211:0x03b4, B:205:0x0377, B:207:0x037b, B:208:0x037f, B:210:0x039b), top: B:263:0x034b }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x039b A[Catch: CryptoException -> 0x03c4, TryCatch #5 {CryptoException -> 0x03c4, blocks: (B:197:0x034b, B:199:0x0357, B:200:0x0360, B:202:0x036e, B:209:0x0387, B:211:0x03b4, B:205:0x0377, B:207:0x037b, B:208:0x037f, B:210:0x039b), top: B:263:0x034b }] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03d7 A[LOOP:1: B:91:0x019e->B:220:0x03d7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03da A[LOOP:0: B:17:0x0046->B:221:0x03da, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x019e A[EDGE_INSN: B:265:0x019e->B:91:0x019e BREAK  A[LOOP:0: B:17:0x0046->B:221:0x03da], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x03d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x019b A[PHI: r0 r14 r15
      0x019b: PHI (r0v20 int) = (r0v21 int), (r0v24 int), (r0v24 int) binds: [B:87:0x0191, B:84:0x016e, B:85:0x0170] A[DONT_GENERATE, DONT_INLINE]
      0x019b: PHI (r14v2 int) = (r14v3 int), (r14v5 int), (r14v5 int) binds: [B:87:0x0191, B:84:0x016e, B:85:0x0170] A[DONT_GENERATE, DONT_INLINE]
      0x019b: PHI (r15v3 boolean) = (r15v4 boolean), (r15v6 boolean), (r15v6 boolean) binds: [B:87:0x0191, B:84:0x016e, B:85:0x0170] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    @Override // defpackage.oe3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(long r29, long r31) throws android.media.MediaCodec.CryptoException, defpackage.yd3 {
        /*
            Method dump skipped, instructions count: 1130
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uh3.n(long, long):void");
    }

    @Override // defpackage.xd3
    public void y() {
        this.p = null;
        try {
            M();
            try {
                if (this.q == null) {
                } else {
                    throw null;
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                if (this.q == null) {
                    throw th;
                }
                throw null;
            } finally {
            }
        }
    }

    @Override // defpackage.xd3
    public void z(boolean z) throws yd3 {
        this.R = new xf3();
    }
}
