package defpackage;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class hf3 {
    public long A;
    public Method B;
    public int C;
    public long D;
    public long E;
    public int F;
    public long G;
    public long H;
    public int I;
    public int J;
    public long K;
    public long L;
    public long M;
    public float N;
    public xe3[] O;
    public ByteBuffer[] P;
    public ByteBuffer Q;
    public ByteBuffer R;
    public byte[] S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public int X;
    public boolean Y;
    public long Z;
    public final nf3 a;
    public final uf3 b;
    public final xe3[] c;
    public final qf3 d;
    public final ConditionVariable e = new ConditionVariable(true);
    public final long[] f;
    public final jf3 g;
    public final LinkedList<mf3> h;
    public AudioTrack i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public boolean o;
    public int p;
    public long q;
    public pe3 r;
    public pe3 s;
    public long t;
    public long u;
    public int v;
    public int w;
    public long x;
    public long y;
    public boolean z;

    public hf3(xe3[] xe3VarArr, qf3 qf3Var) {
        this.d = qf3Var;
        if (el3.a >= 18) {
            try {
                this.B = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        if (el3.a >= 19) {
            this.g = new if3();
        } else {
            this.g = new jf3(null);
        }
        nf3 nf3Var = new nf3();
        this.a = nf3Var;
        uf3 uf3Var = new uf3();
        this.b = uf3Var;
        xe3[] xe3VarArr2 = new xe3[xe3VarArr.length + 3];
        this.c = xe3VarArr2;
        xe3VarArr2[0] = new tf3();
        xe3VarArr2[1] = nf3Var;
        System.arraycopy(xe3VarArr, 0, xe3VarArr2, 2, xe3VarArr.length);
        xe3VarArr2[xe3VarArr.length + 2] = uf3Var;
        this.f = new long[10];
        this.N = 1.0f;
        this.J = 0;
        this.n = 3;
        this.X = 0;
        this.s = pe3.d;
        this.U = -1;
        this.O = new xe3[0];
        this.P = new ByteBuffer[0];
        this.h = new LinkedList<>();
    }

    public final boolean a() {
        return this.i != null;
    }

    public final void b() throws IllegalStateException {
        this.W = true;
        if (a()) {
            this.L = System.nanoTime() / 1000;
            this.i.play();
        }
    }

    public final void c() throws IllegalStateException {
        if (a()) {
            this.D = 0L;
            this.E = 0L;
            this.G = 0L;
            this.H = 0L;
            this.I = 0;
            pe3 pe3Var = this.r;
            if (pe3Var != null) {
                this.s = pe3Var;
                this.r = null;
            } else if (!this.h.isEmpty()) {
                this.s = this.h.getLast().a;
            }
            this.h.clear();
            this.t = 0L;
            this.u = 0L;
            this.Q = null;
            this.R = null;
            int i = 0;
            while (true) {
                xe3[] xe3VarArr = this.O;
                if (i >= xe3VarArr.length) {
                    break;
                }
                xe3 xe3Var = xe3VarArr[i];
                xe3Var.flush();
                this.P[i] = xe3Var.e();
                i++;
            }
            this.V = false;
            this.U = -1;
            this.J = 0;
            this.M = 0L;
            this.x = 0L;
            this.w = 0;
            this.v = 0;
            this.y = 0L;
            this.z = false;
            this.A = 0L;
            if (this.i.getPlayState() == 3) {
                this.i.pause();
            }
            AudioTrack audioTrack = this.i;
            this.i = null;
            this.g.a(null, false);
            this.e.close();
            new gf3(this, audioTrack).start();
        }
    }

    public final void d(String str, int i, int i2, int i3, int[] iArr) throws IllegalStateException, lf3 {
        int iB;
        int iA;
        boolean zD;
        int i4;
        int iMax;
        boolean z = !"audio/raw".equals(str);
        if (z) {
            str.hashCode();
            str.hashCode();
            switch (str) {
                case "audio/vnd.dts":
                    iB = 7;
                    break;
                case "audio/ac3":
                    iB = 5;
                    break;
                case "audio/eac3":
                    iB = 6;
                    break;
                case "audio/vnd.dts.hd":
                    iB = 8;
                    break;
                default:
                    iB = 0;
                    break;
            }
        } else {
            iB = i3;
        }
        if (z) {
            iA = i;
            zD = false;
        } else {
            iA = i;
            this.C = el3.i(i3, iA);
            this.a.d = iArr;
            zD = false;
            for (xe3 xe3Var : this.c) {
                try {
                    zD |= xe3Var.d(i2, iA, iB);
                    if (xe3Var.isActive()) {
                        iA = xe3Var.a();
                        iB = xe3Var.b();
                    }
                } catch (we3 e) {
                    throw new lf3(e);
                }
            }
            if (zD) {
                k();
            }
        }
        switch (iA) {
            case 1:
                i4 = 4;
                break;
            case 2:
                i4 = 12;
                break;
            case 3:
                i4 = 28;
                break;
            case 4:
                i4 = 204;
                break;
            case 5:
                i4 = 220;
                break;
            case 6:
                i4 = 252;
                break;
            case 7:
                i4 = 1276;
                break;
            case 8:
                i4 = zd3.a;
                break;
            default:
                throw new lf3(jo.M(38, "Unsupported channel count: ", iA));
        }
        int i5 = el3.a;
        if (i5 <= 23 && "foster".equals(el3.b) && "NVIDIA".equals(el3.c)) {
            if (iA == 3 || iA == 5) {
                i4 = 252;
            } else if (iA == 7) {
                i4 = zd3.a;
            }
        }
        if (i5 <= 25 && "fugu".equals(el3.b) && z && iA == 1) {
            i4 = 12;
        }
        if (!zD && a() && this.l == iB && this.j == i2 && this.k == i4) {
            return;
        }
        c();
        this.l = iB;
        this.o = z;
        this.j = i2;
        this.k = i4;
        if (!z) {
            iB = 2;
        }
        this.m = iB;
        this.F = el3.i(2, iA);
        if (z) {
            int i6 = this.m;
            iMax = (i6 == 5 || i6 == 6) ? 20480 : 49152;
        } else {
            int minBufferSize = AudioTrack.getMinBufferSize(i2, i4, this.m);
            c50.D(minBufferSize != -2);
            int i7 = minBufferSize << 2;
            int iJ = this.F * ((int) j(250000L));
            iMax = (int) Math.max(minBufferSize, j(750000L) * this.F);
            if (i7 < iJ) {
                iMax = iJ;
            } else if (i7 <= iMax) {
                iMax = i7;
            }
        }
        this.p = iMax;
        this.q = z ? -9223372036854775807L : i(iMax / this.F);
        e(this.s);
    }

    public final pe3 e(pe3 pe3Var) {
        if (this.o) {
            pe3 pe3Var2 = pe3.d;
            this.s = pe3Var2;
            return pe3Var2;
        }
        uf3 uf3Var = this.b;
        float f = pe3Var.a;
        Objects.requireNonNull(uf3Var);
        int i = el3.a;
        float fMax = Math.max(0.1f, Math.min(f, 8.0f));
        uf3Var.e = fMax;
        uf3 uf3Var2 = this.b;
        float f2 = pe3Var.b;
        Objects.requireNonNull(uf3Var2);
        uf3Var2.f = Math.max(0.1f, Math.min(f2, 8.0f));
        pe3 pe3Var3 = new pe3(fMax, f2);
        pe3 pe3Var4 = this.r;
        if (pe3Var4 == null) {
            pe3Var4 = !this.h.isEmpty() ? this.h.getLast().a : this.s;
        }
        if (!pe3Var3.equals(pe3Var4)) {
            if (a()) {
                this.r = pe3Var3;
            } else {
                this.s = pe3Var3;
            }
        }
        return this.s;
    }

    public final boolean f(ByteBuffer byteBuffer, long j) throws IllegalStateException, kf3, of3 {
        int i;
        int i2;
        ByteBuffer byteBuffer2 = this.Q;
        c50.j(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!a()) {
            this.e.block();
            if (this.X == 0) {
                this.i = new AudioTrack(this.n, this.j, this.k, this.m, this.p, 1);
            } else {
                this.i = new AudioTrack(this.n, this.j, this.k, this.m, this.p, 1, this.X);
            }
            int state = this.i.getState();
            if (state != 1) {
                try {
                    this.i.release();
                } catch (Exception unused) {
                } finally {
                    this.i = null;
                }
                throw new kf3(state, this.j, this.k, this.p);
            }
            int audioSessionId = this.i.getAudioSessionId();
            if (this.X != audioSessionId) {
                this.X = audioSessionId;
                ye3 ye3Var = this.d.a.T;
                if (ye3Var.b != null) {
                    ye3Var.a.post(new ef3(ye3Var, audioSessionId));
                }
            }
            this.g.a(this.i, p());
            n();
            this.Y = false;
            if (this.W) {
                b();
            }
        }
        if (p()) {
            if (this.i.getPlayState() == 2) {
                this.Y = false;
                return false;
            }
            if (this.i.getPlayState() == 1 && this.g.e() != 0) {
                return false;
            }
        }
        boolean z = this.Y;
        boolean zM = m();
        this.Y = zM;
        if (z && !zM && this.i.getPlayState() != 1) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.Z;
            qf3 qf3Var = this.d;
            int i3 = this.p;
            long jA = zd3.a(this.q);
            ye3 ye3Var2 = qf3Var.a.T;
            if (ye3Var2.b != null) {
                ye3Var2.a.post(new cf3(ye3Var2, i3, jA, jElapsedRealtime));
            }
        }
        if (this.Q == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.o && this.I == 0) {
                int i4 = this.m;
                if (i4 == 7 || i4 == 8) {
                    int iPosition = byteBuffer.position();
                    i2 = ((((byteBuffer.get(iPosition + 5) & 252) >> 2) | ((byteBuffer.get(iPosition + 4) & 1) << 6)) + 1) << 5;
                } else if (i4 == 5) {
                    i2 = 1536;
                } else {
                    if (i4 != 6) {
                        throw new IllegalStateException(jo.M(38, "Unexpected audio encoding: ", i4));
                    }
                    i2 = (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? ve3.a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] : 6) * RecyclerView.a0.FLAG_TMP_DETACHED;
                }
                this.I = i2;
            }
            if (this.r != null) {
                if (!l()) {
                    return false;
                }
                this.h.add(new mf3(this.r, Math.max(0L, j), i(o()), null));
                this.r = null;
                k();
            }
            if (this.J == 0) {
                this.K = Math.max(0L, j);
                this.J = 1;
            } else {
                long jI = i(this.o ? this.E : this.D / this.C) + this.K;
                if (this.J != 1 || Math.abs(jI - j) <= 200000) {
                    i = 2;
                } else {
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Discontinuity detected [expected ");
                    sb.append(jI);
                    sb.append(", got ");
                    sb.append(j);
                    sb.append("]");
                    Log.e("AudioTrack", sb.toString());
                    i = 2;
                    this.J = 2;
                }
                if (this.J == i) {
                    this.K = (j - jI) + this.K;
                    this.J = 1;
                    this.d.a.Z = true;
                }
            }
            if (this.o) {
                this.E += this.I;
            } else {
                this.D += byteBuffer.remaining();
            }
            this.Q = byteBuffer;
        }
        if (this.o) {
            g(this.Q, j);
        } else {
            h(j);
        }
        if (this.Q.hasRemaining()) {
            return false;
        }
        this.Q = null;
        return true;
    }

    public final boolean g(ByteBuffer byteBuffer, long j) throws of3 {
        int iWrite;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        ByteBuffer byteBuffer2 = this.R;
        if (byteBuffer2 != null) {
            c50.j(byteBuffer2 == byteBuffer);
        } else {
            this.R = byteBuffer;
            if (el3.a < 21) {
                int iRemaining = byteBuffer.remaining();
                byte[] bArr = this.S;
                if (bArr == null || bArr.length < iRemaining) {
                    this.S = new byte[iRemaining];
                }
                int iPosition = byteBuffer.position();
                byteBuffer.get(this.S, 0, iRemaining);
                byteBuffer.position(iPosition);
                this.T = 0;
            }
        }
        int iRemaining2 = byteBuffer.remaining();
        if (el3.a < 21) {
            int iE = this.p - ((int) (this.G - (this.g.e() * this.F)));
            if (iE > 0) {
                iWrite = this.i.write(this.S, this.T, Math.min(iRemaining2, iE));
                if (iWrite > 0) {
                    this.T += iWrite;
                    byteBuffer.position(byteBuffer.position() + iWrite);
                }
            } else {
                iWrite = 0;
            }
        } else {
            iWrite = this.i.write(byteBuffer, iRemaining2, 1);
        }
        this.Z = SystemClock.elapsedRealtime();
        if (iWrite < 0) {
            throw new of3(iWrite);
        }
        boolean z = this.o;
        if (!z) {
            this.G += iWrite;
        }
        if (iWrite != iRemaining2) {
            return false;
        }
        if (z) {
            this.H += this.I;
        }
        this.R = null;
        return true;
    }

    public final void h(long j) throws of3 {
        ByteBuffer byteBuffer;
        int length = this.O.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.P[i - 1];
            } else {
                byteBuffer = this.Q;
                if (byteBuffer == null) {
                    byteBuffer = xe3.a;
                }
            }
            if (i == length) {
                g(byteBuffer, j);
            } else {
                xe3 xe3Var = this.O[i];
                xe3Var.c(byteBuffer);
                ByteBuffer byteBufferE = xe3Var.e();
                this.P[i] = byteBufferE;
                if (byteBufferE.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i--;
            }
        }
    }

    public final long i(long j) {
        return (j * 1000000) / this.j;
    }

    public final long j(long j) {
        return (j * this.j) / 1000000;
    }

    public final void k() {
        ArrayList arrayList = new ArrayList();
        for (xe3 xe3Var : this.c) {
            if (xe3Var.isActive()) {
                arrayList.add(xe3Var);
            } else {
                xe3Var.flush();
            }
        }
        int size = arrayList.size();
        this.O = (xe3[]) arrayList.toArray(new xe3[size]);
        this.P = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            xe3 xe3Var2 = this.O[i];
            xe3Var2.flush();
            this.P[i] = xe3Var2.e();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0032 -> B:9:0x0012). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean l() throws defpackage.of3 {
        /*
            r9 = this;
            int r0 = r9.U
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L14
            boolean r0 = r9.o
            if (r0 == 0) goto Lf
            xe3[] r0 = r9.O
            int r0 = r0.length
            goto L10
        Lf:
            r0 = 0
        L10:
            r9.U = r0
        L12:
            r0 = 1
            goto L15
        L14:
            r0 = 0
        L15:
            int r4 = r9.U
            xe3[] r5 = r9.O
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L38
            r4 = r5[r4]
            if (r0 == 0) goto L28
            r4.f()
        L28:
            r9.h(r7)
            boolean r0 = r4.j()
            if (r0 != 0) goto L32
            return r3
        L32:
            int r0 = r9.U
            int r0 = r0 + r2
            r9.U = r0
            goto L12
        L38:
            java.nio.ByteBuffer r0 = r9.R
            if (r0 == 0) goto L44
            r9.g(r0, r7)
            java.nio.ByteBuffer r0 = r9.R
            if (r0 == 0) goto L44
            return r3
        L44:
            r9.U = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hf3.l():boolean");
    }

    public final boolean m() {
        if (a()) {
            if (o() <= this.g.e()) {
                if (p() && this.i.getPlayState() == 2 && this.i.getPlaybackHeadPosition() == 0) {
                }
            }
            return true;
        }
        return false;
    }

    public final void n() {
        if (a()) {
            if (el3.a >= 21) {
                this.i.setVolume(this.N);
                return;
            }
            AudioTrack audioTrack = this.i;
            float f = this.N;
            audioTrack.setStereoVolume(f, f);
        }
    }

    public final long o() {
        return this.o ? this.H : this.G / this.F;
    }

    public final boolean p() {
        if (el3.a >= 23) {
            return false;
        }
        int i = this.m;
        return i == 5 || i == 6;
    }
}
