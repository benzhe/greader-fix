package defpackage;

import defpackage.cj6;
import defpackage.jj6;
import defpackage.qi6;
import defpackage.ti6;
import defpackage.tj6;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class ck6<T> implements qk6<T> {
    public static final int[] r = new int[0];
    public static final Unsafe s = cl6.o();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final ak6 e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final int[] j;
    public final int k;
    public final int l;
    public final ek6 m;
    public final qj6 n;
    public final yk6<?, ?> o;
    public final zi6<?> p;
    public final vj6 q;

    public ck6(int[] iArr, Object[] objArr, int i, int i2, ak6 ak6Var, boolean z, boolean z2, int[] iArr2, int i3, int i4, ek6 ek6Var, qj6 qj6Var, yk6<?, ?> yk6Var, zi6<?> zi6Var, vj6 vj6Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = ak6Var instanceof gj6;
        this.h = z;
        this.f = zi6Var != null && zi6Var.e(ak6Var);
        this.i = z2;
        this.j = iArr2;
        this.k = i3;
        this.l = i4;
        this.m = ek6Var;
        this.n = qj6Var;
        this.o = yk6Var;
        this.p = zi6Var;
        this.e = ak6Var;
        this.q = vj6Var;
    }

    public static ck6 B(yj6 yj6Var, ek6 ek6Var, qj6 qj6Var, yk6 yk6Var, zi6 zi6Var, vj6 vj6Var) {
        if (yj6Var instanceof nk6) {
            return C((nk6) yj6Var, ek6Var, qj6Var, yk6Var, zi6Var, vj6Var);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0390  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> defpackage.ck6<T> C(defpackage.nk6 r33, defpackage.ek6 r34, defpackage.qj6 r35, defpackage.yk6<?, ?> r36, defpackage.zi6<?> r37, defpackage.vj6 r38) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.C(nk6, ek6, qj6, yk6, zi6, vj6):ck6");
    }

    public static long D(int i) {
        return i & 1048575;
    }

    public static <T> boolean E(T t, long j) {
        return ((Boolean) cl6.n(t, j)).booleanValue();
    }

    public static <T> double F(T t, long j) {
        return ((Double) cl6.n(t, j)).doubleValue();
    }

    public static <T> float G(T t, long j) {
        return ((Float) cl6.n(t, j)).floatValue();
    }

    public static <T> int H(T t, long j) {
        return ((Integer) cl6.n(t, j)).intValue();
    }

    public static <T> long I(T t, long j) {
        return ((Long) cl6.n(t, j)).longValue();
    }

    public static Field T(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbC = jo.C("Field ", str, " for ");
            sbC.append(cls.getName());
            sbC.append(" not found. Known fields are ");
            sbC.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbC.toString());
        }
    }

    public static int X(int i) {
        return (i & 267386880) >>> 20;
    }

    public static zk6 q(Object obj) {
        gj6 gj6Var = (gj6) obj;
        zk6 zk6Var = gj6Var.unknownFields;
        if (zk6Var != zk6.f) {
            return zk6Var;
        }
        zk6 zk6VarB = zk6.b();
        gj6Var.unknownFields = zk6VarB;
        return zk6VarB;
    }

    public static List<?> w(Object obj, long j) {
        return (List) cl6.n(obj, j);
    }

    public final void A(T t, T t2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long jD = D(i2);
        if (v(t2, i3, i)) {
            Object objN = v(t, i3, i) ? cl6.n(t, jD) : null;
            Object objN2 = cl6.n(t2, jD);
            if (objN != null && objN2 != null) {
                cl6.e.q(t, jD, jj6.c(objN, objN2));
                V(t, i3, i);
            } else if (objN2 != null) {
                cl6.e.q(t, jD, objN2);
                V(t, i3, i);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    public final <K, V> int J(T t, byte[] bArr, int i, int i2, int i3, long j, ni6 ni6Var) throws IOException {
        int iH0;
        Unsafe unsafe = s;
        Object obj = this.b[(i3 / 3) * 2];
        Object object = unsafe.getObject(t, j);
        if (this.q.h(object)) {
            Object objF = this.q.f(obj);
            this.q.b(objF, object);
            unsafe.putObject(t, j, objF);
            object = objF;
        }
        tj6.a<?, ?> aVarD = this.q.d(obj);
        Map<?, ?> mapE = this.q.e(object);
        int iI0 = n56.i0(bArr, i, ni6Var);
        int i4 = ni6Var.a;
        if (i4 < 0 || i4 > i2 - iI0) {
            throw kj6.h();
        }
        int i5 = iI0 + i4;
        Object obj2 = aVarD.b;
        Object obj3 = aVarD.d;
        while (iI0 < i5) {
            int i6 = iI0 + 1;
            byte b = bArr[iI0];
            if (b < 0) {
                iH0 = n56.h0(b, bArr, i6, ni6Var);
                b = ni6Var.a;
            } else {
                iH0 = i6;
            }
            int i7 = b >>> 3;
            int i8 = b & 7;
            if (i7 != 1) {
                if (i7 == 2) {
                    fl6 fl6Var = aVarD.c;
                    if (i8 == fl6Var.f) {
                        iI0 = l(bArr, iH0, i2, fl6Var, aVarD.d.getClass(), ni6Var);
                        obj3 = ni6Var.c;
                    }
                }
                iI0 = n56.d2(b, bArr, iH0, i2, ni6Var);
            } else {
                fl6 fl6Var2 = aVarD.a;
                if (i8 == fl6Var2.f) {
                    iI0 = l(bArr, iH0, i2, fl6Var2, null, ni6Var);
                    obj3 = obj3;
                    obj2 = ni6Var.c;
                } else {
                    iI0 = n56.d2(b, bArr, iH0, i2, ni6Var);
                }
            }
        }
        if (iI0 != i5) {
            throw kj6.g();
        }
        mapE.put(obj2, obj3);
        return i5;
    }

    public final int K(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ni6 ni6Var) throws IOException {
        Unsafe unsafe = s;
        long j2 = this.a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(n56.R(bArr, i))));
                    int i9 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i9;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(n56.Q(bArr, i))));
                    int i10 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i10;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int iK0 = n56.k0(bArr, i, ni6Var);
                    unsafe.putObject(t, j, Long.valueOf(ni6Var.b));
                    unsafe.putInt(t, j2, i4);
                    return iK0;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int iI0 = n56.i0(bArr, i, ni6Var);
                    unsafe.putObject(t, j, Integer.valueOf(ni6Var.a));
                    unsafe.putInt(t, j2, i4);
                    return iI0;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(n56.R(bArr, i)));
                    int i11 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return i11;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(n56.Q(bArr, i)));
                    int i12 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return i12;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int iK02 = n56.k0(bArr, i, ni6Var);
                    unsafe.putObject(t, j, Boolean.valueOf(ni6Var.b != 0));
                    unsafe.putInt(t, j2, i4);
                    return iK02;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int iI02 = n56.i0(bArr, i, ni6Var);
                    int i13 = ni6Var.a;
                    if (i13 == 0) {
                        unsafe.putObject(t, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !dl6.g(bArr, iI02, iI02 + i13)) {
                            throw kj6.c();
                        }
                        unsafe.putObject(t, j, new String(bArr, iI02, i13, jj6.a));
                        iI02 += i13;
                    }
                    unsafe.putInt(t, j2, i4);
                    return iI02;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int iT = n56.T(p(i8), bArr, i, i2, ni6Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, ni6Var.c);
                    } else {
                        unsafe.putObject(t, j, jj6.c(object, ni6Var.c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iT;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int iP = n56.P(bArr, i, ni6Var);
                    unsafe.putObject(t, j, ni6Var.c);
                    unsafe.putInt(t, j2, i4);
                    return iP;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int iI03 = n56.i0(bArr, i, ni6Var);
                    int i14 = ni6Var.a;
                    jj6.b bVar = (jj6.b) this.b[((i8 / 3) * 2) + 1];
                    if (bVar == null || bVar.a(i14)) {
                        unsafe.putObject(t, j, Integer.valueOf(i14));
                        unsafe.putInt(t, j2, i4);
                    } else {
                        q(t).c(i3, Long.valueOf(i14));
                    }
                    return iI03;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int iI04 = n56.i0(bArr, i, ni6Var);
                    unsafe.putObject(t, j, Integer.valueOf(ri6.b(ni6Var.a)));
                    unsafe.putInt(t, j2, i4);
                    return iI04;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int iK03 = n56.k0(bArr, i, ni6Var);
                    unsafe.putObject(t, j, Long.valueOf(ri6.c(ni6Var.b)));
                    unsafe.putInt(t, j2, i4);
                    return iK03;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int iS = n56.S(p(i8), bArr, i, i2, (i3 & (-8)) | 4, ni6Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, ni6Var.c);
                    } else {
                        unsafe.putObject(t, j, jj6.c(object2, ni6Var.c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iS;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x0352, code lost:
    
        if (r0 != r3) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0355, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0381, code lost:
    
        if (r0 != r14) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x039f, code lost:
    
        if (r0 != r14) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03a1, code lost:
    
        r14 = r33;
        r12 = r34;
        r13 = r36;
        r1 = r37;
        r11 = r38;
        r4 = r18;
        r6 = r19;
        r7 = r20;
        r3 = r21;
        r2 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x043b, code lost:
    
        if (r6 == 1048575) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x043d, code lost:
    
        r29.putInt(r11, r6, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0443, code lost:
    
        r2 = r32.k;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0449, code lost:
    
        if (r2 >= r32.l) goto L235;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x044b, code lost:
    
        r3 = (defpackage.zk6) m(r11, r32.j[r2], r3, r32.o);
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x045a, code lost:
    
        if (r3 == null) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x045c, code lost:
    
        r32.o.n(r11, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0461, code lost:
    
        if (r1 != 0) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0465, code lost:
    
        if (r0 != r36) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x046c, code lost:
    
        throw defpackage.kj6.g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x046f, code lost:
    
        if (r0 > r36) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0471, code lost:
    
        if (r4 != r1) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0473, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0478, code lost:
    
        throw defpackage.kj6.g();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x004d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int L(T r33, byte[] r34, int r35, int r36, int r37, defpackage.ni6 r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.L(java.lang.Object, byte[], int, int, int, ni6):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x02ab, code lost:
    
        if (r0 != r15) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02af, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02e1, code lost:
    
        if (r0 != r15) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0300, code lost:
    
        if (r0 != r15) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0302, code lost:
    
        r2 = r20;
        r6 = r23;
        r7 = r26;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x008a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /* JADX WARN: Type inference failed for: r3v14, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int M(T r29, byte[] r30, int r31, int r32, defpackage.ni6 r33) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.M(java.lang.Object, byte[], int, int, ni6):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int N(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, ni6 ni6Var) throws IOException {
        int iJ0;
        int iI0 = i;
        Unsafe unsafe = s;
        jj6.d dVarE = (jj6.d) unsafe.getObject(t, j2);
        if (!dVarE.F0()) {
            int size = dVarE.size();
            dVarE = dVarE.E(size == 0 ? 10 : size * 2);
            unsafe.putObject(t, j2, dVarE);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return n56.W(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 1) {
                    vi6 vi6Var = (vi6) dVarE;
                    vi6Var.h(Double.longBitsToDouble(n56.R(bArr, i)));
                    while (true) {
                        int i8 = iI0 + 8;
                        if (i8 >= i2) {
                            return i8;
                        }
                        iI0 = n56.i0(bArr, i8, ni6Var);
                        if (i3 != ni6Var.a) {
                            return i8;
                        }
                        vi6Var.h(Double.longBitsToDouble(n56.R(bArr, iI0)));
                    }
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    return n56.Z(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 5) {
                    ej6 ej6Var = (ej6) dVarE;
                    ej6Var.h(Float.intBitsToFloat(n56.Q(bArr, i)));
                    while (true) {
                        int i9 = iI0 + 4;
                        if (i9 >= i2) {
                            return i9;
                        }
                        iI0 = n56.i0(bArr, i9, ni6Var);
                        if (i3 != ni6Var.a) {
                            return i9;
                        }
                        ej6Var.h(Float.intBitsToFloat(n56.Q(bArr, iI0)));
                    }
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    return n56.d0(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 0) {
                    rj6 rj6Var = (rj6) dVarE;
                    int iK0 = n56.k0(bArr, iI0, ni6Var);
                    rj6Var.h(ni6Var.b);
                    while (iK0 < i2) {
                        int iI02 = n56.i0(bArr, iK0, ni6Var);
                        if (i3 != ni6Var.a) {
                            return iK0;
                        }
                        iK0 = n56.k0(bArr, iI02, ni6Var);
                        rj6Var.h(ni6Var.b);
                    }
                    return iK0;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return n56.c0(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 0) {
                    return n56.j0(i3, bArr, i, i2, dVarE, ni6Var);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return n56.Y(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 1) {
                    rj6 rj6Var2 = (rj6) dVarE;
                    rj6Var2.h(n56.R(bArr, i));
                    while (true) {
                        int i10 = iI0 + 8;
                        if (i10 >= i2) {
                            return i10;
                        }
                        iI0 = n56.i0(bArr, i10, ni6Var);
                        if (i3 != ni6Var.a) {
                            return i10;
                        }
                        rj6Var2.h(n56.R(bArr, iI0));
                    }
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return n56.X(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 5) {
                    ij6 ij6Var = (ij6) dVarE;
                    ij6Var.h(n56.Q(bArr, i));
                    while (true) {
                        int i11 = iI0 + 4;
                        if (i11 >= i2) {
                            return i11;
                        }
                        iI0 = n56.i0(bArr, i11, ni6Var);
                        if (i3 != ni6Var.a) {
                            return i11;
                        }
                        ij6Var.h(n56.Q(bArr, iI0));
                    }
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    return n56.V(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 0) {
                    oi6 oi6Var = (oi6) dVarE;
                    int iK02 = n56.k0(bArr, iI0, ni6Var);
                    oi6Var.h(ni6Var.b != 0);
                    while (iK02 < i2) {
                        int iI03 = n56.i0(bArr, iK02, ni6Var);
                        if (i3 != ni6Var.a) {
                            return iK02;
                        }
                        iK02 = n56.k0(bArr, iI03, ni6Var);
                        oi6Var.h(ni6Var.b != 0);
                    }
                    return iK02;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        iI0 = n56.i0(bArr, iI0, ni6Var);
                        int i12 = ni6Var.a;
                        if (i12 < 0) {
                            throw kj6.f();
                        }
                        if (i12 == 0) {
                            dVarE.add("");
                        } else {
                            dVarE.add(new String(bArr, iI0, i12, jj6.a));
                            iI0 += i12;
                        }
                        while (iI0 < i2) {
                            int iI04 = n56.i0(bArr, iI0, ni6Var);
                            if (i3 != ni6Var.a) {
                                break;
                            } else {
                                iI0 = n56.i0(bArr, iI04, ni6Var);
                                int i13 = ni6Var.a;
                                if (i13 < 0) {
                                    throw kj6.f();
                                }
                                if (i13 == 0) {
                                    dVarE.add("");
                                } else {
                                    dVarE.add(new String(bArr, iI0, i13, jj6.a));
                                    iI0 += i13;
                                }
                            }
                        }
                        break;
                    } else {
                        iI0 = n56.i0(bArr, iI0, ni6Var);
                        int i14 = ni6Var.a;
                        if (i14 < 0) {
                            throw kj6.f();
                        }
                        if (i14 == 0) {
                            dVarE.add("");
                        } else {
                            int i15 = iI0 + i14;
                            if (!dl6.g(bArr, iI0, i15)) {
                                throw kj6.c();
                            }
                            dVarE.add(new String(bArr, iI0, i14, jj6.a));
                            iI0 = i15;
                        }
                        while (iI0 < i2) {
                            int iI05 = n56.i0(bArr, iI0, ni6Var);
                            if (i3 != ni6Var.a) {
                                break;
                            } else {
                                iI0 = n56.i0(bArr, iI05, ni6Var);
                                int i16 = ni6Var.a;
                                if (i16 < 0) {
                                    throw kj6.f();
                                }
                                if (i16 == 0) {
                                    dVarE.add("");
                                } else {
                                    int i17 = iI0 + i16;
                                    if (!dl6.g(bArr, iI0, i17)) {
                                        throw kj6.c();
                                    }
                                    dVarE.add(new String(bArr, iI0, i16, jj6.a));
                                    iI0 = i17;
                                }
                            }
                        }
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return n56.U(p(i6), i3, bArr, i, i2, dVarE, ni6Var);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int iI06 = n56.i0(bArr, iI0, ni6Var);
                    int i18 = ni6Var.a;
                    if (i18 < 0) {
                        throw kj6.f();
                    }
                    if (i18 > bArr.length - iI06) {
                        throw kj6.h();
                    }
                    if (i18 == 0) {
                        dVarE.add(qi6.f);
                    } else {
                        dVarE.add(qi6.o(bArr, iI06, i18));
                        iI06 += i18;
                    }
                    while (iI06 < i2) {
                        int iI07 = n56.i0(bArr, iI06, ni6Var);
                        if (i3 != ni6Var.a) {
                            return iI06;
                        }
                        iI06 = n56.i0(bArr, iI07, ni6Var);
                        int i19 = ni6Var.a;
                        if (i19 < 0) {
                            throw kj6.f();
                        }
                        if (i19 > bArr.length - iI06) {
                            throw kj6.h();
                        }
                        if (i19 == 0) {
                            dVarE.add(qi6.f);
                        } else {
                            dVarE.add(qi6.o(bArr, iI06, i19));
                            iI06 += i19;
                        }
                    }
                    return iI06;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    iJ0 = n56.c0(bArr, iI0, dVarE, ni6Var);
                } else if (i5 == 0) {
                    iJ0 = n56.j0(i3, bArr, i, i2, dVarE, ni6Var);
                }
                gj6 gj6Var = (gj6) t;
                zk6 zk6Var = gj6Var.unknownFields;
                if (zk6Var == zk6.f) {
                    zk6Var = null;
                }
                zk6 zk6Var2 = (zk6) sk6.y(i4, dVarE, (jj6.b) this.b[((i6 / 3) * 2) + 1], zk6Var, this.o);
                if (zk6Var2 != null) {
                    gj6Var.unknownFields = zk6Var2;
                }
                return iJ0;
            case 33:
            case 47:
                if (i5 == 2) {
                    return n56.a0(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 0) {
                    ij6 ij6Var2 = (ij6) dVarE;
                    int iI08 = n56.i0(bArr, iI0, ni6Var);
                    ij6Var2.h(ri6.b(ni6Var.a));
                    while (iI08 < i2) {
                        int iI09 = n56.i0(bArr, iI08, ni6Var);
                        if (i3 != ni6Var.a) {
                            return iI08;
                        }
                        iI08 = n56.i0(bArr, iI09, ni6Var);
                        ij6Var2.h(ri6.b(ni6Var.a));
                    }
                    return iI08;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    return n56.b0(bArr, iI0, dVarE, ni6Var);
                }
                if (i5 == 0) {
                    rj6 rj6Var3 = (rj6) dVarE;
                    int iK03 = n56.k0(bArr, iI0, ni6Var);
                    rj6Var3.h(ri6.c(ni6Var.b));
                    while (iK03 < i2) {
                        int iI010 = n56.i0(bArr, iK03, ni6Var);
                        if (i3 != ni6Var.a) {
                            return iK03;
                        }
                        iK03 = n56.k0(bArr, iI010, ni6Var);
                        rj6Var3.h(ri6.c(ni6Var.b));
                    }
                    return iK03;
                }
                break;
            case 49:
                if (i5 == 3) {
                    qk6 qk6VarP = p(i6);
                    int i20 = (i3 & (-8)) | 4;
                    iI0 = n56.S(qk6VarP, bArr, i, i2, i20, ni6Var);
                    dVarE.add(ni6Var.c);
                    while (iI0 < i2) {
                        int iI011 = n56.i0(bArr, iI0, ni6Var);
                        if (i3 != ni6Var.a) {
                            break;
                        } else {
                            iI0 = n56.S(qk6VarP, bArr, iI011, i2, i20, ni6Var);
                            dVarE.add(ni6Var.c);
                        }
                    }
                    break;
                }
                break;
        }
        return iI0;
    }

    public final int O(int i) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return W(i, 0);
    }

    public final <E> void P(Object obj, long j, ok6 ok6Var, qk6<E> qk6Var, yi6 yi6Var) throws IOException {
        ok6Var.f(this.n.c(obj, j), qk6Var, yi6Var);
    }

    public final <E> void Q(Object obj, int i, ok6 ok6Var, qk6<E> qk6Var, yi6 yi6Var) throws IOException {
        ok6Var.j(this.n.c(obj, D(i)), qk6Var, yi6Var);
    }

    public final void R(Object obj, int i, ok6 ok6Var) throws IOException {
        if ((536870912 & i) != 0) {
            cl6.e.q(obj, D(i), ok6Var.L());
        } else if (this.g) {
            cl6.e.q(obj, D(i), ok6Var.x());
        } else {
            cl6.e.q(obj, D(i), ok6Var.D());
        }
    }

    public final void S(Object obj, int i, ok6 ok6Var) throws IOException {
        if ((536870912 & i) != 0) {
            ok6Var.C(this.n.c(obj, D(i)));
        } else {
            ok6Var.z(this.n.c(obj, D(i)));
        }
    }

    public final void U(T t, int i) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        cl6.e.o(t, j, (1 << (i2 >>> 20)) | cl6.l(t, j));
    }

    public final void V(T t, int i, int i2) {
        cl6.e.o(t, this.a[i2 + 2] & 1048575, i);
    }

    public final int W(int i, int i2) {
        int length = (this.a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.a[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final int Y(int i) {
        return this.a[i + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Z(T r18, defpackage.hl6 r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.Z(java.lang.Object, hl6):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x01cc  */
    @Override // defpackage.qk6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.a(java.lang.Object, java.lang.Object):boolean");
    }

    public final <K, V> void a0(hl6 hl6Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            tj6.a<?, ?> aVarD = this.q.d(this.b[(i2 / 3) * 2]);
            Map<?, ?> mapI = this.q.i(obj);
            ui6 ui6Var = (ui6) hl6Var;
            Objects.requireNonNull(ui6Var.a);
            for (Map.Entry<?, ?> entry : mapI.entrySet()) {
                ui6Var.a.Y(i, 2);
                ui6Var.a.a0(tj6.a(aVarD, entry.getKey(), entry.getValue()));
                tj6.b(ui6Var.a, aVarD, entry.getKey(), entry.getValue());
            }
        }
    }

    @Override // defpackage.qk6
    public void b(T t, T t2) {
        Objects.requireNonNull(t2);
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                yk6<?, ?> yk6Var = this.o;
                Class<?> cls = sk6.a;
                yk6Var.o(t, yk6Var.k(yk6Var.g(t), yk6Var.g(t2)));
                if (this.f) {
                    sk6.A(this.p, t, t2);
                    return;
                }
                return;
            }
            int i2 = iArr[i + 1];
            long jD = D(i2);
            int i3 = this.a[i];
            switch (X(i2)) {
                case 0:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.t(t, jD, cl6.j(t2, jD));
                        U(t, i);
                        break;
                    }
                case 1:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.n(t, jD, cl6.k(t2, jD));
                        U(t, i);
                        break;
                    }
                case 2:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.w(t, jD, cl6.m(t2, jD));
                        U(t, i);
                        break;
                    }
                case 3:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.w(t, jD, cl6.m(t2, jD));
                        U(t, i);
                        break;
                    }
                case 4:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.o(t, jD, cl6.l(t2, jD));
                        U(t, i);
                        break;
                    }
                case 5:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.w(t, jD, cl6.m(t2, jD));
                        U(t, i);
                        break;
                    }
                case 6:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.o(t, jD, cl6.l(t2, jD));
                        U(t, i);
                        break;
                    }
                case 7:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.k(t, jD, cl6.f(t2, jD));
                        U(t, i);
                        break;
                    }
                case 8:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.q(t, jD, cl6.n(t2, jD));
                        U(t, i);
                        break;
                    }
                case 9:
                    z(t, t2, i);
                    break;
                case 10:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.q(t, jD, cl6.n(t2, jD));
                        U(t, i);
                        break;
                    }
                case 11:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.o(t, jD, cl6.l(t2, jD));
                        U(t, i);
                        break;
                    }
                case 12:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.o(t, jD, cl6.l(t2, jD));
                        U(t, i);
                        break;
                    }
                case 13:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.o(t, jD, cl6.l(t2, jD));
                        U(t, i);
                        break;
                    }
                case 14:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.w(t, jD, cl6.m(t2, jD));
                        U(t, i);
                        break;
                    }
                case 15:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.e.o(t, jD, cl6.l(t2, jD));
                        U(t, i);
                        break;
                    }
                case 16:
                    if (!t(t2, i)) {
                        break;
                    } else {
                        cl6.w(t, jD, cl6.m(t2, jD));
                        U(t, i);
                        break;
                    }
                case 17:
                    z(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.n.b(t, t2, jD);
                    break;
                case 50:
                    vj6 vj6Var = this.q;
                    Class<?> cls2 = sk6.a;
                    cl6.e.q(t, jD, vj6Var.b(cl6.n(t, jD), cl6.n(t2, jD)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (!v(t2, i3, i)) {
                        break;
                    } else {
                        cl6.e.q(t, jD, cl6.n(t2, jD));
                        V(t, i3, i);
                        break;
                    }
                case 60:
                    A(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!v(t2, i3, i)) {
                        break;
                    } else {
                        cl6.e.q(t, jD, cl6.n(t2, jD));
                        V(t, i3, i);
                        break;
                    }
                case 68:
                    A(t, t2, i);
                    break;
            }
            i += 3;
        }
    }

    public final void b0(int i, Object obj, hl6 hl6Var) throws IOException {
        if (obj instanceof String) {
            ((ui6) hl6Var).a.W(i, (String) obj);
        } else {
            ((ui6) hl6Var).a.K(i, (qi6) obj);
        }
    }

    @Override // defpackage.qk6
    public T c() {
        return (T) this.m.a(this.e);
    }

    @Override // defpackage.qk6
    public int d(T t) {
        int i;
        int iB;
        int length = this.a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iY = Y(i3);
            int i4 = this.a[i3];
            long jD = D(iY);
            int iHashCode = 37;
            switch (X(iY)) {
                case 0:
                    i = i2 * 53;
                    iB = jj6.b(Double.doubleToLongBits(cl6.j(t, jD)));
                    i2 = iB + i;
                    break;
                case 1:
                    i = i2 * 53;
                    iB = Float.floatToIntBits(cl6.k(t, jD));
                    i2 = iB + i;
                    break;
                case 2:
                    i = i2 * 53;
                    iB = jj6.b(cl6.m(t, jD));
                    i2 = iB + i;
                    break;
                case 3:
                    i = i2 * 53;
                    iB = jj6.b(cl6.m(t, jD));
                    i2 = iB + i;
                    break;
                case 4:
                    i = i2 * 53;
                    iB = cl6.l(t, jD);
                    i2 = iB + i;
                    break;
                case 5:
                    i = i2 * 53;
                    iB = jj6.b(cl6.m(t, jD));
                    i2 = iB + i;
                    break;
                case 6:
                    i = i2 * 53;
                    iB = cl6.l(t, jD);
                    i2 = iB + i;
                    break;
                case 7:
                    i = i2 * 53;
                    iB = jj6.a(cl6.f(t, jD));
                    i2 = iB + i;
                    break;
                case 8:
                    i = i2 * 53;
                    iB = ((String) cl6.n(t, jD)).hashCode();
                    i2 = iB + i;
                    break;
                case 9:
                    Object objN = cl6.n(t, jD);
                    if (objN != null) {
                        iHashCode = objN.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iB = cl6.n(t, jD).hashCode();
                    i2 = iB + i;
                    break;
                case 11:
                    i = i2 * 53;
                    iB = cl6.l(t, jD);
                    i2 = iB + i;
                    break;
                case 12:
                    i = i2 * 53;
                    iB = cl6.l(t, jD);
                    i2 = iB + i;
                    break;
                case 13:
                    i = i2 * 53;
                    iB = cl6.l(t, jD);
                    i2 = iB + i;
                    break;
                case 14:
                    i = i2 * 53;
                    iB = jj6.b(cl6.m(t, jD));
                    i2 = iB + i;
                    break;
                case 15:
                    i = i2 * 53;
                    iB = cl6.l(t, jD);
                    i2 = iB + i;
                    break;
                case 16:
                    i = i2 * 53;
                    iB = jj6.b(cl6.m(t, jD));
                    i2 = iB + i;
                    break;
                case 17:
                    Object objN2 = cl6.n(t, jD);
                    if (objN2 != null) {
                        iHashCode = objN2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iB = cl6.n(t, jD).hashCode();
                    i2 = iB + i;
                    break;
                case 50:
                    i = i2 * 53;
                    iB = cl6.n(t, jD).hashCode();
                    i2 = iB + i;
                    break;
                case 51:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = jj6.b(Double.doubleToLongBits(F(t, jD)));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = Float.floatToIntBits(G(t, jD));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = jj6.b(I(t, jD));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = jj6.b(I(t, jD));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = H(t, jD);
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = jj6.b(I(t, jD));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = H(t, jD);
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = jj6.a(E(t, jD));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = ((String) cl6.n(t, jD)).hashCode();
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = cl6.n(t, jD).hashCode();
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = cl6.n(t, jD).hashCode();
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = H(t, jD);
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = H(t, jD);
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = H(t, jD);
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = jj6.b(I(t, jD));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = H(t, jD);
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = jj6.b(I(t, jD));
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (v(t, i4, i3)) {
                        i = i2 * 53;
                        iB = cl6.n(t, jD).hashCode();
                        i2 = iB + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int iHashCode2 = this.o.g(t).hashCode() + (i2 * 53);
        return this.f ? (iHashCode2 * 53) + this.p.c(t).hashCode() : iHashCode2;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // defpackage.qk6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(T r13, defpackage.hl6 r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.e(java.lang.Object, hl6):void");
    }

    @Override // defpackage.qk6
    public void f(T t) {
        int i;
        int i2 = this.k;
        while (true) {
            i = this.l;
            if (i2 >= i) {
                break;
            }
            long jD = D(Y(this.j[i2]));
            Object objN = cl6.n(t, jD);
            if (objN != null) {
                cl6.e.q(t, jD, this.q.c(objN));
            }
            i2++;
        }
        int length = this.j.length;
        while (i < length) {
            this.n.a(t, this.j[i]);
            i++;
        }
        this.o.j(t);
        if (this.f) {
            this.p.f(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e9  */
    /* JADX WARN: Type inference failed for: r0v13, types: [qk6] */
    /* JADX WARN: Type inference failed for: r0v20, types: [qk6] */
    /* JADX WARN: Type inference failed for: r1v10, types: [qk6] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27, types: [qk6] */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    @Override // defpackage.qk6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(T r19) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.g(java.lang.Object):boolean");
    }

    @Override // defpackage.qk6
    public void h(T t, ok6 ok6Var, yi6 yi6Var) throws IOException {
        Objects.requireNonNull(yi6Var);
        x(this.o, this.p, t, ok6Var, yi6Var);
    }

    @Override // defpackage.qk6
    public void i(T t, byte[] bArr, int i, int i2, ni6 ni6Var) throws IOException {
        if (this.h) {
            M(t, bArr, i, i2, ni6Var);
        } else {
            L(t, bArr, i, i2, 0, ni6Var);
        }
    }

    @Override // defpackage.qk6
    public int j(T t) {
        return this.h ? s(t) : r(t);
    }

    public final boolean k(T t, T t2, int i) {
        return t(t, i) == t(t2, i);
    }

    public final int l(byte[] bArr, int i, int i2, fl6 fl6Var, Class<?> cls, ni6 ni6Var) throws IOException {
        switch (fl6Var.ordinal()) {
            case 0:
                ni6Var.c = Double.valueOf(Double.longBitsToDouble(n56.R(bArr, i)));
                return i + 8;
            case 1:
                ni6Var.c = Float.valueOf(Float.intBitsToFloat(n56.Q(bArr, i)));
                return i + 4;
            case 2:
            case 3:
                int iK0 = n56.k0(bArr, i, ni6Var);
                ni6Var.c = Long.valueOf(ni6Var.b);
                return iK0;
            case 4:
            case 12:
            case 13:
                int iI0 = n56.i0(bArr, i, ni6Var);
                ni6Var.c = Integer.valueOf(ni6Var.a);
                return iI0;
            case 5:
            case 15:
                ni6Var.c = Long.valueOf(n56.R(bArr, i));
                return i + 8;
            case 6:
            case 14:
                ni6Var.c = Integer.valueOf(n56.Q(bArr, i));
                return i + 4;
            case 7:
                int iK02 = n56.k0(bArr, i, ni6Var);
                ni6Var.c = Boolean.valueOf(ni6Var.b != 0);
                return iK02;
            case 8:
                return n56.f0(bArr, i, ni6Var);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return n56.T(lk6.c.a(cls), bArr, i, i2, ni6Var);
            case 11:
                return n56.P(bArr, i, ni6Var);
            case 16:
                int iI02 = n56.i0(bArr, i, ni6Var);
                ni6Var.c = Integer.valueOf(ri6.b(ni6Var.a));
                return iI02;
            case 17:
                int iK03 = n56.k0(bArr, i, ni6Var);
                ni6Var.c = Long.valueOf(ri6.c(ni6Var.b));
                return iK03;
        }
    }

    public final <UT, UB> UB m(Object obj, int i, UB ub, yk6<UT, UB> yk6Var) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        Object objN = cl6.n(obj, D(iArr[i + 1]));
        if (objN == null) {
            return ub;
        }
        int i3 = (i / 3) * 2;
        jj6.b bVar = (jj6.b) this.b[i3 + 1];
        if (bVar == null) {
            return ub;
        }
        Map<?, ?> mapE = this.q.e(objN);
        tj6.a<?, ?> aVarD = this.q.d(this.b[i3]);
        Iterator<Map.Entry<?, ?>> it = mapE.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<?, ?> next = it.next();
            if (!bVar.a(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = yk6Var.m();
                }
                int iA = tj6.a(aVarD, next.getKey(), next.getValue());
                byte[] bArr = new byte[iA];
                Logger logger = ti6.b;
                ti6.c cVar = new ti6.c(bArr, 0, iA);
                try {
                    Object key = next.getKey();
                    Object value = next.getValue();
                    cj6.p(cVar, aVarD.a, 1, key);
                    cj6.p(cVar, aVarD.c, 2, value);
                    cVar.b();
                    yk6Var.d(ub, i2, new qi6.h(bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    public final jj6.b n(int i) {
        return (jj6.b) this.b[((i / 3) * 2) + 1];
    }

    public final Object o(int i) {
        return this.b[(i / 3) * 2];
    }

    public final qk6 p(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.b;
        qk6 qk6Var = (qk6) objArr[i2];
        if (qk6Var != null) {
            return qk6Var;
        }
        qk6<T> qk6VarA = lk6.c.a((Class) objArr[i2 + 1]);
        this.b[i2] = qk6VarA;
        return qk6VarA;
    }

    public final int r(T t) {
        int i;
        int i2;
        int iF;
        int iD;
        int iH;
        int iY;
        int iA;
        Unsafe unsafe = s;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        int i7 = 0;
        while (i4 < this.a.length) {
            int iY2 = Y(i4);
            int i8 = this.a[i4];
            int iX = X(iY2);
            if (iX <= 17) {
                i = this.a[i4 + 2];
                int i9 = i3 & i;
                i2 = 1 << (i >>> 20);
                if (i9 != i6) {
                    i7 = unsafe.getInt(t, i9);
                    i6 = i9;
                }
            } else {
                i = (!this.i || iX < dj6.P.e || iX > dj6.c0.e) ? 0 : i3 & this.a[i4 + 2];
                i2 = 0;
            }
            long jD = D(iY2);
            int i10 = i6;
            int i11 = i7;
            switch (iX) {
                case 0:
                    if ((i11 & i2) != 0) {
                        iF = ti6.f(i8, 0.0d);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i11 & i2) != 0) {
                        iF = ti6.j(i8, 0.0f);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i11 & i2) != 0) {
                        iF = ti6.n(i8, unsafe.getLong(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i11 & i2) != 0) {
                        iF = ti6.B(i8, unsafe.getLong(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i11 & i2) != 0) {
                        iF = ti6.l(i8, unsafe.getInt(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i11 & i2) != 0) {
                        iF = ti6.i(i8, 0L);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i11 & i2) != 0) {
                        iF = ti6.h(i8, 0);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i11 & i2) != 0) {
                        iF = ti6.c(i8, true);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i11 & i2) != 0) {
                        Object object = unsafe.getObject(t, jD);
                        iD = object instanceof qi6 ? ti6.d(i8, (qi6) object) : ti6.w(i8, (String) object);
                        i5 += iD;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i11 & i2) != 0) {
                        iF = sk6.n(i8, unsafe.getObject(t, jD), p(i4));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i11 & i2) != 0) {
                        iF = ti6.d(i8, (qi6) unsafe.getObject(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i11 & i2) != 0) {
                        iF = ti6.z(i8, unsafe.getInt(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i11 & i2) != 0) {
                        iF = ti6.g(i8, unsafe.getInt(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i11 & i2) != 0) {
                        iF = ti6.q(i8, 0);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i11 & i2) != 0) {
                        iF = ti6.r(i8, 0L);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i11 & i2) != 0) {
                        iF = ti6.s(i8, unsafe.getInt(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i11 & i2) != 0) {
                        iF = ti6.u(i8, unsafe.getLong(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i11 & i2) != 0) {
                        iF = ti6.k(i8, (ak6) unsafe.getObject(t, jD), p(i4));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    iF = sk6.g(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 19:
                    iF = sk6.e(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 20:
                    iF = sk6.l(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 21:
                    iF = sk6.w(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 22:
                    iF = sk6.j(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 23:
                    iF = sk6.g(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 24:
                    iF = sk6.e(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 25:
                    iF = sk6.a(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 26:
                    iF = sk6.t(i8, (List) unsafe.getObject(t, jD));
                    i5 += iF;
                    break;
                case 27:
                    iF = sk6.o(i8, (List) unsafe.getObject(t, jD), p(i4));
                    i5 += iF;
                    break;
                case 28:
                    iF = sk6.b(i8, (List) unsafe.getObject(t, jD));
                    i5 += iF;
                    break;
                case 29:
                    iF = sk6.u(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 30:
                    iF = sk6.c(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 31:
                    iF = sk6.e(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 32:
                    iF = sk6.g(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 33:
                    iF = sk6.p(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 34:
                    iF = sk6.r(i8, (List) unsafe.getObject(t, jD), false);
                    i5 += iF;
                    break;
                case 35:
                    iH = sk6.h((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 36:
                    iH = sk6.f((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 37:
                    iH = sk6.m((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 38:
                    iH = sk6.x((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 39:
                    iH = sk6.k((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 40:
                    iH = sk6.h((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 41:
                    iH = sk6.f((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 42:
                    List list = (List) unsafe.getObject(t, jD);
                    Class<?> cls = sk6.a;
                    iH = list.size();
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 43:
                    iH = sk6.v((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 44:
                    iH = sk6.d((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 45:
                    iH = sk6.f((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 46:
                    iH = sk6.h((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 47:
                    iH = sk6.q((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 48:
                    iH = sk6.s((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i, iH);
                        }
                        iY = ti6.y(i8);
                        iA = ti6.A(iH);
                        i5 += iA + iY + iH;
                        break;
                    }
                case 49:
                    iF = sk6.i(i8, (List) unsafe.getObject(t, jD), p(i4));
                    i5 += iF;
                    break;
                case 50:
                    iF = this.q.g(i8, unsafe.getObject(t, jD), o(i4));
                    i5 += iF;
                    break;
                case 51:
                    if (v(t, i8, i4)) {
                        iF = ti6.f(i8, 0.0d);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (v(t, i8, i4)) {
                        iF = ti6.j(i8, 0.0f);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (v(t, i8, i4)) {
                        iF = ti6.n(i8, I(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (v(t, i8, i4)) {
                        iF = ti6.B(i8, I(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (v(t, i8, i4)) {
                        iF = ti6.l(i8, H(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (v(t, i8, i4)) {
                        iF = ti6.i(i8, 0L);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (v(t, i8, i4)) {
                        iF = ti6.h(i8, 0);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (v(t, i8, i4)) {
                        iF = ti6.c(i8, true);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (v(t, i8, i4)) {
                        Object object2 = unsafe.getObject(t, jD);
                        iD = object2 instanceof qi6 ? ti6.d(i8, (qi6) object2) : ti6.w(i8, (String) object2);
                        i5 += iD;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (v(t, i8, i4)) {
                        iF = sk6.n(i8, unsafe.getObject(t, jD), p(i4));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (v(t, i8, i4)) {
                        iF = ti6.d(i8, (qi6) unsafe.getObject(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (v(t, i8, i4)) {
                        iF = ti6.z(i8, H(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (v(t, i8, i4)) {
                        iF = ti6.g(i8, H(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (v(t, i8, i4)) {
                        iF = ti6.q(i8, 0);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (v(t, i8, i4)) {
                        iF = ti6.r(i8, 0L);
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (v(t, i8, i4)) {
                        iF = ti6.s(i8, H(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (v(t, i8, i4)) {
                        iF = ti6.u(i8, I(t, jD));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (v(t, i8, i4)) {
                        iF = ti6.k(i8, (ak6) unsafe.getObject(t, jD), p(i4));
                        i5 += iF;
                        break;
                    } else {
                        break;
                    }
            }
            i4 += 3;
            i3 = 1048575;
            i6 = i10;
            i7 = i11;
        }
        int iE = 0;
        yk6<?, ?> yk6Var = this.o;
        int iH2 = yk6Var.h(yk6Var.g(t)) + i5;
        if (!this.f) {
            return iH2;
        }
        cj6<T> cj6VarC = this.p.c(t);
        for (int i12 = 0; i12 < cj6VarC.a.d(); i12++) {
            Map.Entry entryC = cj6VarC.a.c(i12);
            iE += cj6.e((cj6.a) entryC.getKey(), entryC.getValue());
        }
        for (Map.Entry entry : cj6VarC.a.e()) {
            iE += cj6.e((cj6.a) entry.getKey(), entry.getValue());
        }
        return iH2 + iE;
    }

    public final int s(T t) {
        int iF;
        int iH;
        int iY;
        int iA;
        Unsafe unsafe = s;
        int i = 0;
        for (int i2 = 0; i2 < this.a.length; i2 += 3) {
            int iY2 = Y(i2);
            int iX = X(iY2);
            int i3 = this.a[i2];
            long jD = D(iY2);
            int i4 = (iX < dj6.P.e || iX > dj6.c0.e) ? 0 : this.a[i2 + 2] & 1048575;
            switch (iX) {
                case 0:
                    if (t(t, i2)) {
                        iF = ti6.f(i3, 0.0d);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (t(t, i2)) {
                        iF = ti6.j(i3, 0.0f);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (t(t, i2)) {
                        iF = ti6.n(i3, cl6.m(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (t(t, i2)) {
                        iF = ti6.B(i3, cl6.m(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (t(t, i2)) {
                        iF = ti6.l(i3, cl6.l(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (t(t, i2)) {
                        iF = ti6.i(i3, 0L);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (t(t, i2)) {
                        iF = ti6.h(i3, 0);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (t(t, i2)) {
                        iF = ti6.c(i3, true);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (t(t, i2)) {
                        Object objN = cl6.n(t, jD);
                        iF = objN instanceof qi6 ? ti6.d(i3, (qi6) objN) : ti6.w(i3, (String) objN);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (t(t, i2)) {
                        iF = sk6.n(i3, cl6.n(t, jD), p(i2));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (t(t, i2)) {
                        iF = ti6.d(i3, (qi6) cl6.n(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (t(t, i2)) {
                        iF = ti6.z(i3, cl6.l(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (t(t, i2)) {
                        iF = ti6.g(i3, cl6.l(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (t(t, i2)) {
                        iF = ti6.q(i3, 0);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (t(t, i2)) {
                        iF = ti6.r(i3, 0L);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (t(t, i2)) {
                        iF = ti6.s(i3, cl6.l(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (t(t, i2)) {
                        iF = ti6.u(i3, cl6.m(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (t(t, i2)) {
                        iF = ti6.k(i3, (ak6) cl6.n(t, jD), p(i2));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    iF = sk6.g(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 19:
                    iF = sk6.e(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 20:
                    iF = sk6.l(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 21:
                    iF = sk6.w(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 22:
                    iF = sk6.j(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 23:
                    iF = sk6.g(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 24:
                    iF = sk6.e(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 25:
                    iF = sk6.a(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 26:
                    iF = sk6.t(i3, w(t, jD));
                    i += iF;
                    break;
                case 27:
                    iF = sk6.o(i3, w(t, jD), p(i2));
                    i += iF;
                    break;
                case 28:
                    iF = sk6.b(i3, w(t, jD));
                    i += iF;
                    break;
                case 29:
                    iF = sk6.u(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 30:
                    iF = sk6.c(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 31:
                    iF = sk6.e(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 32:
                    iF = sk6.g(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 33:
                    iF = sk6.p(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 34:
                    iF = sk6.r(i3, w(t, jD), false);
                    i += iF;
                    break;
                case 35:
                    iH = sk6.h((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 36:
                    iH = sk6.f((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 37:
                    iH = sk6.m((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 38:
                    iH = sk6.x((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 39:
                    iH = sk6.k((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 40:
                    iH = sk6.h((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 41:
                    iH = sk6.f((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 42:
                    List list = (List) unsafe.getObject(t, jD);
                    Class<?> cls = sk6.a;
                    iH = list.size();
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 43:
                    iH = sk6.v((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 44:
                    iH = sk6.d((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 45:
                    iH = sk6.f((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 46:
                    iH = sk6.h((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 47:
                    iH = sk6.q((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 48:
                    iH = sk6.s((List) unsafe.getObject(t, jD));
                    if (iH <= 0) {
                        break;
                    } else {
                        if (this.i) {
                            unsafe.putInt(t, i4, iH);
                        }
                        iY = ti6.y(i3);
                        iA = ti6.A(iH);
                        i = iA + iY + iH + i;
                        break;
                    }
                case 49:
                    iF = sk6.i(i3, w(t, jD), p(i2));
                    i += iF;
                    break;
                case 50:
                    iF = this.q.g(i3, cl6.n(t, jD), o(i2));
                    i += iF;
                    break;
                case 51:
                    if (v(t, i3, i2)) {
                        iF = ti6.f(i3, 0.0d);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (v(t, i3, i2)) {
                        iF = ti6.j(i3, 0.0f);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (v(t, i3, i2)) {
                        iF = ti6.n(i3, I(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (v(t, i3, i2)) {
                        iF = ti6.B(i3, I(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (v(t, i3, i2)) {
                        iF = ti6.l(i3, H(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (v(t, i3, i2)) {
                        iF = ti6.i(i3, 0L);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (v(t, i3, i2)) {
                        iF = ti6.h(i3, 0);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (v(t, i3, i2)) {
                        iF = ti6.c(i3, true);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (v(t, i3, i2)) {
                        Object objN2 = cl6.n(t, jD);
                        iF = objN2 instanceof qi6 ? ti6.d(i3, (qi6) objN2) : ti6.w(i3, (String) objN2);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (v(t, i3, i2)) {
                        iF = sk6.n(i3, cl6.n(t, jD), p(i2));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (v(t, i3, i2)) {
                        iF = ti6.d(i3, (qi6) cl6.n(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (v(t, i3, i2)) {
                        iF = ti6.z(i3, H(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (v(t, i3, i2)) {
                        iF = ti6.g(i3, H(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (v(t, i3, i2)) {
                        iF = ti6.q(i3, 0);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (v(t, i3, i2)) {
                        iF = ti6.r(i3, 0L);
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (v(t, i3, i2)) {
                        iF = ti6.s(i3, H(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (v(t, i3, i2)) {
                        iF = ti6.u(i3, I(t, jD));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (v(t, i3, i2)) {
                        iF = ti6.k(i3, (ak6) cl6.n(t, jD), p(i2));
                        i += iF;
                        break;
                    } else {
                        break;
                    }
            }
        }
        yk6<?, ?> yk6Var = this.o;
        return yk6Var.h(yk6Var.g(t)) + i;
    }

    public final boolean t(T t, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 2];
        long j = 1048575 & i2;
        if (j != 1048575) {
            return (cl6.l(t, j) & (1 << (i2 >>> 20))) != 0;
        }
        int i3 = iArr[i + 1];
        long jD = D(i3);
        switch (X(i3)) {
            case 0:
                return cl6.j(t, jD) != 0.0d;
            case 1:
                return cl6.k(t, jD) != 0.0f;
            case 2:
                return cl6.m(t, jD) != 0;
            case 3:
                return cl6.m(t, jD) != 0;
            case 4:
                return cl6.l(t, jD) != 0;
            case 5:
                return cl6.m(t, jD) != 0;
            case 6:
                return cl6.l(t, jD) != 0;
            case 7:
                return cl6.f(t, jD);
            case 8:
                Object objN = cl6.n(t, jD);
                if (objN instanceof String) {
                    return !((String) objN).isEmpty();
                }
                if (objN instanceof qi6) {
                    return !qi6.f.equals(objN);
                }
                throw new IllegalArgumentException();
            case 9:
                return cl6.n(t, jD) != null;
            case 10:
                return !qi6.f.equals(cl6.n(t, jD));
            case 11:
                return cl6.l(t, jD) != 0;
            case 12:
                return cl6.l(t, jD) != 0;
            case 13:
                return cl6.l(t, jD) != 0;
            case 14:
                return cl6.m(t, jD) != 0;
            case 15:
                return cl6.l(t, jD) != 0;
            case 16:
                return cl6.m(t, jD) != 0;
            case 17:
                return cl6.n(t, jD) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean u(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? t(t, i) : (i3 & i4) != 0;
    }

    public final boolean v(T t, int i, int i2) {
        return cl6.l(t, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
    
        r0 = r16.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        if (r0 >= r16.l) goto L359;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
    
        r13 = m(r19, r16.j[r0], r13, r17);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        if (r13 == null) goto L363;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
    
        r17.n(r19, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <UT, UB, ET extends cj6.a<ET>> void x(defpackage.yk6<UT, UB> r17, defpackage.zi6<ET> r18, T r19, defpackage.ok6 r20, defpackage.yi6 r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ck6.x(yk6, zi6, java.lang.Object, ok6, yi6):void");
    }

    public final <K, V> void y(Object obj, int i, Object obj2, yi6 yi6Var, ok6 ok6Var) throws IOException {
        long jD = D(this.a[i + 1]);
        Object objN = cl6.n(obj, jD);
        if (objN == null) {
            objN = this.q.f(obj2);
            cl6.e.q(obj, jD, objN);
        } else if (this.q.h(objN)) {
            Object objF = this.q.f(obj2);
            this.q.b(objF, objN);
            cl6.e.q(obj, jD, objF);
            objN = objF;
        }
        ok6Var.B(this.q.e(objN), this.q.d(obj2), yi6Var);
    }

    public final void z(T t, T t2, int i) {
        long jD = D(this.a[i + 1]);
        if (t(t2, i)) {
            Object objN = cl6.n(t, jD);
            Object objN2 = cl6.n(t2, jD);
            if (objN != null && objN2 != null) {
                cl6.e.q(t, jD, jj6.c(objN, objN2));
                U(t, i);
            } else if (objN2 != null) {
                cl6.e.q(t, jD, objN2);
                U(t, i);
            }
        }
    }
}
