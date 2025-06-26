package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class az3<T> implements nz3<T> {
    public static final Unsafe q = h04.j();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final int e;
    public final xy3 f;
    public final boolean g;
    public final boolean h;
    public final int[] i;
    public final int[] j;
    public final int[] k;
    public final dz3 l;
    public final iy3 m;
    public final b04<?, ?> n;
    public final fx3<?> o;
    public final sy3 p;

    public az3(int[] iArr, Object[] objArr, int i, int i2, int i3, xy3 xy3Var, boolean z, int[] iArr2, int[] iArr3, int[] iArr4, dz3 dz3Var, iy3 iy3Var, b04 b04Var, fx3 fx3Var, sy3 sy3Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.e = i3;
        boolean z2 = xy3Var instanceof sx3;
        this.h = z;
        this.g = fx3Var != null && fx3Var.f(xy3Var);
        this.i = iArr2;
        this.j = iArr3;
        this.k = iArr4;
        this.l = dz3Var;
        this.m = iy3Var;
        this.n = b04Var;
        this.o = fx3Var;
        this.f = xy3Var;
        this.p = sy3Var;
    }

    public static <E> List<E> J(Object obj, long j) {
        return (List) h04.t(obj, j);
    }

    public static <T> double K(T t, long j) {
        return ((Double) h04.t(t, j)).doubleValue();
    }

    public static <T> float L(T t, long j) {
        return ((Float) h04.t(t, j)).floatValue();
    }

    public static <T> int M(T t, long j) {
        return ((Integer) h04.t(t, j)).intValue();
    }

    public static <T> long N(T t, long j) {
        return ((Long) h04.t(t, j)).longValue();
    }

    public static <T> boolean O(T t, long j) {
        return ((Boolean) h04.t(t, j)).booleanValue();
    }

    public static c04 P(Object obj) {
        sx3 sx3Var = (sx3) obj;
        c04 c04Var = sx3Var.zzjp;
        if (c04Var != c04.f) {
            return c04Var;
        }
        c04 c04VarE = c04.e();
        sx3Var.zzjp = c04VarE;
        return c04VarE;
    }

    public static int j(nz3<?> nz3Var, int i, byte[] bArr, int i2, int i3, xx3<?> xx3Var, ow3 ow3Var) throws IOException {
        int iL = l(nz3Var, bArr, i2, i3, ow3Var);
        while (true) {
            xx3Var.add(ow3Var.c);
            if (iL >= i3) {
                break;
            }
            int iG1 = c50.g1(bArr, iL, ow3Var);
            if (i != ow3Var.a) {
                break;
            }
            iL = l(nz3Var, bArr, iG1, i3, ow3Var);
        }
        return iL;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int k(nz3 nz3Var, byte[] bArr, int i, int i2, int i3, ow3 ow3Var) throws IOException {
        az3 az3Var = (az3) nz3Var;
        Object objA = az3Var.l.a(az3Var.f);
        int iP = az3Var.p(objA, bArr, i, i2, i3, ow3Var);
        az3Var.b(objA);
        ow3Var.c = objA;
        return iP;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int l(nz3 nz3Var, byte[] bArr, int i, int i2, ow3 ow3Var) throws IOException {
        int iX0 = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iX0 = c50.X0(i3, bArr, iX0, ow3Var);
            i3 = ow3Var.a;
        }
        int i4 = iX0;
        if (i3 < 0 || i3 > i2 - i4) {
            throw yx3.a();
        }
        Object objC = nz3Var.c();
        int i5 = i3 + i4;
        nz3Var.i(objC, bArr, i4, i5, ow3Var);
        nz3Var.b(objC);
        ow3Var.c = objC;
        return i5;
    }

    public static az3 q(vy3 vy3Var, dz3 dz3Var, iy3 iy3Var, b04 b04Var, fx3 fx3Var, sy3 sy3Var) {
        int i;
        int i2;
        int i3;
        boolean z;
        int iB;
        int i4;
        int iB2;
        Field fieldB;
        Field fieldB2;
        Field fieldB3;
        if (!(vy3Var instanceof kz3)) {
            throw new NoSuchMethodError();
        }
        kz3 kz3Var = (kz3) vy3Var;
        lz3 lz3Var = kz3Var.b;
        int i5 = 1;
        int i6 = 2;
        boolean z2 = ((lz3Var.d & 1) == 1 ? (char) 1 : (char) 2) == 2;
        if (lz3Var.e == 0) {
            i = 0;
            i2 = 0;
            i3 = 0;
        } else {
            int i7 = lz3Var.h;
            int i8 = lz3Var.i;
            i = lz3Var.l;
            i2 = i7;
            i3 = i8;
        }
        int[] iArr = new int[i << 2];
        Object[] objArr = new Object[i << 1];
        int i9 = lz3Var.j;
        int[] iArr2 = i9 > 0 ? new int[i9] : null;
        int i10 = lz3Var.m;
        int[] iArr3 = i10 > 0 ? new int[i10] : null;
        if (lz3Var.a()) {
            int i11 = lz3Var.x;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            while (true) {
                if (i11 >= kz3Var.b.k || i12 >= ((i11 - i2) << i6)) {
                    if (lz3Var.z > nx3.d0.e) {
                        int i15 = lz3Var.A << i5;
                        Object obj = lz3Var.b[i15];
                        if (obj instanceof Field) {
                            fieldB2 = (Field) obj;
                        } else {
                            fieldB2 = lz3.b(lz3Var.c, (String) obj);
                            lz3Var.b[i15] = fieldB2;
                        }
                        iB = (int) h04.b(fieldB2);
                        int i16 = (lz3Var.A << i5) + i5;
                        Object obj2 = lz3Var.b[i16];
                        if (obj2 instanceof Field) {
                            fieldB3 = (Field) obj2;
                        } else {
                            fieldB3 = lz3.b(lz3Var.c, (String) obj2);
                            lz3Var.b[i16] = fieldB3;
                        }
                        iB2 = (int) h04.b(fieldB3);
                        i4 = 0;
                    } else {
                        iB = (int) h04.b(lz3Var.C);
                        if (lz3Var.e()) {
                            int i17 = (lz3Var.B / 32) + (lz3Var.f << i5);
                            Object obj3 = lz3Var.b[i17];
                            if (obj3 instanceof Field) {
                                fieldB = (Field) obj3;
                            } else {
                                fieldB = lz3.b(lz3Var.c, (String) obj3);
                                lz3Var.b[i17] = fieldB;
                            }
                            iB2 = (int) h04.b(fieldB);
                            i4 = lz3Var.B % 32;
                        } else {
                            i4 = 0;
                            iB2 = 0;
                        }
                    }
                    iArr[i12] = lz3Var.x;
                    int i18 = i12 + 1;
                    int i19 = lz3Var.y;
                    z = z2;
                    int i20 = ((i19 & RecyclerView.a0.FLAG_TMP_DETACHED) != 0 ? 268435456 : 0) | ((i19 & 512) != 0 ? 536870912 : 0);
                    int i21 = lz3Var.z;
                    iArr[i18] = i20 | (i21 << 20) | iB;
                    iArr[i12 + 2] = (i4 << 20) | iB2;
                    Object obj4 = lz3Var.F;
                    if (obj4 != null) {
                        int i22 = (i12 / 4) << 1;
                        objArr[i22] = obj4;
                        Object obj5 = lz3Var.D;
                        if (obj5 != null) {
                            objArr[i22 + 1] = obj5;
                        } else {
                            Object obj6 = lz3Var.E;
                            if (obj6 != null) {
                                objArr[i22 + 1] = obj6;
                            }
                        }
                    } else {
                        Object obj7 = lz3Var.D;
                        if (obj7 != null) {
                            objArr[((i12 / 4) << 1) + 1] = obj7;
                        } else {
                            Object obj8 = lz3Var.E;
                            if (obj8 != null) {
                                objArr[((i12 / 4) << 1) + 1] = obj8;
                            }
                        }
                    }
                    if (i21 == 50) {
                        iArr2[i13] = i12;
                        i13++;
                    } else if (i21 >= 18 && i21 <= 49) {
                        iArr3[i14] = iArr[i18] & 1048575;
                        i14++;
                    }
                    if (!lz3Var.a()) {
                        break;
                    }
                    i11 = lz3Var.x;
                } else {
                    for (int i23 = 0; i23 < 4; i23++) {
                        iArr[i12 + i23] = -1;
                    }
                    z = z2;
                }
                i12 += 4;
                z2 = z;
                i5 = 1;
                i6 = 2;
            }
        } else {
            z = z2;
        }
        lz3 lz3Var2 = kz3Var.b;
        return new az3(iArr, objArr, i2, i3, lz3Var2.k, kz3Var.a, z, lz3Var2.n, iArr2, iArr3, dz3Var, iy3Var, b04Var, fx3Var, sy3Var);
    }

    public static void r(int i, Object obj, v04 v04Var) throws IOException {
        if (obj instanceof String) {
            ((bx3) v04Var).a.j(i, (String) obj);
        } else {
            ((bx3) v04Var).a.g(i, (sw3) obj);
        }
    }

    public static <UT, UB> void s(b04<UT, UB> b04Var, T t, v04 v04Var) throws IOException {
        b04Var.b(b04Var.i(t), v04Var);
    }

    public final wx3<?> A(int i) {
        return (wx3) this.b[((i / 4) << 1) + 1];
    }

    public final int B(int i) {
        return this.a[i + 1];
    }

    public final int C(int i) {
        return this.a[i + 2];
    }

    public final int D(int i) {
        int i2 = this.c;
        if (i >= i2) {
            int i3 = this.e;
            if (i < i3) {
                int i4 = (i - i2) << 2;
                if (this.a[i4] == i) {
                    return i4;
                }
                return -1;
            }
            if (i <= this.d) {
                int i5 = i3 - i2;
                int length = (this.a.length / 4) - 1;
                while (i5 <= length) {
                    int i6 = (length + i5) >>> 1;
                    int i7 = i6 << 2;
                    int i8 = this.a[i7];
                    if (i == i8) {
                        return i7;
                    }
                    if (i < i8) {
                        length = i6 - 1;
                    } else {
                        i5 = i6 + 1;
                    }
                }
            }
        }
        return -1;
    }

    public final void E(T t, int i) {
        if (this.h) {
            return;
        }
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        h04.f.e(t, j, h04.o(t, j) | (1 << (i2 >>> 20)));
    }

    public final void F(T t, int i, int i2) {
        h04.f.e(t, this.a[i2 + 2] & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(T r19, defpackage.v04 r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.G(java.lang.Object, v04):void");
    }

    public final void H(T t, T t2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long j = i2 & 1048575;
        if (w(t2, i3, i)) {
            Object objT = h04.t(t, j);
            Object objT2 = h04.t(t2, j);
            if (objT != null && objT2 != null) {
                h04.f(t, j, ux3.a(objT, objT2));
                F(t, i3, i);
            } else if (objT2 != null) {
                h04.f(t, j, objT2);
                F(t, i3, i);
            }
        }
    }

    public final boolean I(T t, T t2, int i) {
        return v(t, i) == v(t2, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01a3  */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.a(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // defpackage.nz3
    public final void b(T t) {
        int[] iArr = this.j;
        if (iArr != null) {
            for (int i : iArr) {
                long jB = B(i) & 1048575;
                Object objT = h04.t(t, jB);
                if (objT != null) {
                    h04.f(t, jB, this.p.f(objT));
                }
            }
        }
        int[] iArr2 = this.k;
        if (iArr2 != null) {
            for (int i2 : iArr2) {
                this.m.a(t, i2);
            }
        }
        this.n.c(t);
        if (this.g) {
            this.o.e(t);
        }
    }

    @Override // defpackage.nz3
    public final T c() {
        return (T) this.l.a(this.f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e2 A[PHI: r3
      0x00e2: PHI (r3v13 java.lang.Object) = (r3v11 java.lang.Object), (r3v14 java.lang.Object) binds: [B:67:0x00e0, B:62:0x00ce] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(T r9) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.d(java.lang.Object):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00f5 A[SYNTHETIC] */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(T r17) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.e(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(T r13, defpackage.v04 r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.f(java.lang.Object, v04):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.g(java.lang.Object, java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01c4 A[PHI: r5
      0x01c4: PHI (r5v104 int) = 
      (r5v67 int)
      (r5v70 int)
      (r5v73 int)
      (r5v76 int)
      (r5v79 int)
      (r5v82 int)
      (r5v85 int)
      (r5v88 int)
      (r5v91 int)
      (r5v94 int)
      (r5v97 int)
      (r5v100 int)
      (r5v103 int)
      (r5v107 int)
     binds: [B:112:0x01c2, B:109:0x01b5, B:106:0x01a8, B:103:0x019b, B:100:0x018e, B:97:0x0181, B:94:0x0174, B:91:0x0167, B:88:0x0157, B:85:0x0149, B:82:0x013b, B:79:0x012d, B:76:0x011f, B:73:0x0111] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0300 A[PHI: r5
      0x0300: PHI (r5v142 java.lang.Object) = (r5v23 java.lang.Object), (r5v138 java.lang.Object), (r5v145 java.lang.Object) binds: [B:164:0x02fe, B:44:0x0099, B:157:0x02d9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0308 A[PHI: r5
      0x0308: PHI (r5v134 java.lang.Object) = (r5v23 java.lang.Object), (r5v138 java.lang.Object) binds: [B:164:0x02fe, B:44:0x0099] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x054b A[PHI: r2
      0x054b: PHI (r2v112 int) = 
      (r2v75 int)
      (r2v78 int)
      (r2v81 int)
      (r2v84 int)
      (r2v87 int)
      (r2v90 int)
      (r2v93 int)
      (r2v96 int)
      (r2v99 int)
      (r2v102 int)
      (r2v105 int)
      (r2v108 int)
      (r2v111 int)
      (r2v115 int)
     binds: [B:308:0x0549, B:305:0x053c, B:302:0x052f, B:299:0x0522, B:296:0x0515, B:293:0x0508, B:290:0x04fb, B:287:0x04ee, B:284:0x04de, B:281:0x04d0, B:278:0x04c2, B:275:0x04b4, B:272:0x04a6, B:269:0x0498] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x068d A[PHI: r2
      0x068d: PHI (r2v147 java.lang.Object) = (r2v19 java.lang.Object), (r2v143 java.lang.Object), (r2v150 java.lang.Object) binds: [B:360:0x068b, B:240:0x041e, B:353:0x066a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0694 A[PHI: r2
      0x0694: PHI (r2v139 java.lang.Object) = (r2v19 java.lang.Object), (r2v143 java.lang.Object) binds: [B:360:0x068b, B:240:0x041e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int h(T r14) {
        /*
            Method dump skipped, instructions count: 2160
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.h(java.lang.Object):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0172, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01ae, code lost:
    
        if (r0 == r15) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b0, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v27, types: [int] */
    @Override // defpackage.nz3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(T r23, byte[] r24, int r25, int r26, defpackage.ow3 r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.i(java.lang.Object, byte[], int, int, ow3):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int m(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ow3 ow3Var) throws IOException {
        Object objValueOf;
        Object objValueOf2;
        int iP2;
        long jA;
        int iB;
        Object objValueOf3;
        int i9;
        Unsafe unsafe = q;
        long j2 = this.a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    objValueOf = Double.valueOf(Double.longBitsToDouble(c50.H3(bArr, i)));
                    unsafe.putObject(t, j, objValueOf);
                    iP2 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    objValueOf2 = Float.valueOf(Float.intBitsToFloat(c50.s3(bArr, i)));
                    unsafe.putObject(t, j, objValueOf2);
                    iP2 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    iP2 = c50.P2(bArr, i, ow3Var);
                    jA = ow3Var.b;
                    objValueOf3 = Long.valueOf(jA);
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    iP2 = c50.g1(bArr, i, ow3Var);
                    iB = ow3Var.a;
                    objValueOf3 = Integer.valueOf(iB);
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    objValueOf = Long.valueOf(c50.H3(bArr, i));
                    unsafe.putObject(t, j, objValueOf);
                    iP2 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    objValueOf2 = Integer.valueOf(c50.s3(bArr, i));
                    unsafe.putObject(t, j, objValueOf2);
                    iP2 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    iP2 = c50.P2(bArr, i, ow3Var);
                    objValueOf3 = Boolean.valueOf(ow3Var.b != 0);
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    iP2 = c50.g1(bArr, i, ow3Var);
                    i9 = ow3Var.a;
                    if (i9 == 0) {
                        objValueOf3 = "";
                        unsafe.putObject(t, j, objValueOf3);
                        unsafe.putInt(t, j2, i4);
                        return iP2;
                    }
                    if ((i6 & 536870912) != 0 && !j04.e(bArr, iP2, iP2 + i9)) {
                        throw yx3.d();
                    }
                    unsafe.putObject(t, j, new String(bArr, iP2, i9, ux3.a));
                    iP2 += i9;
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    iP2 = l(y(i8), bArr, i, i2, ow3Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    objValueOf3 = ow3Var.c;
                    if (object != null) {
                        objValueOf3 = ux3.a(object, objValueOf3);
                    }
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    iP2 = c50.g1(bArr, i, ow3Var);
                    i9 = ow3Var.a;
                    if (i9 == 0) {
                        objValueOf3 = sw3.f;
                        unsafe.putObject(t, j, objValueOf3);
                        unsafe.putInt(t, j2, i4);
                        return iP2;
                    }
                    unsafe.putObject(t, j, sw3.n(bArr, iP2, i9));
                    iP2 += i9;
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int iG1 = c50.g1(bArr, i, ow3Var);
                    int i10 = ow3Var.a;
                    wx3 wx3Var = (wx3) this.b[((i8 / 4) << 1) + 1];
                    if (wx3Var != null && wx3Var.i(i10) == null) {
                        P(t).b(i3, Long.valueOf(i10));
                        return iG1;
                    }
                    unsafe.putObject(t, j, Integer.valueOf(i10));
                    iP2 = iG1;
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    iP2 = c50.g1(bArr, i, ow3Var);
                    iB = yw3.b(ow3Var.a);
                    objValueOf3 = Integer.valueOf(iB);
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    iP2 = c50.P2(bArr, i, ow3Var);
                    jA = yw3.a(ow3Var.b);
                    objValueOf3 = Long.valueOf(jA);
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    iP2 = k(y(i8), bArr, i, i2, (i3 & (-8)) | 4, ow3Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    objValueOf3 = ow3Var.c;
                    if (object2 != null) {
                        objValueOf3 = ux3.a(object2, objValueOf3);
                    }
                    unsafe.putObject(t, j, objValueOf3);
                    unsafe.putInt(t, j2, i4);
                    return iP2;
                }
                return i;
            default:
                return i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:151:0x02a9, code lost:
    
        if (r32.b != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02ac, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02ad, code lost:
    
        r13.h(r13.g, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02b2, code lost:
    
        if (r1 >= r22) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02b4, code lost:
    
        r4 = defpackage.c50.g1(r20, r1, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02ba, code lost:
    
        if (r23 != r32.a) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02bc, code lost:
    
        r1 = defpackage.c50.P2(r20, r4, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02c4, code lost:
    
        if (r32.b == 0) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02c6, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x01b7, code lost:
    
        r13.add(defpackage.sw3.f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x020a, code lost:
    
        r13.add("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x02ad, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01ac, code lost:
    
        if (r4 == 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01af, code lost:
    
        r13.add(defpackage.sw3.n(r20, r1, r4));
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01b7, code lost:
    
        if (r1 >= r22) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01b9, code lost:
    
        r4 = defpackage.c50.g1(r20, r1, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01bf, code lost:
    
        if (r23 != r32.a) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01c1, code lost:
    
        r1 = defpackage.c50.g1(r20, r4, r32);
        r4 = r32.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01c7, code lost:
    
        if (r4 != 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01c9, code lost:
    
        r13.add(defpackage.sw3.f);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0242  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x0220 -> B:107:0x0206). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:126:0x0250 -> B:117:0x022c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:159:0x02c4 -> B:153:0x02ac). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x01c7 -> B:91:0x01af). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int n(T r19, byte[] r20, int r21, int r22, int r23, int r24, int r25, int r26, long r27, int r29, long r30, defpackage.ow3 r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1140
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.n(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, ow3):int");
    }

    public final int o(Object obj, byte[] bArr, int i, int i2, int i3, long j, ow3 ow3Var) throws IOException {
        Unsafe unsafe = q;
        Object obj2 = this.b[(i3 / 4) << 1];
        Object object = unsafe.getObject(obj, j);
        if (this.p.c(object)) {
            Object objH = this.p.h(obj2);
            this.p.d(objH, object);
            unsafe.putObject(obj, j, objH);
            object = objH;
        }
        this.p.g(obj2);
        this.p.zzg(object);
        int iG1 = c50.g1(bArr, i, ow3Var);
        int i4 = ow3Var.a;
        if (i4 < 0 || i4 > i2 - iG1) {
            throw yx3.a();
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x036d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int p(T r31, byte[] r32, int r33, int r34, int r35, defpackage.ow3 r36) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.az3.p(java.lang.Object, byte[], int, int, int, ow3):int");
    }

    public final <K, V> void t(v04 v04Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            this.p.g(this.b[(i2 / 4) << 1]);
            Map<?, ?> mapI = this.p.i(obj);
            bx3 bx3Var = (bx3) v04Var;
            Objects.requireNonNull(bx3Var);
            Iterator<Map.Entry<?, ?>> it = mapI.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                bx3Var.a.q(i, 2);
                next.getKey();
                next.getValue();
                throw null;
            }
        }
    }

    public final void u(T t, T t2, int i) {
        long j = this.a[i + 1] & 1048575;
        if (v(t2, i)) {
            Object objT = h04.t(t, j);
            Object objT2 = h04.t(t2, j);
            if (objT != null && objT2 != null) {
                h04.f(t, j, ux3.a(objT, objT2));
                E(t, i);
            } else if (objT2 != null) {
                h04.f(t, j, objT2);
                E(t, i);
            }
        }
    }

    public final boolean v(T t, int i) {
        if (!this.h) {
            int i2 = this.a[i + 2];
            return (h04.o(t, (long) (i2 & 1048575)) & (1 << (i2 >>> 20))) != 0;
        }
        int i3 = this.a[i + 1];
        long j = i3 & 1048575;
        switch ((i3 & 267386880) >>> 20) {
            case 0:
                return h04.s(t, j) != 0.0d;
            case 1:
                return h04.r(t, j) != 0.0f;
            case 2:
                return h04.p(t, j) != 0;
            case 3:
                return h04.p(t, j) != 0;
            case 4:
                return h04.o(t, j) != 0;
            case 5:
                return h04.p(t, j) != 0;
            case 6:
                return h04.o(t, j) != 0;
            case 7:
                return h04.q(t, j);
            case 8:
                Object objT = h04.t(t, j);
                if (objT instanceof String) {
                    return !((String) objT).isEmpty();
                }
                if (objT instanceof sw3) {
                    return !sw3.f.equals(objT);
                }
                throw new IllegalArgumentException();
            case 9:
                return h04.t(t, j) != null;
            case 10:
                return !sw3.f.equals(h04.t(t, j));
            case 11:
                return h04.o(t, j) != 0;
            case 12:
                return h04.o(t, j) != 0;
            case 13:
                return h04.o(t, j) != 0;
            case 14:
                return h04.p(t, j) != 0;
            case 15:
                return h04.o(t, j) != 0;
            case 16:
                return h04.p(t, j) != 0;
            case 17:
                return h04.t(t, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean w(T t, int i, int i2) {
        return h04.o(t, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final boolean x(T t, int i, int i2, int i3) {
        return this.h ? v(t, i) : (i2 & i3) != 0;
    }

    public final nz3 y(int i) {
        int i2 = (i / 4) << 1;
        Object[] objArr = this.b;
        nz3 nz3Var = (nz3) objArr[i2];
        if (nz3Var != null) {
            return nz3Var;
        }
        nz3<T> nz3VarA = iz3.c.a((Class) objArr[i2 + 1]);
        this.b[i2] = nz3VarA;
        return nz3VarA;
    }

    public final Object z(int i) {
        return this.b[(i / 4) << 1];
    }
}
