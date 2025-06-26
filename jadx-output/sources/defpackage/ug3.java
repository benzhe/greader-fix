package defpackage;

import android.util.SparseArray;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes.dex */
public final class ug3 implements ig3 {
    public static final byte[] Z = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] a0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    public static final UUID b0 = new UUID(72057594037932032L, -9223371306706625679L);
    public long A;
    public vk3 B;
    public vk3 C;
    public boolean D;
    public int E;
    public long F;
    public long G;
    public int H;
    public int I;
    public int[] J;
    public int K;
    public int L;
    public int M;
    public int N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public byte S;
    public int T;
    public int U;
    public int V;
    public boolean W;
    public boolean X;
    public kg3 Y;
    public final pg3 a;
    public final xg3 b;
    public final SparseArray<vg3> c;
    public final boolean d;
    public final al3 e;
    public final al3 f;
    public final al3 g;
    public final al3 h;
    public final al3 i;
    public final al3 j;
    public final al3 k;
    public final al3 l;
    public final al3 m;
    public ByteBuffer n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public vg3 t;
    public boolean u;
    public int v;
    public long w;
    public boolean x;
    public long y;
    public long z;

    public ug3() {
        pg3 pg3Var = new pg3();
        this.p = -1L;
        this.q = -9223372036854775807L;
        this.r = -9223372036854775807L;
        this.s = -9223372036854775807L;
        this.y = -1L;
        this.z = -1L;
        this.A = -9223372036854775807L;
        this.a = pg3Var;
        pg3Var.d = new wg3(this, null);
        this.d = true;
        this.b = new xg3();
        this.c = new SparseArray<>();
        this.g = new al3(4);
        this.h = new al3(ByteBuffer.allocate(4).putInt(-1).array());
        this.i = new al3(4);
        this.e = new al3(zk3.a);
        this.f = new al3(4);
        this.j = new al3();
        this.k = new al3();
        this.l = new al3(8);
        this.m = new al3();
    }

    public static int[] h(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length << 1, i)];
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x003a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0005 A[SYNTHETIC] */
    @Override // defpackage.ig3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(defpackage.gg3 r9, defpackage.ng3 r10) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r8.W = r0
            r1 = 1
            r2 = 1
        L5:
            if (r2 == 0) goto L3b
            boolean r3 = r8.W
            if (r3 != 0) goto L3b
            pg3 r2 = r8.a
            boolean r2 = r2.b(r9)
            if (r2 == 0) goto L5
            r3 = r9
            eg3 r3 = (defpackage.eg3) r3
            long r3 = r3.c
            boolean r5 = r8.x
            if (r5 == 0) goto L25
            r8.z = r3
            long r3 = r8.y
            r10.a = r3
            r8.x = r0
            goto L35
        L25:
            boolean r3 = r8.u
            if (r3 == 0) goto L37
            long r3 = r8.z
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L37
            r10.a = r3
            r8.z = r5
        L35:
            r3 = 1
            goto L38
        L37:
            r3 = 0
        L38:
            if (r3 == 0) goto L5
            return r1
        L3b:
            if (r2 == 0) goto L3e
            return r0
        L3e:
            r9 = -1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ug3.a(gg3, ng3):int");
    }

    public final int b(gg3 gg3Var, hj3 hj3Var, int i) throws InterruptedException, IOException {
        int iB;
        int iM = this.j.m();
        if (iM > 0) {
            iB = Math.min(i, iM);
            hj3Var.e(this.j, iB);
        } else {
            iB = hj3Var.b(gg3Var, i);
        }
        this.N += iB;
        this.V += iB;
        return iB;
    }

    @Override // defpackage.ig3
    public final void c(kg3 kg3Var) {
        this.Y = kg3Var;
    }

    public final void d(gg3 gg3Var, vg3 vg3Var, int i) throws InterruptedException, IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(vg3Var.a)) {
            byte[] bArr = Z;
            int length = bArr.length + i;
            if (this.k.a() < length) {
                this.k.a = Arrays.copyOf(bArr, length + i);
            }
            ((eg3) gg3Var).c(this.k.a, bArr.length, i, false);
            this.k.h(0);
            this.k.g(length);
            return;
        }
        hj3 hj3Var = vg3Var.O;
        if (!this.O) {
            if (vg3Var.e) {
                this.M &= -1073741825;
                if (!this.P) {
                    ((eg3) gg3Var).c(this.g.a, 0, 1, false);
                    this.N++;
                    byte[] bArr2 = this.g.a;
                    if ((bArr2[0] & 128) == 128) {
                        throw new ne3("Extension bit is set in signal byte");
                    }
                    this.S = bArr2[0];
                    this.P = true;
                }
                byte b = this.S;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.M |= 1073741824;
                    if (!this.Q) {
                        ((eg3) gg3Var).c(this.l.a, 0, 8, false);
                        this.N += 8;
                        this.Q = true;
                        al3 al3Var = this.g;
                        al3Var.a[0] = (byte) ((z ? 128 : 0) | 8);
                        al3Var.h(0);
                        hj3Var.e(this.g, 1);
                        this.V++;
                        this.l.h(0);
                        hj3Var.e(this.l, 8);
                        this.V += 8;
                    }
                    if (z) {
                        if (!this.R) {
                            ((eg3) gg3Var).c(this.g.a, 0, 1, false);
                            this.N++;
                            this.g.h(0);
                            this.T = this.g.d();
                            this.R = true;
                        }
                        int i3 = this.T << 2;
                        this.g.f(i3);
                        ((eg3) gg3Var).c(this.g.a, 0, i3, false);
                        this.N += i3;
                        short s = (short) ((this.T / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.n;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.n = ByteBuffer.allocate(i4);
                        }
                        this.n.position(0);
                        this.n.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.T;
                            if (i5 >= i2) {
                                break;
                            }
                            int iO = this.g.o();
                            if (i5 % 2 == 0) {
                                this.n.putShort((short) (iO - i6));
                            } else {
                                this.n.putInt(iO - i6);
                            }
                            i5++;
                            i6 = iO;
                        }
                        int i7 = (i - this.N) - i6;
                        if (i2 % 2 == 1) {
                            this.n.putInt(i7);
                        } else {
                            this.n.putShort((short) i7);
                            this.n.putInt(0);
                        }
                        this.m.k(this.n.array(), i4);
                        hj3Var.e(this.m, i4);
                        this.V += i4;
                    }
                }
            } else {
                byte[] bArr3 = vg3Var.f;
                if (bArr3 != null) {
                    al3 al3Var2 = this.j;
                    int length2 = bArr3.length;
                    al3Var2.a = bArr3;
                    al3Var2.c = length2;
                    al3Var2.b = 0;
                }
            }
            this.O = true;
        }
        int i8 = i + this.j.c;
        if (!"V_MPEG4/ISO/AVC".equals(vg3Var.a) && !"V_MPEGH/ISO/HEVC".equals(vg3Var.a)) {
            while (true) {
                int i9 = this.N;
                if (i9 >= i8) {
                    break;
                } else {
                    b(gg3Var, hj3Var, i8 - i9);
                }
            }
        } else {
            byte[] bArr4 = this.f.a;
            bArr4[0] = 0;
            bArr4[1] = 0;
            bArr4[2] = 0;
            int i10 = vg3Var.P;
            int i11 = 4 - i10;
            while (this.N < i8) {
                int i12 = this.U;
                if (i12 == 0) {
                    int iMin = Math.min(i10, this.j.m());
                    ((eg3) gg3Var).c(bArr4, i11 + iMin, i10 - iMin, false);
                    if (iMin > 0) {
                        al3 al3Var3 = this.j;
                        System.arraycopy(al3Var3.a, al3Var3.b, bArr4, i11, iMin);
                        al3Var3.b += iMin;
                    }
                    this.N += i10;
                    this.f.h(0);
                    this.U = this.f.o();
                    this.e.h(0);
                    hj3Var.e(this.e, 4);
                    this.V += 4;
                } else {
                    this.U = i12 - b(gg3Var, hj3Var, i12);
                }
            }
        }
        if ("A_VORBIS".equals(vg3Var.a)) {
            this.h.h(0);
            hj3Var.e(this.h, 4);
            this.V += 4;
        }
    }

    @Override // defpackage.ig3
    public final boolean e(gg3 gg3Var) throws InterruptedException, IOException {
        yg3 yg3Var = new yg3();
        eg3 eg3Var = (eg3) gg3Var;
        long j = eg3Var.b;
        long j2 = 1024;
        if (j != -1 && j <= 1024) {
            j2 = j;
        }
        int i = (int) j2;
        eg3Var.b(yg3Var.a.a, 0, 4);
        yg3Var.b = 4;
        for (long jN = yg3Var.a.n(); jN != 440786851; jN = ((jN << 8) & (-256)) | (yg3Var.a.a[0] & 255)) {
            int i2 = yg3Var.b + 1;
            yg3Var.b = i2;
            if (i2 == i) {
                return false;
            }
            eg3Var.b(yg3Var.a.a, 0, 1);
        }
        long jA = yg3Var.a(gg3Var);
        long j3 = yg3Var.b;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (j != -1 && j3 + jA >= j) {
            return false;
        }
        while (true) {
            long j4 = yg3Var.b;
            long j5 = j3 + jA;
            if (j4 >= j5) {
                return j4 == j5;
            }
            if (yg3Var.a(gg3Var) == Long.MIN_VALUE) {
                return false;
            }
            long jA2 = yg3Var.a(gg3Var);
            if (jA2 < 0 || jA2 > 2147483647L) {
                return false;
            }
            if (jA2 != 0) {
                eg3Var.g((int) jA2);
                yg3Var.b = (int) (yg3Var.b + jA2);
            }
        }
    }

    @Override // defpackage.ig3
    public final void f(long j, long j2) {
        this.A = -9223372036854775807L;
        this.E = 0;
        pg3 pg3Var = this.a;
        pg3Var.e = 0;
        pg3Var.b.clear();
        xg3 xg3Var = pg3Var.c;
        xg3Var.b = 0;
        xg3Var.c = 0;
        xg3 xg3Var2 = this.b;
        xg3Var2.b = 0;
        xg3Var2.c = 0;
        k();
    }

    public final void g(vg3 vg3Var, long j) {
        byte[] bytes;
        if ("S_TEXT/UTF8".equals(vg3Var.a)) {
            byte[] bArr = this.k.a;
            long j2 = this.G;
            if (j2 == -9223372036854775807L) {
                bytes = a0;
            } else {
                int i = (int) (j2 / 3600000000L);
                long j3 = j2 - (i * 3600000000L);
                int i2 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i2);
                String str = String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * r4)) / 1000)));
                int i3 = el3.a;
                bytes = str.getBytes(Charset.defaultCharset());
            }
            System.arraycopy(bytes, 0, bArr, 19, 12);
            hj3 hj3Var = vg3Var.O;
            al3 al3Var = this.k;
            hj3Var.e(al3Var, al3Var.c);
            this.V += this.k.c;
        }
        vg3Var.O.c(j, this.M, this.V, 0, vg3Var.g);
        this.W = true;
        k();
    }

    public final void i(gg3 gg3Var, int i) throws InterruptedException, IOException {
        al3 al3Var = this.g;
        if (al3Var.c >= i) {
            return;
        }
        if (al3Var.a() < i) {
            al3 al3Var2 = this.g;
            byte[] bArr = al3Var2.a;
            al3Var2.k(Arrays.copyOf(bArr, Math.max(bArr.length << 1, i)), this.g.c);
        }
        al3 al3Var3 = this.g;
        byte[] bArr2 = al3Var3.a;
        int i2 = al3Var3.c;
        ((eg3) gg3Var).c(bArr2, i2, i - i2, false);
        this.g.g(i);
    }

    public final long j(long j) throws ne3 {
        long j2 = this.q;
        if (j2 != -9223372036854775807L) {
            return el3.b(j, j2, 1000L);
        }
        throw new ne3("Can't scale timecode prior to timecodeScale being set.");
    }

    public final void k() {
        this.N = 0;
        this.V = 0;
        this.U = 0;
        this.O = false;
        this.P = false;
        this.R = false;
        this.T = 0;
        this.S = (byte) 0;
        this.Q = false;
        al3 al3Var = this.j;
        al3Var.b = 0;
        al3Var.c = 0;
    }

    @Override // defpackage.ig3
    public final void release() {
    }
}
