package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Arrays;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public final class xs7 implements at7, zs7, Cloneable, ByteChannel {
    public qt7 e;
    public long f;

    public static final class a implements Closeable {
        public xs7 e;
        public boolean f;
        public qt7 g;
        public byte[] i;
        public long h = -1;
        public int j = -1;
        public int k = -1;

        public final long a(long j) {
            xs7 xs7Var = this.e;
            if (xs7Var == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (!this.f) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
            }
            long j2 = xs7Var.f;
            int i = 1;
            if (j <= j2) {
                if (!(j >= 0)) {
                    throw new IllegalArgumentException(jo.j("newSize < 0: ", j).toString());
                }
                long j3 = j2 - j;
                while (true) {
                    if (j3 <= 0) {
                        break;
                    }
                    qt7 qt7Var = xs7Var.e;
                    im7.c(qt7Var);
                    qt7 qt7Var2 = qt7Var.g;
                    im7.c(qt7Var2);
                    int i2 = qt7Var2.c;
                    long j4 = i2 - qt7Var2.b;
                    if (j4 > j3) {
                        qt7Var2.c = i2 - ((int) j3);
                        break;
                    }
                    xs7Var.e = qt7Var2.a();
                    rt7.a(qt7Var2);
                    j3 -= j4;
                }
                this.g = null;
                this.h = j;
                this.i = null;
                this.j = -1;
                this.k = -1;
            } else if (j > j2) {
                long j5 = j - j2;
                boolean z = true;
                while (j5 > 0) {
                    qt7 qt7VarE = xs7Var.E(i);
                    int iMin = (int) Math.min(j5, 8192 - qt7VarE.c);
                    int i3 = qt7VarE.c + iMin;
                    qt7VarE.c = i3;
                    j5 -= iMin;
                    if (z) {
                        this.g = qt7VarE;
                        this.h = j2;
                        this.i = qt7VarE.a;
                        this.j = i3 - iMin;
                        this.k = i3;
                        z = false;
                    }
                    i = 1;
                }
            }
            xs7Var.f = j;
            return j2;
        }

        public final int b(long j) {
            long j2;
            qt7 qt7Var;
            xs7 xs7Var = this.e;
            if (xs7Var == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (j >= -1) {
                long j3 = xs7Var.f;
                if (j <= j3) {
                    if (j == -1 || j == j3) {
                        this.g = null;
                        this.h = j;
                        this.i = null;
                        this.j = -1;
                        this.k = -1;
                        return -1;
                    }
                    qt7 qt7Var2 = xs7Var.e;
                    qt7 qt7Var3 = this.g;
                    if (qt7Var3 != null) {
                        long j4 = this.h;
                        int i = this.j;
                        im7.c(qt7Var3);
                        j2 = j4 - (i - qt7Var3.b);
                        if (j2 > j) {
                            qt7Var = qt7Var2;
                            qt7Var2 = this.g;
                            j3 = j2;
                            j2 = 0;
                        } else {
                            qt7Var = this.g;
                        }
                    } else {
                        j2 = 0;
                        qt7Var = qt7Var2;
                    }
                    if (j3 - j > j - j2) {
                        while (true) {
                            im7.c(qt7Var);
                            int i2 = qt7Var.c;
                            int i3 = qt7Var.b;
                            if (j < (i2 - i3) + j2) {
                                break;
                            }
                            j2 += i2 - i3;
                            qt7Var = qt7Var.f;
                        }
                    } else {
                        while (j3 > j) {
                            im7.c(qt7Var2);
                            qt7Var2 = qt7Var2.g;
                            im7.c(qt7Var2);
                            j3 -= qt7Var2.c - qt7Var2.b;
                        }
                        qt7Var = qt7Var2;
                        j2 = j3;
                    }
                    if (this.f) {
                        im7.c(qt7Var);
                        if (qt7Var.d) {
                            byte[] bArr = qt7Var.a;
                            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                            im7.d(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                            qt7 qt7Var4 = new qt7(bArrCopyOf, qt7Var.b, qt7Var.c, false, true);
                            if (xs7Var.e == qt7Var) {
                                xs7Var.e = qt7Var4;
                            }
                            qt7Var.b(qt7Var4);
                            qt7 qt7Var5 = qt7Var4.g;
                            im7.c(qt7Var5);
                            qt7Var5.a();
                            qt7Var = qt7Var4;
                        }
                    }
                    this.g = qt7Var;
                    this.h = j;
                    im7.c(qt7Var);
                    this.i = qt7Var.a;
                    int i4 = qt7Var.b + ((int) (j - j2));
                    this.j = i4;
                    int i5 = qt7Var.c;
                    this.k = i5;
                    return i5 - i4;
                }
            }
            String str = String.format("offset=%s > size=%s", Arrays.copyOf(new Object[]{Long.valueOf(j), Long.valueOf(xs7Var.f)}, 2));
            im7.d(str, "java.lang.String.format(format, *args)");
            throw new ArrayIndexOutOfBoundsException(str);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!(this.e != null)) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            this.e = null;
            this.g = null;
            this.h = -1L;
            this.i = null;
            this.j = -1;
            this.k = -1;
        }
    }

    public final bt7 D(int i) {
        if (i == 0) {
            return bt7.h;
        }
        n56.u(this.f, 0L, i);
        qt7 qt7Var = this.e;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            im7.c(qt7Var);
            int i5 = qt7Var.c;
            int i6 = qt7Var.b;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            qt7Var = qt7Var.f;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        qt7 qt7Var2 = this.e;
        int i7 = 0;
        while (i2 < i) {
            im7.c(qt7Var2);
            bArr[i7] = qt7Var2.a;
            i2 += qt7Var2.c - qt7Var2.b;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = qt7Var2.b;
            qt7Var2.d = true;
            i7++;
            qt7Var2 = qt7Var2.f;
        }
        return new st7(bArr, iArr);
    }

    @Override // defpackage.at7
    public void D0(long j) throws EOFException {
        if (this.f < j) {
            throw new EOFException();
        }
    }

    public final qt7 E(int i) {
        if (!(i >= 1 && i <= 8192)) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        qt7 qt7Var = this.e;
        if (qt7Var == null) {
            qt7 qt7VarB = rt7.b();
            this.e = qt7VarB;
            qt7VarB.g = qt7VarB;
            qt7VarB.f = qt7VarB;
            return qt7VarB;
        }
        im7.c(qt7Var);
        qt7 qt7Var2 = qt7Var.g;
        im7.c(qt7Var2);
        if (qt7Var2.c + i <= 8192 && qt7Var2.e) {
            return qt7Var2;
        }
        qt7 qt7VarB2 = rt7.b();
        qt7Var2.b(qt7VarB2);
        return qt7VarB2;
    }

    public xs7 F(bt7 bt7Var) {
        im7.e(bt7Var, "byteString");
        bt7Var.P(this, 0, bt7Var.t());
        return this;
    }

    @Override // defpackage.at7
    public byte[] G() {
        return l0(this.f);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a1 A[EDGE_INSN: B:43:0x00a1->B:37:0x00a1 BREAK  A[LOOP:0: B:5:0x000b->B:45:?], SYNTHETIC] */
    @Override // defpackage.at7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long G0() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.f
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La8
            r0 = 0
            r1 = 0
            r4 = r2
        Lb:
            qt7 r6 = r15.e
            defpackage.im7.c(r6)
            byte[] r7 = r6.a
            int r8 = r6.b
            int r9 = r6.c
        L16:
            if (r8 >= r9) goto L8d
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L27
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L27
            int r11 = r10 - r11
            goto L40
        L27:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L32
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L32
            goto L3c
        L32:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L72
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L72
        L3c:
            int r11 = r10 - r11
            int r11 = r11 + 10
        L40:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L50
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L16
        L50:
            xs7 r0 = new xs7
            r0.<init>()
            r0.c0(r4)
            r0.Q(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Number too large: "
            java.lang.StringBuilder r2 = defpackage.jo.z(r2)
            java.lang.String r0 = r0.t()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L72:
            if (r0 == 0) goto L76
            r1 = 1
            goto L8d
        L76:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r1 = defpackage.jo.z(r1)
            java.lang.String r2 = defpackage.n56.t2(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8d:
            if (r8 != r9) goto L99
            qt7 r7 = r6.a()
            r15.e = r7
            defpackage.rt7.a(r6)
            goto L9b
        L99:
            r6.b = r8
        L9b:
            if (r1 != 0) goto La1
            qt7 r6 = r15.e
            if (r6 != 0) goto Lb
        La1:
            long r1 = r15.f
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.f = r1
            return r4
        La8:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xs7.G0():long");
    }

    public xs7 I(byte[] bArr) {
        im7.e(bArr, "source");
        L(bArr, 0, bArr.length);
        return this;
    }

    @Override // defpackage.at7
    public boolean J() {
        return this.f == 0;
    }

    @Override // defpackage.at7
    public int J0(lt7 lt7Var) throws EOFException {
        im7.e(lt7Var, "options");
        int iC = xt7.c(this, lt7Var, false);
        if (iC == -1) {
            return -1;
        }
        skip(lt7Var.e[iC].t());
        return iC;
    }

    @Override // defpackage.zs7
    public /* bridge */ /* synthetic */ zs7 K(int i) {
        Q(i);
        return this;
    }

    public xs7 L(byte[] bArr, int i, int i2) {
        im7.e(bArr, "source");
        long j = i2;
        n56.u(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            qt7 qt7VarE = E(1);
            int iMin = Math.min(i3 - i, 8192 - qt7VarE.c);
            int i4 = i + iMin;
            ek7.b(bArr, qt7VarE.a, qt7VarE.c, i, i4);
            qt7VarE.c += iMin;
            i = i4;
        }
        this.f += j;
        return this;
    }

    @Override // defpackage.at7
    public void N(xs7 xs7Var, long j) throws EOFException {
        im7.e(xs7Var, "sink");
        long j2 = this.f;
        if (j2 >= j) {
            xs7Var.write(this, j);
        } else {
            xs7Var.write(this, j2);
            throw new EOFException();
        }
    }

    @Override // defpackage.zs7
    public zs7 O() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a7 A[EDGE_INSN: B:48:0x00a7->B:38:0x00a7 BREAK  A[LOOP:0: B:5:0x000f->B:50:?], SYNTHETIC] */
    @Override // defpackage.at7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long P() throws java.io.EOFException {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.f
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto Lb2
            r1 = -7
            r5 = 0
            r6 = 0
            r7 = 0
        Lf:
            qt7 r8 = r0.e
            defpackage.im7.c(r8)
            byte[] r9 = r8.a
            int r10 = r8.b
            int r11 = r8.c
        L1a:
            if (r10 >= r11) goto L93
            r12 = r9[r10]
            r13 = 48
            byte r13 = (byte) r13
            if (r12 < r13) goto L68
            r14 = 57
            byte r14 = (byte) r14
            if (r12 > r14) goto L68
            int r13 = r13 - r12
            r14 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r16 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1))
            if (r16 < 0) goto L41
            if (r16 != 0) goto L3a
            long r14 = (long) r13
            int r16 = (r14 > r1 ? 1 : (r14 == r1 ? 0 : -1))
            if (r16 >= 0) goto L3a
            goto L41
        L3a:
            r14 = 10
            long r3 = r3 * r14
            long r12 = (long) r13
            long r3 = r3 + r12
            goto L73
        L41:
            xs7 r1 = new xs7
            r1.<init>()
            r1.E0(r3)
            r1.Q(r12)
            if (r6 != 0) goto L51
            r1.readByte()
        L51:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.String r3 = "Number too large: "
            java.lang.StringBuilder r3 = defpackage.jo.z(r3)
            java.lang.String r1 = r1.t()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L68:
            r13 = 45
            byte r13 = (byte) r13
            if (r12 != r13) goto L78
            if (r5 != 0) goto L78
            r12 = 1
            long r1 = r1 - r12
            r6 = 1
        L73:
            int r10 = r10 + 1
            int r5 = r5 + 1
            goto L1a
        L78:
            if (r5 == 0) goto L7c
            r7 = 1
            goto L93
        L7c:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            java.lang.StringBuilder r2 = defpackage.jo.z(r2)
            java.lang.String r3 = defpackage.n56.t2(r12)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L93:
            if (r10 != r11) goto L9f
            qt7 r9 = r8.a()
            r0.e = r9
            defpackage.rt7.a(r8)
            goto La1
        L9f:
            r8.b = r10
        La1:
            if (r7 != 0) goto La7
            qt7 r8 = r0.e
            if (r8 != 0) goto Lf
        La7:
            long r1 = r0.f
            long r7 = (long) r5
            long r1 = r1 - r7
            r0.f = r1
            if (r6 == 0) goto Lb0
            goto Lb1
        Lb0:
            long r3 = -r3
        Lb1:
            return r3
        Lb2:
            java.io.EOFException r1 = new java.io.EOFException
            r1.<init>()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xs7.P():long");
    }

    public xs7 Q(int i) {
        qt7 qt7VarE = E(1);
        byte[] bArr = qt7VarE.a;
        int i2 = qt7VarE.c;
        qt7VarE.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f++;
        return this;
    }

    @Override // defpackage.at7
    public String R(long j) throws EOFException {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("limit < 0: ", j).toString());
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        byte b2 = (byte) 10;
        long jG = g(b2, 0L, j2);
        if (jG != -1) {
            return xt7.b(this, jG);
        }
        if (j2 < this.f && f(j2 - 1) == ((byte) 13) && f(j2) == b2) {
            return xt7.b(this, j2);
        }
        xs7 xs7Var = new xs7();
        e(xs7Var, 0L, Math.min(32, this.f));
        StringBuilder sbZ = jo.z("\\n not found: limit=");
        sbZ.append(Math.min(this.f, j));
        sbZ.append(" content=");
        sbZ.append(xs7Var.e0().w());
        sbZ.append((char) 8230);
        throw new EOFException(sbZ.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f5 A[LOOP:0: B:69:0x00f1->B:71:0x00f5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0105  */
    @Override // defpackage.zs7
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.xs7 E0(long r13) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xs7.E0(long):xs7");
    }

    @Override // defpackage.zs7
    public /* bridge */ /* synthetic */ zs7 T(String str) {
        k0(str);
        return this;
    }

    @Override // defpackage.at7
    public boolean U(long j, bt7 bt7Var) {
        im7.e(bt7Var, "bytes");
        int iT = bt7Var.t();
        im7.e(bt7Var, "bytes");
        if (j < 0 || iT < 0 || this.f - j < iT || bt7Var.t() - 0 < iT) {
            return false;
        }
        for (int i = 0; i < iT; i++) {
            if (f(i + j) != bt7Var.y(0 + i)) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.at7
    public String V(Charset charset) {
        im7.e(charset, "charset");
        return q(this.f, charset);
    }

    @Override // defpackage.zs7
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public xs7 c0(long j) {
        if (j == 0) {
            Q(48);
        } else {
            long j2 = (j >>> 1) | j;
            long j3 = j2 | (j2 >>> 2);
            long j4 = j3 | (j3 >>> 4);
            long j5 = j4 | (j4 >>> 8);
            long j6 = j5 | (j5 >>> 16);
            long j7 = j6 | (j6 >>> 32);
            long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
            long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
            long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
            long j11 = j10 + (j10 >>> 8);
            long j12 = j11 + (j11 >>> 16);
            int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
            qt7 qt7VarE = E(i);
            byte[] bArr = qt7VarE.a;
            int i2 = qt7VarE.c;
            for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
                bArr[i3] = xt7.a[(int) (15 & j)];
                j >>>= 4;
            }
            qt7VarE.c += i;
            this.f += i;
        }
        return this;
    }

    public xs7 a0(int i) {
        qt7 qt7VarE = E(4);
        byte[] bArr = qt7VarE.a;
        int i2 = qt7VarE.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & Base64.BASELENGTH);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & Base64.BASELENGTH);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & Base64.BASELENGTH);
        bArr[i5] = (byte) (i & Base64.BASELENGTH);
        qt7VarE.c = i5 + 1;
        this.f += 4;
        return this;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public xs7 clone() {
        xs7 xs7Var = new xs7();
        if (this.f != 0) {
            qt7 qt7Var = this.e;
            im7.c(qt7Var);
            qt7 qt7VarC = qt7Var.c();
            xs7Var.e = qt7VarC;
            qt7VarC.g = qt7VarC;
            qt7VarC.f = qt7VarC;
            for (qt7 qt7Var2 = qt7Var.f; qt7Var2 != qt7Var; qt7Var2 = qt7Var2.f) {
                qt7 qt7Var3 = qt7VarC.g;
                im7.c(qt7Var3);
                im7.c(qt7Var2);
                qt7Var3.b(qt7Var2.c());
            }
            xs7Var.f = this.f;
        }
        return xs7Var;
    }

    @Override // defpackage.zs7
    public long b0(vt7 vt7Var) throws IOException {
        im7.e(vt7Var, "source");
        long j = 0;
        while (true) {
            long j2 = vt7Var.read(this, RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    public final long c() {
        long j = this.f;
        if (j == 0) {
            return 0L;
        }
        qt7 qt7Var = this.e;
        im7.c(qt7Var);
        qt7 qt7Var2 = qt7Var.g;
        im7.c(qt7Var2);
        if (qt7Var2.c < 8192 && qt7Var2.e) {
            j -= r3 - qt7Var2.b;
        }
        return j;
    }

    @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final xs7 e(xs7 xs7Var, long j, long j2) {
        im7.e(xs7Var, "out");
        n56.u(this.f, j, j2);
        if (j2 != 0) {
            xs7Var.f += j2;
            qt7 qt7Var = this.e;
            while (true) {
                im7.c(qt7Var);
                int i = qt7Var.c;
                int i2 = qt7Var.b;
                if (j < i - i2) {
                    break;
                }
                j -= i - i2;
                qt7Var = qt7Var.f;
            }
            while (j2 > 0) {
                im7.c(qt7Var);
                qt7 qt7VarC = qt7Var.c();
                int i3 = qt7VarC.b + ((int) j);
                qt7VarC.b = i3;
                qt7VarC.c = Math.min(i3 + ((int) j2), qt7VarC.c);
                qt7 qt7Var2 = xs7Var.e;
                if (qt7Var2 == null) {
                    qt7VarC.g = qt7VarC;
                    qt7VarC.f = qt7VarC;
                    xs7Var.e = qt7VarC;
                } else {
                    im7.c(qt7Var2);
                    qt7 qt7Var3 = qt7Var2.g;
                    im7.c(qt7Var3);
                    qt7Var3.b(qt7VarC);
                }
                j2 -= qt7VarC.c - qt7VarC.b;
                qt7Var = qt7Var.f;
                j = 0;
            }
        }
        return this;
    }

    @Override // defpackage.at7
    public bt7 e0() {
        return s(this.f);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof xs7)) {
                return false;
            }
            long j = this.f;
            xs7 xs7Var = (xs7) obj;
            if (j != xs7Var.f) {
                return false;
            }
            if (j != 0) {
                qt7 qt7Var = this.e;
                im7.c(qt7Var);
                qt7 qt7Var2 = xs7Var.e;
                im7.c(qt7Var2);
                int i = qt7Var.b;
                int i2 = qt7Var2.b;
                long j2 = 0;
                while (j2 < this.f) {
                    long jMin = Math.min(qt7Var.c - i, qt7Var2.c - i2);
                    long j3 = 0;
                    while (j3 < jMin) {
                        int i3 = i + 1;
                        int i4 = i2 + 1;
                        if (qt7Var.a[i] != qt7Var2.a[i2]) {
                            return false;
                        }
                        j3++;
                        i = i3;
                        i2 = i4;
                    }
                    if (i == qt7Var.c) {
                        qt7Var = qt7Var.f;
                        im7.c(qt7Var);
                        i = qt7Var.b;
                    }
                    if (i2 == qt7Var2.c) {
                        qt7Var2 = qt7Var2.f;
                        im7.c(qt7Var2);
                        i2 = qt7Var2.b;
                    }
                    j2 += jMin;
                }
            }
        }
        return true;
    }

    public final byte f(long j) {
        n56.u(this.f, j, 1L);
        qt7 qt7Var = this.e;
        if (qt7Var == null) {
            qt7 qt7Var2 = null;
            im7.c(null);
            return qt7Var2.a[(int) ((qt7Var2.b + j) - (-1))];
        }
        long j2 = this.f;
        if (j2 - j < j) {
            while (j2 > j) {
                qt7Var = qt7Var.g;
                im7.c(qt7Var);
                j2 -= qt7Var.c - qt7Var.b;
            }
            im7.c(qt7Var);
            return qt7Var.a[(int) ((qt7Var.b + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            long j4 = (qt7Var.c - qt7Var.b) + j3;
            if (j4 > j) {
                im7.c(qt7Var);
                return qt7Var.a[(int) ((qt7Var.b + j) - j3)];
            }
            qt7Var = qt7Var.f;
            im7.c(qt7Var);
            j3 = j4;
        }
    }

    @Override // defpackage.zs7, defpackage.tt7, java.io.Flushable
    public void flush() {
    }

    public long g(byte b2, long j, long j2) {
        qt7 qt7Var;
        long j3 = 0;
        if (!(0 <= j && j2 >= j)) {
            StringBuilder sbZ = jo.z("size=");
            sbZ.append(this.f);
            sbZ.append(" fromIndex=");
            sbZ.append(j);
            sbZ.append(" toIndex=");
            sbZ.append(j2);
            throw new IllegalArgumentException(sbZ.toString().toString());
        }
        long j4 = this.f;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j != j2 && (qt7Var = this.e) != null) {
            if (j4 - j < j) {
                while (j4 > j) {
                    qt7Var = qt7Var.g;
                    im7.c(qt7Var);
                    j4 -= qt7Var.c - qt7Var.b;
                }
                while (j4 < j2) {
                    byte[] bArr = qt7Var.a;
                    int iMin = (int) Math.min(qt7Var.c, (qt7Var.b + j2) - j4);
                    for (int i = (int) ((qt7Var.b + j) - j4); i < iMin; i++) {
                        if (bArr[i] == b2) {
                            return (i - qt7Var.b) + j4;
                        }
                    }
                    j4 += qt7Var.c - qt7Var.b;
                    qt7Var = qt7Var.f;
                    im7.c(qt7Var);
                    j = j4;
                }
            } else {
                while (true) {
                    long j5 = (qt7Var.c - qt7Var.b) + j3;
                    if (j5 > j) {
                        break;
                    }
                    qt7Var = qt7Var.f;
                    im7.c(qt7Var);
                    j3 = j5;
                }
                while (j3 < j2) {
                    byte[] bArr2 = qt7Var.a;
                    int iMin2 = (int) Math.min(qt7Var.c, (qt7Var.b + j2) - j3);
                    for (int i2 = (int) ((qt7Var.b + j) - j3); i2 < iMin2; i2++) {
                        if (bArr2[i2] == b2) {
                            return (i2 - qt7Var.b) + j3;
                        }
                    }
                    j3 += qt7Var.c - qt7Var.b;
                    qt7Var = qt7Var.f;
                    im7.c(qt7Var);
                    j = j3;
                }
            }
        }
        return -1L;
    }

    public xs7 g0(long j) {
        qt7 qt7VarE = E(8);
        byte[] bArr = qt7VarE.a;
        int i = qt7VarE.c;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        qt7VarE.c = i8 + 1;
        this.f += 8;
        return this;
    }

    @Override // defpackage.at7
    public xs7 h() {
        return this;
    }

    public xs7 h0(int i) {
        qt7 qt7VarE = E(2);
        byte[] bArr = qt7VarE.a;
        int i2 = qt7VarE.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & Base64.BASELENGTH);
        bArr[i3] = (byte) (i & Base64.BASELENGTH);
        qt7VarE.c = i3 + 1;
        this.f += 2;
        return this;
    }

    public int hashCode() {
        qt7 qt7Var = this.e;
        if (qt7Var == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = qt7Var.c;
            for (int i3 = qt7Var.b; i3 < i2; i3++) {
                i = (i * 31) + qt7Var.a[i3];
            }
            qt7Var = qt7Var.f;
            im7.c(qt7Var);
        } while (qt7Var != this.e);
        return i;
    }

    public long i(bt7 bt7Var) {
        int i;
        int i2;
        im7.e(bt7Var, "targetBytes");
        im7.e(bt7Var, "targetBytes");
        qt7 qt7Var = this.e;
        if (qt7Var == null) {
            return -1L;
        }
        long j = this.f;
        long j2 = 0;
        if (j - 0 < 0) {
            while (j > 0) {
                qt7Var = qt7Var.g;
                im7.c(qt7Var);
                j -= qt7Var.c - qt7Var.b;
            }
            if (bt7Var.t() == 2) {
                byte bY = bt7Var.y(0);
                byte bY2 = bt7Var.y(1);
                while (j < this.f) {
                    byte[] bArr = qt7Var.a;
                    i = (int) ((qt7Var.b + j2) - j);
                    int i3 = qt7Var.c;
                    while (i < i3) {
                        byte b2 = bArr[i];
                        if (b2 == bY || b2 == bY2) {
                            i2 = qt7Var.b;
                        } else {
                            i++;
                        }
                    }
                    j2 = (qt7Var.c - qt7Var.b) + j;
                    qt7Var = qt7Var.f;
                    im7.c(qt7Var);
                    j = j2;
                }
                return -1L;
            }
            byte[] bArrX = bt7Var.x();
            while (j < this.f) {
                byte[] bArr2 = qt7Var.a;
                i = (int) ((qt7Var.b + j2) - j);
                int i4 = qt7Var.c;
                while (i < i4) {
                    byte b3 = bArr2[i];
                    for (byte b4 : bArrX) {
                        if (b3 == b4) {
                            i2 = qt7Var.b;
                        }
                    }
                    i++;
                }
                j2 = (qt7Var.c - qt7Var.b) + j;
                qt7Var = qt7Var.f;
                im7.c(qt7Var);
                j = j2;
            }
            return -1L;
        }
        j = 0;
        while (true) {
            long j3 = (qt7Var.c - qt7Var.b) + j;
            if (j3 > 0) {
                break;
            }
            qt7Var = qt7Var.f;
            im7.c(qt7Var);
            j = j3;
        }
        if (bt7Var.t() == 2) {
            byte bY3 = bt7Var.y(0);
            byte bY4 = bt7Var.y(1);
            while (j < this.f) {
                byte[] bArr3 = qt7Var.a;
                i = (int) ((qt7Var.b + j2) - j);
                int i5 = qt7Var.c;
                while (i < i5) {
                    byte b5 = bArr3[i];
                    if (b5 == bY3 || b5 == bY4) {
                        i2 = qt7Var.b;
                    } else {
                        i++;
                    }
                }
                j2 = (qt7Var.c - qt7Var.b) + j;
                qt7Var = qt7Var.f;
                im7.c(qt7Var);
                j = j2;
            }
            return -1L;
        }
        byte[] bArrX2 = bt7Var.x();
        while (j < this.f) {
            byte[] bArr4 = qt7Var.a;
            i = (int) ((qt7Var.b + j2) - j);
            int i6 = qt7Var.c;
            while (i < i6) {
                byte b6 = bArr4[i];
                for (byte b7 : bArrX2) {
                    if (b6 == b7) {
                        i2 = qt7Var.b;
                    }
                }
                i++;
            }
            j2 = (qt7Var.c - qt7Var.b) + j;
            qt7Var = qt7Var.f;
            im7.c(qt7Var);
            j = j2;
        }
        return -1L;
        return (i - i2) + j;
    }

    @Override // defpackage.at7
    public String i0() throws EOFException {
        return R(Long.MAX_VALUE);
    }

    @Override // defpackage.at7
    public InputStream inputStream() {
        return new b();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // defpackage.zs7
    public /* bridge */ /* synthetic */ zs7 j(byte[] bArr, int i, int i2) {
        L(bArr, i, i2);
        return this;
    }

    public xs7 j0(String str, int i, int i2, Charset charset) {
        im7.e(str, "string");
        im7.e(charset, "charset");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(jo.g("beginIndex < 0: ", i).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(jo.i("endIndex < beginIndex: ", i2, " < ", i).toString());
        }
        if (!(i2 <= str.length())) {
            StringBuilder sbA = jo.A("endIndex > string.length: ", i2, " > ");
            sbA.append(str.length());
            throw new IllegalArgumentException(sbA.toString().toString());
        }
        if (im7.a(charset, wn7.a)) {
            m0(str, i, i2);
            return this;
        }
        String strSubstring = str.substring(i, i2);
        im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        byte[] bytes = strSubstring.getBytes(charset);
        im7.d(bytes, "(this as java.lang.String).getBytes(charset)");
        L(bytes, 0, bytes.length);
        return this;
    }

    public final a k(a aVar) {
        im7.e(aVar, "unsafeCursor");
        if (!(aVar.e == null)) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        aVar.e = this;
        aVar.f = true;
        return aVar;
    }

    public xs7 k0(String str) {
        im7.e(str, "string");
        m0(str, 0, str.length());
        return this;
    }

    @Override // defpackage.at7
    public boolean l(long j) {
        return this.f >= j;
    }

    @Override // defpackage.at7
    public byte[] l0(long j) throws EOFException {
        if (!(j >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(jo.j("byteCount: ", j).toString());
        }
        if (this.f < j) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j];
        readFully(bArr);
        return bArr;
    }

    public short m() throws EOFException {
        int i = readShort() & 65535;
        return (short) (((i & Base64.BASELENGTH) << 8) | ((65280 & i) >>> 8));
    }

    public xs7 m0(String str, int i, int i2) {
        char cCharAt;
        im7.e(str, "string");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(jo.g("beginIndex < 0: ", i).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(jo.i("endIndex < beginIndex: ", i2, " < ", i).toString());
        }
        if (!(i2 <= str.length())) {
            StringBuilder sbA = jo.A("endIndex > string.length: ", i2, " > ");
            sbA.append(str.length());
            throw new IllegalArgumentException(sbA.toString().toString());
        }
        while (i < i2) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 128) {
                qt7 qt7VarE = E(1);
                byte[] bArr = qt7VarE.a;
                int i3 = qt7VarE.c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = qt7VarE.c;
                int i6 = (i3 + i) - i5;
                qt7VarE.c = i5 + i6;
                this.f += i6;
            } else {
                if (cCharAt2 < 2048) {
                    qt7 qt7VarE2 = E(2);
                    byte[] bArr2 = qt7VarE2.a;
                    int i7 = qt7VarE2.c;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    qt7VarE2.c = i7 + 2;
                    this.f += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    qt7 qt7VarE3 = E(3);
                    byte[] bArr3 = qt7VarE3.a;
                    int i8 = qt7VarE3.c;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    qt7VarE3.c = i8 + 3;
                    this.f += 3;
                } else {
                    int i9 = i + 1;
                    char cCharAt3 = i9 < i2 ? str.charAt(i9) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || 57343 < cCharAt3) {
                        Q(63);
                        i = i9;
                    } else {
                        int i10 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        qt7 qt7VarE4 = E(4);
                        byte[] bArr4 = qt7VarE4.a;
                        int i11 = qt7VarE4.c;
                        bArr4[i11] = (byte) ((i10 >> 18) | 240);
                        bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                        bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                        bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                        qt7VarE4.c = i11 + 4;
                        this.f += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
        return this;
    }

    @Override // defpackage.zs7
    public /* bridge */ /* synthetic */ zs7 o0(byte[] bArr) {
        I(bArr);
        return this;
    }

    public xs7 p0(int i) {
        String str;
        if (i < 128) {
            Q(i);
        } else if (i < 2048) {
            qt7 qt7VarE = E(2);
            byte[] bArr = qt7VarE.a;
            int i2 = qt7VarE.c;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            qt7VarE.c = i2 + 2;
            this.f += 2;
        } else if (55296 <= i && 57343 >= i) {
            Q(63);
        } else if (i < 65536) {
            qt7 qt7VarE2 = E(3);
            byte[] bArr2 = qt7VarE2.a;
            int i3 = qt7VarE2.c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            qt7VarE2.c = i3 + 3;
            this.f += 3;
        } else {
            if (i > 1114111) {
                StringBuilder sbZ = jo.z("Unexpected code point: 0x");
                if (i != 0) {
                    char[] cArr = yt7.a;
                    int i4 = 0;
                    char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
                    while (i4 < 8 && cArr2[i4] == '0') {
                        i4++;
                    }
                    str = new String(cArr2, i4, 8 - i4);
                } else {
                    str = "0";
                }
                sbZ.append(str);
                throw new IllegalArgumentException(sbZ.toString());
            }
            qt7 qt7VarE3 = E(4);
            byte[] bArr3 = qt7VarE3.a;
            int i5 = qt7VarE3.c;
            bArr3[i5] = (byte) ((i >> 18) | 240);
            bArr3[i5 + 1] = (byte) (((i >> 12) & 63) | 128);
            bArr3[i5 + 2] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i5 + 3] = (byte) ((i & 63) | 128);
            qt7VarE3.c = i5 + 4;
            this.f += 4;
        }
        return this;
    }

    @Override // defpackage.at7
    public at7 peek() {
        return n56.p(new nt7(this));
    }

    public String q(long j, Charset charset) throws EOFException {
        im7.e(charset, "charset");
        if (!(j >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(jo.j("byteCount: ", j).toString());
        }
        if (this.f < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        qt7 qt7Var = this.e;
        im7.c(qt7Var);
        int i = qt7Var.b;
        if (i + j > qt7Var.c) {
            return new String(l0(j), charset);
        }
        int i2 = (int) j;
        String str = new String(qt7Var.a, i, i2, charset);
        int i3 = qt7Var.b + i2;
        qt7Var.b = i3;
        this.f -= j;
        if (i3 == qt7Var.c) {
            this.e = qt7Var.a();
            rt7.a(qt7Var);
        }
        return str;
    }

    @Override // defpackage.zs7
    public /* bridge */ /* synthetic */ zs7 q0(bt7 bt7Var) {
        F(bt7Var);
        return this;
    }

    @Override // defpackage.at7
    public xs7 r() {
        return this;
    }

    @Override // defpackage.vt7
    public long read(xs7 xs7Var, long j) {
        im7.e(xs7Var, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(jo.j("byteCount < 0: ", j).toString());
        }
        long j2 = this.f;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        xs7Var.write(this, j);
        return j;
    }

    @Override // defpackage.at7
    public byte readByte() throws EOFException {
        if (this.f == 0) {
            throw new EOFException();
        }
        qt7 qt7Var = this.e;
        im7.c(qt7Var);
        int i = qt7Var.b;
        int i2 = qt7Var.c;
        int i3 = i + 1;
        byte b2 = qt7Var.a[i];
        this.f--;
        if (i3 == i2) {
            this.e = qt7Var.a();
            rt7.a(qt7Var);
        } else {
            qt7Var.b = i3;
        }
        return b2;
    }

    @Override // defpackage.at7
    public void readFully(byte[] bArr) throws EOFException {
        im7.e(bArr, "sink");
        int i = 0;
        while (i < bArr.length) {
            int i2 = read(bArr, i, bArr.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    @Override // defpackage.at7
    public int readInt() throws EOFException {
        if (this.f < 4) {
            throw new EOFException();
        }
        qt7 qt7Var = this.e;
        im7.c(qt7Var);
        int i = qt7Var.b;
        int i2 = qt7Var.c;
        if (i2 - i < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = qt7Var.a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        this.f -= 4;
        if (i8 == i2) {
            this.e = qt7Var.a();
            rt7.a(qt7Var);
        } else {
            qt7Var.b = i8;
        }
        return i9;
    }

    @Override // defpackage.at7
    public long readLong() throws EOFException {
        if (this.f < 8) {
            throw new EOFException();
        }
        qt7 qt7Var = this.e;
        im7.c(qt7Var);
        int i = qt7Var.b;
        int i2 = qt7Var.c;
        if (i2 - i < 8) {
            return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
        }
        byte[] bArr = qt7Var.a;
        long j = (bArr[i] & 255) << 56;
        long j2 = j | ((bArr[r6] & 255) << 48);
        long j3 = j2 | ((bArr[r1] & 255) << 40);
        int i3 = i + 1 + 1 + 1 + 1;
        long j4 = ((bArr[r6] & 255) << 32) | j3;
        long j5 = j4 | ((bArr[i3] & 255) << 24);
        long j6 = j5 | ((bArr[r8] & 255) << 16);
        long j7 = j6 | ((bArr[r1] & 255) << 8);
        int i4 = i3 + 1 + 1 + 1 + 1;
        long j8 = j7 | (bArr[r8] & 255);
        this.f -= 8;
        if (i4 == i2) {
            this.e = qt7Var.a();
            rt7.a(qt7Var);
        } else {
            qt7Var.b = i4;
        }
        return j8;
    }

    @Override // defpackage.at7
    public short readShort() throws EOFException {
        if (this.f < 2) {
            throw new EOFException();
        }
        qt7 qt7Var = this.e;
        im7.c(qt7Var);
        int i = qt7Var.b;
        int i2 = qt7Var.c;
        if (i2 - i < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = qt7Var.a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        this.f -= 2;
        if (i4 == i2) {
            this.e = qt7Var.a();
            rt7.a(qt7Var);
        } else {
            qt7Var.b = i4;
        }
        return (short) i5;
    }

    @Override // defpackage.at7
    public bt7 s(long j) throws EOFException {
        if (!(j >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(jo.j("byteCount: ", j).toString());
        }
        if (this.f < j) {
            throw new EOFException();
        }
        if (j < RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT) {
            return new bt7(l0(j));
        }
        bt7 bt7VarD = D((int) j);
        skip(j);
        return bt7VarD;
    }

    @Override // defpackage.at7
    public void skip(long j) throws EOFException {
        while (j > 0) {
            qt7 qt7Var = this.e;
            if (qt7Var == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, qt7Var.c - qt7Var.b);
            long j2 = iMin;
            this.f -= j2;
            j -= j2;
            int i = qt7Var.b + iMin;
            qt7Var.b = i;
            if (i == qt7Var.c) {
                this.e = qt7Var.a();
                rt7.a(qt7Var);
            }
        }
    }

    public String t() {
        return q(this.f, wn7.a);
    }

    @Override // defpackage.vt7
    public wt7 timeout() {
        return wt7.NONE;
    }

    public String toString() {
        return y().toString();
    }

    @Override // defpackage.zs7
    public zs7 u() {
        return this;
    }

    @Override // defpackage.zs7
    public /* bridge */ /* synthetic */ zs7 v(int i) {
        h0(i);
        return this;
    }

    public String w(long j) throws EOFException {
        return q(j, wn7.a);
    }

    @Override // defpackage.at7
    public long w0(tt7 tt7Var) throws IOException {
        im7.e(tt7Var, "sink");
        long j = this.f;
        if (j > 0) {
            ((xs7) tt7Var).write(this, j);
        }
        return j;
    }

    @Override // defpackage.tt7
    public void write(xs7 xs7Var, long j) {
        int i;
        qt7 qt7Var;
        qt7 qt7VarB;
        im7.e(xs7Var, "source");
        if (!(xs7Var != this)) {
            throw new IllegalArgumentException("source == this".toString());
        }
        n56.u(xs7Var.f, 0L, j);
        while (j > 0) {
            qt7 qt7Var2 = xs7Var.e;
            im7.c(qt7Var2);
            int i2 = qt7Var2.c;
            im7.c(xs7Var.e);
            if (j < i2 - r3.b) {
                qt7 qt7Var3 = this.e;
                if (qt7Var3 != null) {
                    im7.c(qt7Var3);
                    qt7Var = qt7Var3.g;
                } else {
                    qt7Var = null;
                }
                if (qt7Var != null && qt7Var.e) {
                    if ((qt7Var.c + j) - (qt7Var.d ? 0 : qt7Var.b) <= RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) {
                        qt7 qt7Var4 = xs7Var.e;
                        im7.c(qt7Var4);
                        qt7Var4.d(qt7Var, (int) j);
                        xs7Var.f -= j;
                        this.f += j;
                        return;
                    }
                }
                qt7 qt7Var5 = xs7Var.e;
                im7.c(qt7Var5);
                int i3 = (int) j;
                if (!(i3 > 0 && i3 <= qt7Var5.c - qt7Var5.b)) {
                    throw new IllegalArgumentException("byteCount out of range".toString());
                }
                if (i3 >= 1024) {
                    qt7VarB = qt7Var5.c();
                } else {
                    qt7VarB = rt7.b();
                    byte[] bArr = qt7Var5.a;
                    byte[] bArr2 = qt7VarB.a;
                    int i4 = qt7Var5.b;
                    ek7.c(bArr, bArr2, 0, i4, i4 + i3, 2);
                }
                qt7VarB.c = qt7VarB.b + i3;
                qt7Var5.b += i3;
                qt7 qt7Var6 = qt7Var5.g;
                im7.c(qt7Var6);
                qt7Var6.b(qt7VarB);
                xs7Var.e = qt7VarB;
            }
            qt7 qt7Var7 = xs7Var.e;
            im7.c(qt7Var7);
            long j2 = qt7Var7.c - qt7Var7.b;
            xs7Var.e = qt7Var7.a();
            qt7 qt7Var8 = this.e;
            if (qt7Var8 == null) {
                this.e = qt7Var7;
                qt7Var7.g = qt7Var7;
                qt7Var7.f = qt7Var7;
            } else {
                im7.c(qt7Var8);
                qt7 qt7Var9 = qt7Var8.g;
                im7.c(qt7Var9);
                qt7Var9.b(qt7Var7);
                qt7 qt7Var10 = qt7Var7.g;
                if (!(qt7Var10 != qt7Var7)) {
                    throw new IllegalStateException("cannot compact".toString());
                }
                im7.c(qt7Var10);
                if (qt7Var10.e) {
                    int i5 = qt7Var7.c - qt7Var7.b;
                    qt7 qt7Var11 = qt7Var7.g;
                    im7.c(qt7Var11);
                    int i6 = RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST - qt7Var11.c;
                    qt7 qt7Var12 = qt7Var7.g;
                    im7.c(qt7Var12);
                    if (qt7Var12.d) {
                        i = 0;
                    } else {
                        qt7 qt7Var13 = qt7Var7.g;
                        im7.c(qt7Var13);
                        i = qt7Var13.b;
                    }
                    if (i5 <= i6 + i) {
                        qt7 qt7Var14 = qt7Var7.g;
                        im7.c(qt7Var14);
                        qt7Var7.d(qt7Var14, i5);
                        qt7Var7.a();
                        rt7.a(qt7Var7);
                    }
                }
            }
            xs7Var.f -= j2;
            this.f += j2;
            j -= j2;
        }
    }

    public int x() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.f == 0) {
            throw new EOFException();
        }
        byte bF = f(0L);
        if ((bF & 128) == 0) {
            i = bF & Byte.MAX_VALUE;
            i2 = 1;
            i3 = 0;
        } else if ((bF & 224) == 192) {
            i = bF & 31;
            i2 = 2;
            i3 = 128;
        } else if ((bF & 240) == 224) {
            i = bF & 15;
            i2 = 3;
            i3 = RecyclerView.a0.FLAG_MOVED;
        } else {
            if ((bF & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i = bF & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (this.f < j) {
            StringBuilder sbA = jo.A("size < ", i2, ": ");
            sbA.append(this.f);
            sbA.append(" (to read code point prefixed 0x");
            sbA.append(n56.t2(bF));
            sbA.append(')');
            throw new EOFException(sbA.toString());
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte bF2 = f(j2);
            if ((bF2 & 192) != 128) {
                skip(j2);
                return 65533;
            }
            i = (i << 6) | (bF2 & 63);
        }
        skip(j);
        if (i > 1114111) {
            return 65533;
        }
        if ((55296 <= i && 57343 >= i) || i < i3) {
            return 65533;
        }
        return i;
    }

    public final bt7 y() {
        long j = this.f;
        if (j <= ((long) Integer.MAX_VALUE)) {
            return D((int) j);
        }
        StringBuilder sbZ = jo.z("size > Int.MAX_VALUE: ");
        sbZ.append(this.f);
        throw new IllegalStateException(sbZ.toString().toString());
    }

    @Override // defpackage.zs7
    public /* bridge */ /* synthetic */ zs7 z(int i) {
        a0(i);
        return this;
    }

    public static final class b extends InputStream {
        public b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(xs7.this.f, Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            xs7 xs7Var = xs7.this;
            if (xs7Var.f > 0) {
                return xs7Var.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return xs7.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            im7.e(bArr, "sink");
            return xs7.this.read(bArr, i, i2);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        im7.e(byteBuffer, "sink");
        qt7 qt7Var = this.e;
        if (qt7Var == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), qt7Var.c - qt7Var.b);
        byteBuffer.put(qt7Var.a, qt7Var.b, iMin);
        int i = qt7Var.b + iMin;
        qt7Var.b = i;
        this.f -= iMin;
        if (i == qt7Var.c) {
            this.e = qt7Var.a();
            rt7.a(qt7Var);
        }
        return iMin;
    }

    public int read(byte[] bArr, int i, int i2) {
        im7.e(bArr, "sink");
        n56.u(bArr.length, i, i2);
        qt7 qt7Var = this.e;
        if (qt7Var == null) {
            return -1;
        }
        int iMin = Math.min(i2, qt7Var.c - qt7Var.b);
        byte[] bArr2 = qt7Var.a;
        int i3 = qt7Var.b;
        ek7.b(bArr2, bArr, i, i3, i3 + iMin);
        int i4 = qt7Var.b + iMin;
        qt7Var.b = i4;
        this.f -= iMin;
        if (i4 != qt7Var.c) {
            return iMin;
        }
        this.e = qt7Var.a();
        rt7.a(qt7Var);
        return iMin;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        im7.e(byteBuffer, "source");
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            qt7 qt7VarE = E(1);
            int iMin = Math.min(i, 8192 - qt7VarE.c);
            byteBuffer.get(qt7VarE.a, qt7VarE.c, iMin);
            i -= iMin;
            qt7VarE.c += iMin;
        }
        this.f += iRemaining;
        return iRemaining;
    }
}
