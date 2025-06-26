package defpackage;

import android.media.MediaCodec;
import com.google.android.gms.internal.ads.zzht;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public abstract class xd3 implements oe3 {
    public final int a;
    public qe3 b;
    public int c;
    public int d;
    public ri3 e;
    public long f;
    public boolean g = true;
    public boolean h;

    public xd3(int i) {
        this.a = i;
    }

    @Override // defpackage.ce3
    public void b(int i, Object obj) throws yd3 {
    }

    public abstract void e() throws yd3;

    public abstract void f() throws yd3;

    public final int g(me3 me3Var, zf3 zf3Var, boolean z) {
        int i;
        int i2;
        char c;
        char c2;
        int iE;
        ri3 ri3Var = this.e;
        mi3 mi3Var = ri3Var.b;
        int i3 = ri3Var.a;
        if (mi3Var.y || mi3Var.s()) {
            i = -4;
            i2 = -3;
        } else {
            hj3 hj3VarValueAt = mi3Var.s.valueAt(i3);
            boolean z2 = mi3Var.J;
            long j = mi3Var.G;
            fj3 fj3Var = hj3VarValueAt.c;
            zzht zzhtVar = hj3VarValueAt.i;
            ej3 ej3Var = hj3VarValueAt.d;
            synchronized (fj3Var) {
                if (fj3Var.b()) {
                    if (!z) {
                        zzht[] zzhtVarArr = fj3Var.h;
                        int i4 = fj3Var.k;
                        if (zzhtVarArr[i4] == zzhtVar) {
                            if (zf3Var.c == null) {
                                c = 65531;
                                c2 = 65533;
                            } else {
                                long j2 = fj3Var.f[i4];
                                zf3Var.d = j2;
                                zf3Var.a = fj3Var.e[i4];
                                ej3Var.a = fj3Var.d[i4];
                                ej3Var.b = fj3Var.c[i4];
                                ej3Var.d = fj3Var.g[i4];
                                fj3Var.m = Math.max(fj3Var.m, j2);
                                int i5 = fj3Var.i - 1;
                                fj3Var.i = i5;
                                int i6 = fj3Var.k + 1;
                                fj3Var.k = i6;
                                fj3Var.j++;
                                if (i6 == fj3Var.a) {
                                    fj3Var.k = 0;
                                }
                                ej3Var.c = i5 > 0 ? fj3Var.c[fj3Var.k] : ej3Var.b + ej3Var.a;
                                c = 65531;
                                c2 = 65532;
                            }
                        }
                    }
                    me3Var.a = fj3Var.h[fj3Var.k];
                    c = 65531;
                    c2 = 65531;
                } else if (z2) {
                    zf3Var.a = 4;
                    c = 65531;
                    c2 = 65532;
                } else {
                    zzht zzhtVar2 = fj3Var.q;
                    if (zzhtVar2 == null || (!z && zzhtVar2 == zzhtVar)) {
                        c = 65531;
                        c2 = 65533;
                    } else {
                        me3Var.a = zzhtVar2;
                        c = 65531;
                        c2 = 65531;
                    }
                }
            }
            if (c2 == c) {
                hj3VarValueAt.i = me3Var.a;
                i = -4;
                i2 = -5;
            } else if (c2 != 65532) {
                if (c2 != 65533) {
                    throw new IllegalStateException();
                }
                i = -4;
                i2 = -3;
            } else {
                if (!zf3Var.d()) {
                    if (zf3Var.d < j) {
                        zf3Var.a |= Integer.MIN_VALUE;
                    }
                    if (zf3Var.b(1073741824)) {
                        ej3 ej3Var2 = hj3VarValueAt.d;
                        long j3 = ej3Var2.b;
                        hj3VarValueAt.e.f(1);
                        hj3VarValueAt.d(j3, hj3VarValueAt.e.a, 1);
                        long j4 = j3 + 1;
                        byte b = hj3VarValueAt.e.a[0];
                        boolean z3 = (b & 128) != 0;
                        int i7 = b & Byte.MAX_VALUE;
                        wf3 wf3Var = zf3Var.b;
                        if (wf3Var.a == null) {
                            wf3Var.a = new byte[16];
                        }
                        hj3VarValueAt.d(j4, wf3Var.a, i7);
                        long j5 = j4 + i7;
                        if (z3) {
                            hj3VarValueAt.e.f(2);
                            hj3VarValueAt.d(j5, hj3VarValueAt.e.a, 2);
                            j5 += 2;
                            iE = hj3VarValueAt.e.e();
                        } else {
                            iE = 1;
                        }
                        wf3 wf3Var2 = zf3Var.b;
                        int[] iArr = wf3Var2.d;
                        if (iArr == null || iArr.length < iE) {
                            iArr = new int[iE];
                        }
                        int[] iArr2 = wf3Var2.e;
                        if (iArr2 == null || iArr2.length < iE) {
                            iArr2 = new int[iE];
                        }
                        if (z3) {
                            int i8 = iE * 6;
                            hj3VarValueAt.e.f(i8);
                            hj3VarValueAt.d(j5, hj3VarValueAt.e.a, i8);
                            j5 += i8;
                            hj3VarValueAt.e.h(0);
                            for (int i9 = 0; i9 < iE; i9++) {
                                iArr[i9] = hj3VarValueAt.e.e();
                                iArr2[i9] = hj3VarValueAt.e.o();
                            }
                        } else {
                            iArr[0] = 0;
                            iArr2[0] = ej3Var2.a - ((int) (j5 - ej3Var2.b));
                        }
                        qg3 qg3Var = ej3Var2.d;
                        wf3 wf3Var3 = zf3Var.b;
                        byte[] bArr = qg3Var.a;
                        byte[] bArr2 = wf3Var3.a;
                        wf3Var3.f = iE;
                        wf3Var3.d = iArr;
                        wf3Var3.e = iArr2;
                        wf3Var3.b = bArr;
                        wf3Var3.a = bArr2;
                        wf3Var3.c = 1;
                        int i10 = el3.a;
                        if (i10 >= 16) {
                            MediaCodec.CryptoInfo cryptoInfo = wf3Var3.g;
                            cryptoInfo.numSubSamples = iE;
                            cryptoInfo.numBytesOfClearData = iArr;
                            cryptoInfo.numBytesOfEncryptedData = iArr2;
                            cryptoInfo.key = bArr;
                            cryptoInfo.iv = bArr2;
                            cryptoInfo.mode = 1;
                            if (i10 >= 24) {
                                yf3 yf3Var = wf3Var3.h;
                                yf3Var.b.set(0, 0);
                                yf3Var.a.setPattern(yf3Var.b);
                            }
                        }
                        long j6 = ej3Var2.b;
                        int i11 = (int) (j5 - j6);
                        ej3Var2.b = j6 + i11;
                        ej3Var2.a -= i11;
                    }
                    int i12 = hj3VarValueAt.d.a;
                    ByteBuffer byteBuffer = zf3Var.c;
                    if (byteBuffer == null) {
                        zf3Var.c(i12);
                        throw null;
                    }
                    int iCapacity = byteBuffer.capacity();
                    int iPosition = zf3Var.c.position() + i12;
                    if (iCapacity < iPosition) {
                        zf3Var.c(iPosition);
                        throw null;
                    }
                    ej3 ej3Var3 = hj3VarValueAt.d;
                    long j7 = ej3Var3.b;
                    ByteBuffer byteBuffer2 = zf3Var.c;
                    int i13 = ej3Var3.a;
                    hj3VarValueAt.i(j7);
                    while (i13 > 0) {
                        int i14 = (int) (j7 - hj3VarValueAt.g.a);
                        int iMin = Math.min(i13, hj3VarValueAt.b - i14);
                        dk3 dk3Var = hj3VarValueAt.g.d;
                        byteBuffer2.put(dk3Var.a, i14 + 0, iMin);
                        j7 += iMin;
                        i13 -= iMin;
                        if (j7 == hj3VarValueAt.g.b) {
                            hj3VarValueAt.a.a(dk3Var);
                            hj3VarValueAt.g = hj3VarValueAt.g.a();
                        }
                    }
                    hj3VarValueAt.i(hj3VarValueAt.d.c);
                }
                i = -4;
                i2 = -4;
            }
        }
        if (i2 == i) {
            if (zf3Var.d()) {
                this.g = true;
                if (this.h) {
                    return i;
                }
                return -3;
            }
            zf3Var.d += this.f;
        } else if (i2 == -5) {
            zzht zzhtVar3 = me3Var.a;
            long j8 = zzhtVar3.A;
            if (j8 != Long.MAX_VALUE) {
                me3Var.a = zzhtVar3.g(j8 + this.f);
            }
        }
        return i2;
    }

    @Override // defpackage.oe3
    public final int getState() {
        return this.d;
    }

    public abstract void h(long j, boolean z) throws yd3;

    @Override // defpackage.oe3
    public final void i(int i) {
        this.c = i;
    }

    @Override // defpackage.oe3
    public final xd3 k() {
        return this;
    }

    @Override // defpackage.oe3
    public final void l(long j) throws yd3 {
        this.h = false;
        this.g = false;
        h(j, false);
    }

    @Override // defpackage.oe3
    public xk3 m() {
        return null;
    }

    @Override // defpackage.oe3
    public final void o(zzht[] zzhtVarArr, ri3 ri3Var, long j) throws yd3 {
        c50.D(!this.h);
        this.e = ri3Var;
        this.g = false;
        this.f = j;
        x(zzhtVarArr, j);
    }

    @Override // defpackage.oe3
    public final void p() throws IOException {
        this.e.b.m.b();
    }

    @Override // defpackage.oe3
    public final void q() {
        this.h = true;
    }

    @Override // defpackage.oe3
    public final boolean r() {
        return this.h;
    }

    @Override // defpackage.oe3
    public final void s() {
        c50.D(this.d == 1);
        this.d = 0;
        this.e = null;
        this.h = false;
        y();
    }

    @Override // defpackage.oe3
    public final void start() throws yd3 {
        c50.D(this.d == 1);
        this.d = 2;
        e();
    }

    @Override // defpackage.oe3
    public final void stop() throws yd3 {
        c50.D(this.d == 2);
        this.d = 1;
        f();
    }

    @Override // defpackage.oe3
    public final void t(qe3 qe3Var, zzht[] zzhtVarArr, ri3 ri3Var, long j, boolean z, long j2) throws yd3 {
        c50.D(this.d == 0);
        this.b = qe3Var;
        this.d = 1;
        z(z);
        c50.D(!this.h);
        this.e = ri3Var;
        this.g = false;
        this.f = j2;
        x(zzhtVarArr, j2);
        h(j, z);
    }

    @Override // defpackage.oe3
    public final ri3 u() {
        return this.e;
    }

    @Override // defpackage.oe3
    public final int v() {
        return this.a;
    }

    @Override // defpackage.oe3
    public final boolean w() {
        return this.g;
    }

    public void x(zzht[] zzhtVarArr, long j) throws yd3 {
    }

    public abstract void y();

    public abstract void z(boolean z) throws yd3;
}
