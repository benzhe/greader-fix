package defpackage;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import org.apache.commons.codec.binary.Base64;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class fa4<T> implements na4<T> {
    public static final int[] o = new int[0];
    public static final Unsafe p = lb4.t();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final da4 e;
    public final boolean f;
    public final boolean g;
    public final int[] h;
    public final int i;
    public final int j;
    public final s94 k;
    public final ab4<?, ?> l;
    public final q84<?> m;
    public final z94 n;

    public fa4(int[] iArr, Object[] objArr, int i, int i2, da4 da4Var, boolean z, int[] iArr2, int i3, int i4, ha4 ha4Var, s94 s94Var, ab4 ab4Var, q84 q84Var, z94 z94Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = z;
        this.f = q84Var != null && q84Var.a(da4Var);
        this.h = iArr2;
        this.i = i3;
        this.j = i4;
        this.k = s94Var;
        this.l = ab4Var;
        this.m = q84Var;
        this.e = da4Var;
        this.n = z94Var;
    }

    public static fa4 B(ba4 ba4Var, ha4 ha4Var, s94 s94Var, ab4 ab4Var, q84 q84Var, z94 z94Var) {
        if (ba4Var instanceof ma4) {
            return C((ma4) ba4Var, ha4Var, s94Var, ab4Var, q84Var, z94Var);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0392  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> defpackage.fa4<T> C(defpackage.ma4 r35, defpackage.ha4 r36, defpackage.s94 r37, defpackage.ab4<?, ?> r38, defpackage.q84<?> r39, defpackage.z94 r40) {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fa4.C(ma4, ha4, s94, ab4, q84, z94):fa4");
    }

    public static Field D(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(string).length());
            jo.J(sb, "Field ", str, " for ", name);
            throw new RuntimeException(jo.s(sb, " not found. Known fields are ", string));
        }
    }

    public static <T> double l(T t, long j) {
        return ((Double) lb4.q(t, j)).doubleValue();
    }

    public static <T> float m(T t, long j) {
        return ((Float) lb4.q(t, j)).floatValue();
    }

    public static <T> int n(T t, long j) {
        return ((Integer) lb4.q(t, j)).intValue();
    }

    public static <T> long o(T t, long j) {
        return ((Long) lb4.q(t, j)).longValue();
    }

    public static <T> boolean p(T t, long j) {
        return ((Boolean) lb4.q(t, j)).booleanValue();
    }

    public static final void y(int i, Object obj, m84 m84Var) throws IOException {
        if (obj instanceof String) {
            m84Var.a.m(i, (String) obj);
        } else {
            m84Var.a.n(i, (g84) obj);
        }
    }

    public static bb4 z(Object obj) {
        c94 c94Var = (c94) obj;
        bb4 bb4Var = c94Var.zzc;
        if (bb4Var != bb4.f) {
            return bb4Var;
        }
        bb4 bb4VarA = bb4.a();
        c94Var.zzc = bb4VarA;
        return bb4VarA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x04b1, code lost:
    
        if (r5 == 1048575) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x04b3, code lost:
    
        r30.putInt(r12, r5, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04b9, code lost:
    
        r3 = r8.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x04bd, code lost:
    
        if (r3 >= r8.j) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x04bf, code lost:
    
        r4 = r8.h[r3];
        r5 = r8.a[r4];
        r5 = defpackage.lb4.q(r12, r8.j(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x04d1, code lost:
    
        if (r5 != null) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x04d8, code lost:
    
        if (r8.N(r4) != null) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x04da, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x04dd, code lost:
    
        r5 = (defpackage.y94) r5;
        r0 = (defpackage.x94) r8.M(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x04e5, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04e6, code lost:
    
        if (r1 != 0) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04ea, code lost:
    
        if (r0 != r36) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x04f1, code lost:
    
        throw defpackage.l94.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x04f4, code lost:
    
        if (r0 > r36) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x04f6, code lost:
    
        if (r9 != r1) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x04f8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x04fd, code lost:
    
        throw defpackage.l94.c();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A(T r33, byte[] r34, int r35, int r36, int r37, defpackage.w74 r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fa4.A(java.lang.Object, byte[], int, int, int, w74):int");
    }

    public final void E(T t, T t2, int i) {
        long j = this.a[i + 1] & 1048575;
        if (s(t2, i)) {
            Object objQ = lb4.q(t, j);
            Object objQ2 = lb4.q(t2, j);
            if (objQ != null && objQ2 != null) {
                lb4.e.s(t, j, j94.c(objQ, objQ2));
                t(t, i);
            } else if (objQ2 != null) {
                lb4.e.s(t, j, objQ2);
                t(t, i);
            }
        }
    }

    public final void F(T t, T t2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long j = i2 & 1048575;
        if (u(t2, i3, i)) {
            Object objQ = u(t, i3, i) ? lb4.q(t, j) : null;
            Object objQ2 = lb4.q(t2, j);
            if (objQ != null && objQ2 != null) {
                lb4.e.s(t, j, j94.c(objQ, objQ2));
                v(t, i3, i);
            } else if (objQ2 != null) {
                lb4.e.s(t, j, objQ2);
                v(t, i3, i);
            }
        }
    }

    public final int G(T t) {
        int i;
        int iV;
        int iV2;
        int iV3;
        int iY;
        int iV4;
        int iW;
        int iV5;
        int iV6;
        int iJ;
        int iX;
        int iN;
        int iV7;
        int iK;
        int iV8;
        int iX2;
        int iV9;
        int iJ2;
        int iX3;
        Unsafe unsafe = p;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        int i6 = 0;
        while (i3 < this.a.length) {
            int iJ3 = j(i3);
            int[] iArr = this.a;
            int i7 = iArr[i3];
            int i8 = (iJ3 >>> 20) & Base64.BASELENGTH;
            if (i8 <= 17) {
                int i9 = iArr[i3 + 2];
                int i10 = i9 & i2;
                i = 1 << (i9 >>> 20);
                if (i10 != i5) {
                    i6 = unsafe.getInt(t, i10);
                    i5 = i10;
                }
            } else {
                i = 0;
            }
            long j = i2 & iJ3;
            switch (i8) {
                case 0:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        iV = l84.v(i7);
                        iN = iV + 8;
                        i4 += iN;
                        break;
                    }
                case 1:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        iV2 = l84.v(i7);
                        iN = iV2 + 4;
                        i4 += iN;
                        break;
                    }
                case 2:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(t, j);
                        iV3 = l84.v(i7);
                        iY = l84.y(j2);
                        iN = iV3 + iY;
                        i4 += iN;
                        break;
                    }
                case 3:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(t, j);
                        iV3 = l84.v(i7);
                        iY = l84.y(j3);
                        iN = iV3 + iY;
                        i4 += iN;
                        break;
                    }
                case 4:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        int i11 = unsafe.getInt(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.w(i11);
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 5:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        iV = l84.v(i7);
                        iN = iV + 8;
                        i4 += iN;
                        break;
                    }
                case 6:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        iV2 = l84.v(i7);
                        iN = iV2 + 4;
                        i4 += iN;
                        break;
                    }
                case 7:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        iV5 = l84.v(i7);
                        iN = iV5 + 1;
                        i4 += iN;
                        break;
                    }
                case 8:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(t, j);
                        if (!(object instanceof g84)) {
                            iV4 = l84.v(i7);
                            iW = l84.z((String) object);
                            iN = iW + iV4;
                            i4 += iN;
                            break;
                        } else {
                            iV6 = l84.v(i7);
                            iJ = ((g84) object).j();
                            iX = l84.x(iJ);
                            i4 = iX + iJ + iV6 + i4;
                            break;
                        }
                    }
                case 9:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        iN = pa4.N(i7, unsafe.getObject(t, j), L(i3));
                        i4 += iN;
                        break;
                    }
                case 10:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        g84 g84Var = (g84) unsafe.getObject(t, j);
                        iV6 = l84.v(i7);
                        iJ = g84Var.j();
                        iX = l84.x(iJ);
                        i4 = iX + iJ + iV6 + i4;
                        break;
                    }
                case 11:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        int i12 = unsafe.getInt(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.x(i12);
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 12:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        int i13 = unsafe.getInt(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.w(i13);
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 13:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        iV2 = l84.v(i7);
                        iN = iV2 + 4;
                        i4 += iN;
                        break;
                    }
                case 14:
                    if ((i6 & i) == 0) {
                        break;
                    } else {
                        iV = l84.v(i7);
                        iN = iV + 8;
                        i4 += iN;
                        break;
                    }
                case 15:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        int i14 = unsafe.getInt(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.x(l84.c(i14));
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 16:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(t, j);
                        iV3 = l84.v(i7);
                        iY = l84.y(l84.d(j4));
                        iN = iV3 + iY;
                        i4 += iN;
                        break;
                    }
                case 17:
                    if ((i & i6) == 0) {
                        break;
                    } else {
                        iN = l84.e(i7, (da4) unsafe.getObject(t, j), L(i3));
                        i4 += iN;
                        break;
                    }
                case 18:
                    iN = pa4.L(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 19:
                    iN = pa4.J(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 20:
                    iN = pa4.v(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 21:
                    iN = pa4.x(i7, (List) unsafe.getObject(t, j), false);
                    i4 += iN;
                    break;
                case 22:
                    iN = pa4.D(i7, (List) unsafe.getObject(t, j), false);
                    i4 += iN;
                    break;
                case 23:
                    iN = pa4.L(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 24:
                    iN = pa4.J(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 25:
                    List list = (List) unsafe.getObject(t, j);
                    Class<?> cls = pa4.a;
                    int size = list.size();
                    iV7 = size == 0 ? 0 : (l84.v(i7) + 1) * size;
                    i4 += iV7;
                    break;
                case 26:
                    iN = pa4.M(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 27:
                    iN = pa4.O(i7, (List) unsafe.getObject(t, j), L(i3));
                    i4 += iN;
                    break;
                case 28:
                    iN = pa4.P(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 29:
                    iN = pa4.F(i7, (List) unsafe.getObject(t, j), false);
                    i4 += iN;
                    break;
                case 30:
                    iN = pa4.B(i7, (List) unsafe.getObject(t, j), false);
                    i4 += iN;
                    break;
                case 31:
                    iN = pa4.J(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 32:
                    iN = pa4.L(i7, (List) unsafe.getObject(t, j));
                    i4 += iN;
                    break;
                case 33:
                    iN = pa4.H(i7, (List) unsafe.getObject(t, j), false);
                    i4 += iN;
                    break;
                case 34:
                    iN = pa4.z(i7, (List) unsafe.getObject(t, j), false);
                    i4 += iN;
                    break;
                case 35:
                    iK = pa4.K((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 36:
                    iK = pa4.I((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 37:
                    iK = pa4.u((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 38:
                    iK = pa4.w((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 39:
                    iK = pa4.C((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 40:
                    iK = pa4.K((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 41:
                    iK = pa4.I((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 42:
                    List list2 = (List) unsafe.getObject(t, j);
                    Class<?> cls2 = pa4.a;
                    iK = list2.size();
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 43:
                    iK = pa4.E((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 44:
                    iK = pa4.A((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 45:
                    iK = pa4.I((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 46:
                    iK = pa4.K((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 47:
                    iK = pa4.G((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 48:
                    iK = pa4.y((List) unsafe.getObject(t, j));
                    if (iK <= 0) {
                        break;
                    } else {
                        iV8 = l84.v(i7);
                        iX2 = l84.x(iK);
                        iV7 = iX2 + iV8 + iK;
                        i4 += iV7;
                        break;
                    }
                case 49:
                    iN = pa4.Q(i7, (List) unsafe.getObject(t, j), L(i3));
                    i4 += iN;
                    break;
                case 50:
                    z94.a(i7, unsafe.getObject(t, j), M(i3));
                    break;
                case 51:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iV = l84.v(i7);
                        iN = iV + 8;
                        i4 += iN;
                        break;
                    }
                case 52:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iV2 = l84.v(i7);
                        iN = iV2 + 4;
                        i4 += iN;
                        break;
                    }
                case 53:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        long jO = o(t, j);
                        iV3 = l84.v(i7);
                        iY = l84.y(jO);
                        iN = iV3 + iY;
                        i4 += iN;
                        break;
                    }
                case 54:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        long jO2 = o(t, j);
                        iV3 = l84.v(i7);
                        iY = l84.y(jO2);
                        iN = iV3 + iY;
                        i4 += iN;
                        break;
                    }
                case 55:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        int iN2 = n(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.w(iN2);
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 56:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iV = l84.v(i7);
                        iN = iV + 8;
                        i4 += iN;
                        break;
                    }
                case 57:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iV2 = l84.v(i7);
                        iN = iV2 + 4;
                        i4 += iN;
                        break;
                    }
                case 58:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iV5 = l84.v(i7);
                        iN = iV5 + 1;
                        i4 += iN;
                        break;
                    }
                case 59:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(t, j);
                        if (!(object2 instanceof g84)) {
                            iV4 = l84.v(i7);
                            iW = l84.z((String) object2);
                            iN = iW + iV4;
                            i4 += iN;
                            break;
                        } else {
                            iV9 = l84.v(i7);
                            iJ2 = ((g84) object2).j();
                            iX3 = l84.x(iJ2);
                            iV7 = iX3 + iJ2 + iV9;
                            i4 += iV7;
                            break;
                        }
                    }
                case 60:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iN = pa4.N(i7, unsafe.getObject(t, j), L(i3));
                        i4 += iN;
                        break;
                    }
                case 61:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        g84 g84Var2 = (g84) unsafe.getObject(t, j);
                        iV9 = l84.v(i7);
                        iJ2 = g84Var2.j();
                        iX3 = l84.x(iJ2);
                        iV7 = iX3 + iJ2 + iV9;
                        i4 += iV7;
                        break;
                    }
                case 62:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        int iN3 = n(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.x(iN3);
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 63:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        int iN4 = n(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.w(iN4);
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 64:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iV2 = l84.v(i7);
                        iN = iV2 + 4;
                        i4 += iN;
                        break;
                    }
                case 65:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iV = l84.v(i7);
                        iN = iV + 8;
                        i4 += iN;
                        break;
                    }
                case 66:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        int iN5 = n(t, j);
                        iV4 = l84.v(i7);
                        iW = l84.x(l84.c(iN5));
                        iN = iW + iV4;
                        i4 += iN;
                        break;
                    }
                case 67:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        long jO3 = o(t, j);
                        iV3 = l84.v(i7);
                        iY = l84.y(l84.d(jO3));
                        iN = iV3 + iY;
                        i4 += iN;
                        break;
                    }
                case 68:
                    if (!u(t, i7, i3)) {
                        break;
                    } else {
                        iN = l84.e(i7, (da4) unsafe.getObject(t, j), L(i3));
                        i4 += iN;
                        break;
                    }
            }
            i3 += 3;
            i2 = 1048575;
        }
        ab4<?, ?> ab4Var = this.l;
        int iH = ab4Var.h(ab4Var.d(t)) + i4;
        if (!this.f) {
            return iH;
        }
        this.m.b(t);
        throw null;
    }

    public final int H(T t) {
        int iV;
        int iV2;
        int iV3;
        int iY;
        int iV4;
        int iW;
        int iV5;
        int iV6;
        int iJ;
        int iX;
        int iN;
        int iK;
        int iV7;
        int iX2;
        int i;
        Unsafe unsafe = p;
        int i2 = 0;
        for (int i3 = 0; i3 < this.a.length; i3 += 3) {
            int iJ2 = j(i3);
            int i4 = (iJ2 >>> 20) & Base64.BASELENGTH;
            int[] iArr = this.a;
            int i5 = iArr[i3];
            long j = iJ2 & 1048575;
            if (i4 >= v84.O.e && i4 <= v84.b0.e) {
                int i6 = iArr[i3 + 2];
            }
            switch (i4) {
                case 0:
                    if (s(t, i3)) {
                        iV = l84.v(i5);
                        iN = iV + 8;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (s(t, i3)) {
                        iV2 = l84.v(i5);
                        iN = iV2 + 4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (s(t, i3)) {
                        long jK = lb4.k(t, j);
                        iV3 = l84.v(i5);
                        iY = l84.y(jK);
                        iN = iY + iV3;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (s(t, i3)) {
                        long jK2 = lb4.k(t, j);
                        iV3 = l84.v(i5);
                        iY = l84.y(jK2);
                        iN = iY + iV3;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (s(t, i3)) {
                        int iJ3 = lb4.j(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.w(iJ3);
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (s(t, i3)) {
                        iV = l84.v(i5);
                        iN = iV + 8;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (s(t, i3)) {
                        iV2 = l84.v(i5);
                        iN = iV2 + 4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (s(t, i3)) {
                        iV5 = l84.v(i5);
                        iN = iV5 + 1;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (s(t, i3)) {
                        Object objQ = lb4.q(t, j);
                        if (objQ instanceof g84) {
                            iV6 = l84.v(i5);
                            iJ = ((g84) objQ).j();
                            iX = l84.x(iJ);
                            i = iX + iJ + iV6;
                            i2 += i;
                            break;
                        } else {
                            iV4 = l84.v(i5);
                            iW = l84.z((String) objQ);
                            iN = iW + iV4;
                            i2 += iN;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (s(t, i3)) {
                        iN = pa4.N(i5, lb4.q(t, j), L(i3));
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (s(t, i3)) {
                        g84 g84Var = (g84) lb4.q(t, j);
                        iV6 = l84.v(i5);
                        iJ = g84Var.j();
                        iX = l84.x(iJ);
                        i = iX + iJ + iV6;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (s(t, i3)) {
                        int iJ4 = lb4.j(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.x(iJ4);
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (s(t, i3)) {
                        int iJ5 = lb4.j(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.w(iJ5);
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (s(t, i3)) {
                        iV2 = l84.v(i5);
                        iN = iV2 + 4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (s(t, i3)) {
                        iV = l84.v(i5);
                        iN = iV + 8;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (s(t, i3)) {
                        int iJ6 = lb4.j(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.x(l84.c(iJ6));
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (s(t, i3)) {
                        long jK3 = lb4.k(t, j);
                        iV3 = l84.v(i5);
                        iY = l84.y(l84.d(jK3));
                        iN = iY + iV3;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (s(t, i3)) {
                        iN = l84.e(i5, (da4) lb4.q(t, j), L(i3));
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    iN = pa4.L(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 19:
                    iN = pa4.J(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 20:
                    iN = pa4.v(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 21:
                    iN = pa4.x(i5, (List) lb4.q(t, j), false);
                    i2 += iN;
                    break;
                case 22:
                    iN = pa4.D(i5, (List) lb4.q(t, j), false);
                    i2 += iN;
                    break;
                case 23:
                    iN = pa4.L(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 24:
                    iN = pa4.J(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 25:
                    List list = (List) lb4.q(t, j);
                    Class<?> cls = pa4.a;
                    int size = list.size();
                    iN = size == 0 ? 0 : size * (l84.v(i5) + 1);
                    i2 += iN;
                    break;
                case 26:
                    iN = pa4.M(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 27:
                    iN = pa4.O(i5, (List) lb4.q(t, j), L(i3));
                    i2 += iN;
                    break;
                case 28:
                    iN = pa4.P(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 29:
                    iN = pa4.F(i5, (List) lb4.q(t, j), false);
                    i2 += iN;
                    break;
                case 30:
                    iN = pa4.B(i5, (List) lb4.q(t, j), false);
                    i2 += iN;
                    break;
                case 31:
                    iN = pa4.J(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 32:
                    iN = pa4.L(i5, (List) lb4.q(t, j));
                    i2 += iN;
                    break;
                case 33:
                    iN = pa4.H(i5, (List) lb4.q(t, j), false);
                    i2 += iN;
                    break;
                case 34:
                    iN = pa4.z(i5, (List) lb4.q(t, j), false);
                    i2 += iN;
                    break;
                case 35:
                    iK = pa4.K((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    iK = pa4.I((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    iK = pa4.u((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    iK = pa4.w((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    iK = pa4.C((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    iK = pa4.K((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    iK = pa4.I((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list2 = (List) unsafe.getObject(t, j);
                    Class<?> cls2 = pa4.a;
                    iK = list2.size();
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    iK = pa4.E((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    iK = pa4.A((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    iK = pa4.I((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    iK = pa4.K((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    iK = pa4.G((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    iK = pa4.y((List) unsafe.getObject(t, j));
                    if (iK > 0) {
                        iV7 = l84.v(i5);
                        iX2 = l84.x(iK);
                        i = iX2 + iV7 + iK;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    iN = pa4.Q(i5, (List) lb4.q(t, j), L(i3));
                    i2 += iN;
                    break;
                case 50:
                    z94.a(i5, lb4.q(t, j), M(i3));
                    break;
                case 51:
                    if (u(t, i5, i3)) {
                        iV = l84.v(i5);
                        iN = iV + 8;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (u(t, i5, i3)) {
                        iV2 = l84.v(i5);
                        iN = iV2 + 4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (u(t, i5, i3)) {
                        long jO = o(t, j);
                        iV3 = l84.v(i5);
                        iY = l84.y(jO);
                        iN = iY + iV3;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (u(t, i5, i3)) {
                        long jO2 = o(t, j);
                        iV3 = l84.v(i5);
                        iY = l84.y(jO2);
                        iN = iY + iV3;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (u(t, i5, i3)) {
                        int iN2 = n(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.w(iN2);
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (u(t, i5, i3)) {
                        iV = l84.v(i5);
                        iN = iV + 8;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (u(t, i5, i3)) {
                        iV2 = l84.v(i5);
                        iN = iV2 + 4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (u(t, i5, i3)) {
                        iV5 = l84.v(i5);
                        iN = iV5 + 1;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (u(t, i5, i3)) {
                        Object objQ2 = lb4.q(t, j);
                        if (objQ2 instanceof g84) {
                            iV6 = l84.v(i5);
                            iJ = ((g84) objQ2).j();
                            iX = l84.x(iJ);
                            i = iX + iJ + iV6;
                            i2 += i;
                            break;
                        } else {
                            iV4 = l84.v(i5);
                            iW = l84.z((String) objQ2);
                            iN = iW + iV4;
                            i2 += iN;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (u(t, i5, i3)) {
                        iN = pa4.N(i5, lb4.q(t, j), L(i3));
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (u(t, i5, i3)) {
                        g84 g84Var2 = (g84) lb4.q(t, j);
                        iV6 = l84.v(i5);
                        iJ = g84Var2.j();
                        iX = l84.x(iJ);
                        i = iX + iJ + iV6;
                        i2 += i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (u(t, i5, i3)) {
                        int iN3 = n(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.x(iN3);
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (u(t, i5, i3)) {
                        int iN4 = n(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.w(iN4);
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (u(t, i5, i3)) {
                        iV2 = l84.v(i5);
                        iN = iV2 + 4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (u(t, i5, i3)) {
                        iV = l84.v(i5);
                        iN = iV + 8;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (u(t, i5, i3)) {
                        int iN5 = n(t, j);
                        iV4 = l84.v(i5);
                        iW = l84.x(l84.c(iN5));
                        iN = iW + iV4;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (u(t, i5, i3)) {
                        long jO3 = o(t, j);
                        iV3 = l84.v(i5);
                        iY = l84.y(l84.d(jO3));
                        iN = iY + iV3;
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (u(t, i5, i3)) {
                        iN = l84.e(i5, (da4) lb4.q(t, j), L(i3));
                        i2 += iN;
                        break;
                    } else {
                        break;
                    }
            }
        }
        ab4<?, ?> ab4Var = this.l;
        return ab4Var.h(ab4Var.d(t)) + i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int I(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, w74 w74Var) throws IOException {
        int i8;
        int i9;
        int i10;
        int i11;
        int iY4;
        int iI1 = i;
        Unsafe unsafe = p;
        i94 i94VarW = (i94) unsafe.getObject(t, j2);
        if (!i94VarW.a()) {
            int size = i94VarW.size();
            i94VarW = i94VarW.w(size == 0 ? 10 : size + size);
            unsafe.putObject(t, j2, i94VarW);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    n84 n84Var = (n84) i94VarW;
                    int iI12 = c50.i1(bArr, iI1, w74Var);
                    int i12 = w74Var.a + iI12;
                    while (iI12 < i12) {
                        n84Var.h(Double.longBitsToDouble(c50.O3(bArr, iI12)));
                        iI12 += 8;
                    }
                    if (iI12 == i12) {
                        return iI12;
                    }
                    throw l94.a();
                }
                if (i5 == 1) {
                    n84 n84Var2 = (n84) i94VarW;
                    n84Var2.h(Double.longBitsToDouble(c50.O3(bArr, i)));
                    while (true) {
                        i8 = iI1 + 8;
                        if (i8 < i2) {
                            int iI13 = c50.i1(bArr, i8, w74Var);
                            if (i3 == w74Var.a) {
                                n84Var2.h(Double.longBitsToDouble(c50.O3(bArr, iI13)));
                                iI1 = iI13;
                            }
                        }
                    }
                    return i8;
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    w84 w84Var = (w84) i94VarW;
                    int iI14 = c50.i1(bArr, iI1, w74Var);
                    int i13 = w74Var.a + iI14;
                    while (iI14 < i13) {
                        w84Var.h(Float.intBitsToFloat(c50.E3(bArr, iI14)));
                        iI14 += 4;
                    }
                    if (iI14 == i13) {
                        return iI14;
                    }
                    throw l94.a();
                }
                if (i5 == 5) {
                    w84 w84Var2 = (w84) i94VarW;
                    w84Var2.h(Float.intBitsToFloat(c50.E3(bArr, i)));
                    while (true) {
                        i9 = iI1 + 4;
                        if (i9 < i2) {
                            int iI15 = c50.i1(bArr, i9, w74Var);
                            if (i3 == w74Var.a) {
                                w84Var2.h(Float.intBitsToFloat(c50.E3(bArr, iI15)));
                                iI1 = iI15;
                            }
                        }
                    }
                    return i9;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    t94 t94Var = (t94) i94VarW;
                    int iI16 = c50.i1(bArr, iI1, w74Var);
                    int i14 = w74Var.a + iI16;
                    while (iI16 < i14) {
                        iI16 = c50.v3(bArr, iI16, w74Var);
                        t94Var.l(w74Var.b);
                    }
                    if (iI16 == i14) {
                        return iI16;
                    }
                    throw l94.a();
                }
                if (i5 == 0) {
                    t94 t94Var2 = (t94) i94VarW;
                    int iV3 = c50.v3(bArr, iI1, w74Var);
                    t94Var2.l(w74Var.b);
                    while (iV3 < i2) {
                        int iI17 = c50.i1(bArr, iV3, w74Var);
                        if (i3 != w74Var.a) {
                            return iV3;
                        }
                        iV3 = c50.v3(bArr, iI17, w74Var);
                        t94Var2.l(w74Var.b);
                    }
                    return iV3;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return c50.z4(bArr, iI1, i94VarW, w74Var);
                }
                if (i5 == 0) {
                    return c50.y4(i3, bArr, i, i2, i94VarW, w74Var);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    t94 t94Var3 = (t94) i94VarW;
                    int iI18 = c50.i1(bArr, iI1, w74Var);
                    int i15 = w74Var.a + iI18;
                    while (iI18 < i15) {
                        t94Var3.l(c50.O3(bArr, iI18));
                        iI18 += 8;
                    }
                    if (iI18 == i15) {
                        return iI18;
                    }
                    throw l94.a();
                }
                if (i5 == 1) {
                    t94 t94Var4 = (t94) i94VarW;
                    t94Var4.l(c50.O3(bArr, i));
                    while (true) {
                        i10 = iI1 + 8;
                        if (i10 < i2) {
                            int iI19 = c50.i1(bArr, i10, w74Var);
                            if (i3 == w74Var.a) {
                                t94Var4.l(c50.O3(bArr, iI19));
                                iI1 = iI19;
                            }
                        }
                    }
                    return i10;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    d94 d94Var = (d94) i94VarW;
                    int iI110 = c50.i1(bArr, iI1, w74Var);
                    int i16 = w74Var.a + iI110;
                    while (iI110 < i16) {
                        d94Var.l(c50.E3(bArr, iI110));
                        iI110 += 4;
                    }
                    if (iI110 == i16) {
                        return iI110;
                    }
                    throw l94.a();
                }
                if (i5 == 5) {
                    d94 d94Var2 = (d94) i94VarW;
                    d94Var2.l(c50.E3(bArr, i));
                    while (true) {
                        i11 = iI1 + 4;
                        if (i11 < i2) {
                            int iI111 = c50.i1(bArr, i11, w74Var);
                            if (i3 == w74Var.a) {
                                d94Var2.l(c50.E3(bArr, iI111));
                                iI1 = iI111;
                            }
                        }
                    }
                    return i11;
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    x74 x74Var = (x74) i94VarW;
                    int iI112 = c50.i1(bArr, iI1, w74Var);
                    int i17 = w74Var.a + iI112;
                    while (iI112 < i17) {
                        iI112 = c50.v3(bArr, iI112, w74Var);
                        x74Var.h(w74Var.b != 0);
                    }
                    if (iI112 == i17) {
                        return iI112;
                    }
                    throw l94.a();
                }
                if (i5 == 0) {
                    x74 x74Var2 = (x74) i94VarW;
                    int iV32 = c50.v3(bArr, iI1, w74Var);
                    x74Var2.h(w74Var.b != 0);
                    while (iV32 < i2) {
                        int iI113 = c50.i1(bArr, iV32, w74Var);
                        if (i3 != w74Var.a) {
                            return iV32;
                        }
                        iV32 = c50.v3(bArr, iI113, w74Var);
                        x74Var2.h(w74Var.b != 0);
                    }
                    return iV32;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) != 0) {
                        iI1 = c50.i1(bArr, iI1, w74Var);
                        int i18 = w74Var.a;
                        if (i18 < 0) {
                            throw l94.b();
                        }
                        if (i18 == 0) {
                            i94VarW.add("");
                        } else {
                            int i19 = iI1 + i18;
                            if (!qb4.a(bArr, iI1, i19)) {
                                throw l94.d();
                            }
                            i94VarW.add(new String(bArr, iI1, i18, j94.a));
                            iI1 = i19;
                        }
                        while (iI1 < i2) {
                            int iI114 = c50.i1(bArr, iI1, w74Var);
                            if (i3 != w74Var.a) {
                                break;
                            } else {
                                iI1 = c50.i1(bArr, iI114, w74Var);
                                int i20 = w74Var.a;
                                if (i20 < 0) {
                                    throw l94.b();
                                }
                                if (i20 == 0) {
                                    i94VarW.add("");
                                } else {
                                    int i21 = iI1 + i20;
                                    if (!qb4.a(bArr, iI1, i21)) {
                                        throw l94.d();
                                    }
                                    i94VarW.add(new String(bArr, iI1, i20, j94.a));
                                    iI1 = i21;
                                }
                            }
                        }
                        break;
                    } else {
                        iI1 = c50.i1(bArr, iI1, w74Var);
                        int i22 = w74Var.a;
                        if (i22 < 0) {
                            throw l94.b();
                        }
                        if (i22 == 0) {
                            i94VarW.add("");
                        } else {
                            i94VarW.add(new String(bArr, iI1, i22, j94.a));
                            iI1 += i22;
                        }
                        while (iI1 < i2) {
                            int iI115 = c50.i1(bArr, iI1, w74Var);
                            if (i3 != w74Var.a) {
                                break;
                            } else {
                                iI1 = c50.i1(bArr, iI115, w74Var);
                                int i23 = w74Var.a;
                                if (i23 < 0) {
                                    throw l94.b();
                                }
                                if (i23 == 0) {
                                    i94VarW.add("");
                                } else {
                                    i94VarW.add(new String(bArr, iI1, i23, j94.a));
                                    iI1 += i23;
                                }
                            }
                        }
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    return c50.C4(L(i6), i3, bArr, i, i2, i94VarW, w74Var);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int iI116 = c50.i1(bArr, iI1, w74Var);
                    int i24 = w74Var.a;
                    if (i24 < 0) {
                        throw l94.b();
                    }
                    if (i24 > bArr.length - iI116) {
                        throw l94.a();
                    }
                    if (i24 == 0) {
                        i94VarW.add(g84.f);
                    } else {
                        i94VarW.add(g84.s(bArr, iI116, i24));
                        iI116 += i24;
                    }
                    while (iI116 < i2) {
                        int iI117 = c50.i1(bArr, iI116, w74Var);
                        if (i3 != w74Var.a) {
                            return iI116;
                        }
                        iI116 = c50.i1(bArr, iI117, w74Var);
                        int i25 = w74Var.a;
                        if (i25 < 0) {
                            throw l94.b();
                        }
                        if (i25 > bArr.length - iI116) {
                            throw l94.a();
                        }
                        if (i25 == 0) {
                            i94VarW.add(g84.f);
                        } else {
                            i94VarW.add(g84.s(bArr, iI116, i25));
                            iI116 += i25;
                        }
                    }
                    return iI116;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    iY4 = c50.z4(bArr, iI1, i94VarW, w74Var);
                } else if (i5 == 0) {
                    iY4 = c50.y4(i3, bArr, i, i2, i94VarW, w74Var);
                }
                c94 c94Var = (c94) t;
                Object objB = c94Var.zzc;
                if (objB == bb4.f) {
                    objB = null;
                }
                f94 f94VarN = N(i6);
                ab4<?, ?> ab4Var = this.l;
                Class<?> cls = pa4.a;
                if (f94VarN != null) {
                    if (i94VarW instanceof RandomAccess) {
                        int size2 = i94VarW.size();
                        int i26 = 0;
                        for (int i27 = 0; i27 < size2; i27++) {
                            int iIntValue = ((Integer) i94VarW.get(i27)).intValue();
                            if (f94VarN.c(iIntValue)) {
                                if (i27 != i26) {
                                    i94VarW.set(i26, Integer.valueOf(iIntValue));
                                }
                                i26++;
                            } else {
                                if (objB == null) {
                                    objB = ab4Var.b();
                                }
                                ab4Var.a(objB, i4, iIntValue);
                            }
                        }
                        if (i26 != size2) {
                            i94VarW.subList(i26, size2).clear();
                        }
                    } else {
                        Iterator<E> it = i94VarW.iterator();
                        while (it.hasNext()) {
                            int iIntValue2 = ((Integer) it.next()).intValue();
                            if (!f94VarN.c(iIntValue2)) {
                                if (objB == null) {
                                    objB = ab4Var.b();
                                }
                                ab4Var.a(objB, i4, iIntValue2);
                                it.remove();
                            }
                        }
                    }
                }
                if (objB == null) {
                    return iY4;
                }
                c94Var.zzc = (bb4) objB;
                return iY4;
            case 33:
            case 47:
                if (i5 == 2) {
                    d94 d94Var3 = (d94) i94VarW;
                    int iI118 = c50.i1(bArr, iI1, w74Var);
                    int i28 = w74Var.a + iI118;
                    while (iI118 < i28) {
                        iI118 = c50.i1(bArr, iI118, w74Var);
                        d94Var3.l(h84.a(w74Var.a));
                    }
                    if (iI118 == i28) {
                        return iI118;
                    }
                    throw l94.a();
                }
                if (i5 == 0) {
                    d94 d94Var4 = (d94) i94VarW;
                    int iI119 = c50.i1(bArr, iI1, w74Var);
                    d94Var4.l(h84.a(w74Var.a));
                    while (iI119 < i2) {
                        int iI120 = c50.i1(bArr, iI119, w74Var);
                        if (i3 != w74Var.a) {
                            return iI119;
                        }
                        iI119 = c50.i1(bArr, iI120, w74Var);
                        d94Var4.l(h84.a(w74Var.a));
                    }
                    return iI119;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    t94 t94Var5 = (t94) i94VarW;
                    int iI121 = c50.i1(bArr, iI1, w74Var);
                    int i29 = w74Var.a + iI121;
                    while (iI121 < i29) {
                        iI121 = c50.v3(bArr, iI121, w74Var);
                        t94Var5.l(h84.b(w74Var.b));
                    }
                    if (iI121 == i29) {
                        return iI121;
                    }
                    throw l94.a();
                }
                if (i5 == 0) {
                    t94 t94Var6 = (t94) i94VarW;
                    int iV33 = c50.v3(bArr, iI1, w74Var);
                    t94Var6.l(h84.b(w74Var.b));
                    while (iV33 < i2) {
                        int iI122 = c50.i1(bArr, iV33, w74Var);
                        if (i3 != w74Var.a) {
                            return iV33;
                        }
                        iV33 = c50.v3(bArr, iI122, w74Var);
                        t94Var6.l(h84.b(w74Var.b));
                    }
                    return iV33;
                }
                break;
            default:
                if (i5 == 3) {
                    na4 na4VarL = L(i6);
                    int i30 = (i3 & (-8)) | 4;
                    int iV4 = c50.v4(na4VarL, bArr, i, i2, i30, w74Var);
                    i94VarW.add(w74Var.c);
                    while (iV4 < i2) {
                        int iI123 = c50.i1(bArr, iV4, w74Var);
                        if (i3 != w74Var.a) {
                            return iV4;
                        }
                        iV4 = c50.v4(na4VarL, bArr, iI123, i2, i30, w74Var);
                        i94VarW.add(w74Var.c);
                    }
                    return iV4;
                }
                break;
        }
        return iI1;
    }

    public final int J(Object obj, byte[] bArr, int i, int i2, int i3, long j) throws IOException {
        Unsafe unsafe = p;
        Object objM = M(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((y94) object).e) {
            y94 y94Var = y94.f;
            y94 y94Var2 = y94Var.isEmpty() ? new y94() : new y94(y94Var);
            z94.b(y94Var2, object);
            unsafe.putObject(obj, j, y94Var2);
        }
        throw null;
    }

    public final int K(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, w74 w74Var) throws IOException {
        Unsafe unsafe = p;
        long j2 = this.a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(c50.O3(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(c50.E3(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int iV3 = c50.v3(bArr, i, w74Var);
                    unsafe.putObject(t, j, Long.valueOf(w74Var.b));
                    unsafe.putInt(t, j2, i4);
                    return iV3;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int iI1 = c50.i1(bArr, i, w74Var);
                    unsafe.putObject(t, j, Integer.valueOf(w74Var.a));
                    unsafe.putInt(t, j2, i4);
                    return iI1;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(c50.O3(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(c50.E3(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int iV32 = c50.v3(bArr, i, w74Var);
                    unsafe.putObject(t, j, Boolean.valueOf(w74Var.b != 0));
                    unsafe.putInt(t, j2, i4);
                    return iV32;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int iI12 = c50.i1(bArr, i, w74Var);
                    int i9 = w74Var.a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !qb4.a(bArr, iI12, iI12 + i9)) {
                            throw l94.d();
                        }
                        unsafe.putObject(t, j, new String(bArr, iI12, i9, j94.a));
                        iI12 += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return iI12;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int iP4 = c50.p4(L(i8), bArr, i, i2, w74Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, w74Var.c);
                    } else {
                        unsafe.putObject(t, j, j94.c(object, w74Var.c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iP4;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int iI4 = c50.i4(bArr, i, w74Var);
                    unsafe.putObject(t, j, w74Var.c);
                    unsafe.putInt(t, j2, i4);
                    return iI4;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int iI13 = c50.i1(bArr, i, w74Var);
                    int i10 = w74Var.a;
                    f94 f94VarN = N(i8);
                    if (f94VarN == null || f94VarN.c(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                    } else {
                        z(t).c(i3, Long.valueOf(i10));
                    }
                    return iI13;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int iI14 = c50.i1(bArr, i, w74Var);
                    unsafe.putObject(t, j, Integer.valueOf(h84.a(w74Var.a)));
                    unsafe.putInt(t, j2, i4);
                    return iI14;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int iV33 = c50.v3(bArr, i, w74Var);
                    unsafe.putObject(t, j, Long.valueOf(h84.b(w74Var.b)));
                    unsafe.putInt(t, j2, i4);
                    return iV33;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int iV4 = c50.v4(L(i8), bArr, i, i2, (i3 & (-8)) | 4, w74Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, w74Var.c);
                    } else {
                        unsafe.putObject(t, j, j94.c(object2, w74Var.c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iV4;
                }
                break;
        }
        return i;
    }

    public final na4 L(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        na4 na4Var = (na4) objArr[i3];
        if (na4Var != null) {
            return na4Var;
        }
        na4<T> na4VarA = ka4.c.a((Class) objArr[i3 + 1]);
        this.b[i3] = na4VarA;
        return na4VarA;
    }

    public final Object M(int i) {
        int i2 = i / 3;
        return this.b[i2 + i2];
    }

    public final f94 N(int i) {
        int i2 = i / 3;
        return (f94) this.b[i2 + i2 + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x02e7, code lost:
    
        if (r0 != r15) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02ea, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x032f, code lost:
    
        if (r0 != r15) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0331, code lost:
    
        r5 = r0;
        r2 = r19;
        r10 = r26;
        r9 = r27;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x009f. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v15, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int O(T r30, byte[] r31, int r32, int r33, defpackage.w74 r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 936
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fa4.O(java.lang.Object, byte[], int, int, w74):int");
    }

    @Override // defpackage.na4
    public final T a() {
        return (T) ((c94) this.e).r(4, null, null);
    }

    @Override // defpackage.na4
    public final int b(T t) {
        int i;
        int iA;
        int length = this.a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iJ = j(i3);
            int i4 = this.a[i3];
            long j = 1048575 & iJ;
            int iHashCode = 37;
            switch ((iJ >>> 20) & Base64.BASELENGTH) {
                case 0:
                    i = i2 * 53;
                    iA = j94.a(Double.doubleToLongBits(lb4.o(t, j)));
                    i2 = iA + i;
                    break;
                case 1:
                    i = i2 * 53;
                    iA = Float.floatToIntBits(lb4.n(t, j));
                    i2 = iA + i;
                    break;
                case 2:
                    i = i2 * 53;
                    iA = j94.a(lb4.k(t, j));
                    i2 = iA + i;
                    break;
                case 3:
                    i = i2 * 53;
                    iA = j94.a(lb4.k(t, j));
                    i2 = iA + i;
                    break;
                case 4:
                    i = i2 * 53;
                    iA = lb4.j(t, j);
                    i2 = iA + i;
                    break;
                case 5:
                    i = i2 * 53;
                    iA = j94.a(lb4.k(t, j));
                    i2 = iA + i;
                    break;
                case 6:
                    i = i2 * 53;
                    iA = lb4.j(t, j);
                    i2 = iA + i;
                    break;
                case 7:
                    i = i2 * 53;
                    iA = j94.b(lb4.m(t, j));
                    i2 = iA + i;
                    break;
                case 8:
                    i = i2 * 53;
                    iA = ((String) lb4.q(t, j)).hashCode();
                    i2 = iA + i;
                    break;
                case 9:
                    Object objQ = lb4.q(t, j);
                    if (objQ != null) {
                        iHashCode = objQ.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iA = lb4.q(t, j).hashCode();
                    i2 = iA + i;
                    break;
                case 11:
                    i = i2 * 53;
                    iA = lb4.j(t, j);
                    i2 = iA + i;
                    break;
                case 12:
                    i = i2 * 53;
                    iA = lb4.j(t, j);
                    i2 = iA + i;
                    break;
                case 13:
                    i = i2 * 53;
                    iA = lb4.j(t, j);
                    i2 = iA + i;
                    break;
                case 14:
                    i = i2 * 53;
                    iA = j94.a(lb4.k(t, j));
                    i2 = iA + i;
                    break;
                case 15:
                    i = i2 * 53;
                    iA = lb4.j(t, j);
                    i2 = iA + i;
                    break;
                case 16:
                    i = i2 * 53;
                    iA = j94.a(lb4.k(t, j));
                    i2 = iA + i;
                    break;
                case 17:
                    Object objQ2 = lb4.q(t, j);
                    if (objQ2 != null) {
                        iHashCode = objQ2.hashCode();
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
                    iA = lb4.q(t, j).hashCode();
                    i2 = iA + i;
                    break;
                case 50:
                    i = i2 * 53;
                    iA = lb4.q(t, j).hashCode();
                    i2 = iA + i;
                    break;
                case 51:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = j94.a(Double.doubleToLongBits(l(t, j)));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = Float.floatToIntBits(m(t, j));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = j94.a(o(t, j));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = j94.a(o(t, j));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = n(t, j);
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = j94.a(o(t, j));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = n(t, j);
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = j94.b(p(t, j));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = ((String) lb4.q(t, j)).hashCode();
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = lb4.q(t, j).hashCode();
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = lb4.q(t, j).hashCode();
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = n(t, j);
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = n(t, j);
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = n(t, j);
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = j94.a(o(t, j));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = n(t, j);
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = j94.a(o(t, j));
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (u(t, i4, i3)) {
                        i = i2 * 53;
                        iA = lb4.q(t, j).hashCode();
                        i2 = iA + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int iHashCode2 = this.l.d(t).hashCode() + (i2 * 53);
        if (!this.f) {
            return iHashCode2;
        }
        this.m.b(t);
        throw null;
    }

    @Override // defpackage.na4
    public final void c(T t) {
        int i;
        int i2 = this.i;
        while (true) {
            i = this.j;
            if (i2 >= i) {
                break;
            }
            long j = j(this.h[i2]) & 1048575;
            Object objQ = lb4.q(t, j);
            if (objQ != null) {
                ((y94) objQ).e = false;
                lb4.e.s(t, j, objQ);
            }
            i2++;
        }
        int length = this.h.length;
        while (i < length) {
            this.k.a(t, this.h[i]);
            i++;
        }
        this.l.e(t);
        if (this.f) {
            this.m.c(t);
        }
    }

    @Override // defpackage.na4
    public final boolean d(T t, T t2) {
        boolean zA;
        int length = this.a.length;
        for (int i = 0; i < length; i += 3) {
            int iJ = j(i);
            long j = iJ & 1048575;
            switch ((iJ >>> 20) & Base64.BASELENGTH) {
                case 0:
                    if (!q(t, t2, i) || Double.doubleToLongBits(lb4.o(t, j)) != Double.doubleToLongBits(lb4.o(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!q(t, t2, i) || Float.floatToIntBits(lb4.n(t, j)) != Float.floatToIntBits(lb4.n(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!q(t, t2, i) || lb4.k(t, j) != lb4.k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!q(t, t2, i) || lb4.k(t, j) != lb4.k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!q(t, t2, i) || lb4.j(t, j) != lb4.j(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!q(t, t2, i) || lb4.k(t, j) != lb4.k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!q(t, t2, i) || lb4.j(t, j) != lb4.j(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!q(t, t2, i) || lb4.m(t, j) != lb4.m(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!q(t, t2, i) || !pa4.a(lb4.q(t, j), lb4.q(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!q(t, t2, i) || !pa4.a(lb4.q(t, j), lb4.q(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!q(t, t2, i) || !pa4.a(lb4.q(t, j), lb4.q(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!q(t, t2, i) || lb4.j(t, j) != lb4.j(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!q(t, t2, i) || lb4.j(t, j) != lb4.j(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!q(t, t2, i) || lb4.j(t, j) != lb4.j(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!q(t, t2, i) || lb4.k(t, j) != lb4.k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!q(t, t2, i) || lb4.j(t, j) != lb4.j(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!q(t, t2, i) || lb4.k(t, j) != lb4.k(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!q(t, t2, i) || !pa4.a(lb4.q(t, j), lb4.q(t2, j))) {
                        return false;
                    }
                    continue;
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
                    zA = pa4.a(lb4.q(t, j), lb4.q(t2, j));
                    break;
                case 50:
                    zA = pa4.a(lb4.q(t, j), lb4.q(t2, j));
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
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jK = k(i) & 1048575;
                    if (lb4.j(t, jK) != lb4.j(t2, jK) || !pa4.a(lb4.q(t, j), lb4.q(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                default:
            }
            if (!zA) {
                return false;
            }
        }
        if (!this.l.d(t).equals(this.l.d(t2))) {
            return false;
        }
        if (!this.f) {
            return true;
        }
        this.m.b(t);
        this.m.b(t2);
        throw null;
    }

    @Override // defpackage.na4
    public final int e(T t) {
        return this.g ? H(t) : G(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7  */
    @Override // defpackage.na4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(T r19) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fa4.f(java.lang.Object):boolean");
    }

    @Override // defpackage.na4
    public final void g(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.a.length; i += 3) {
            int iJ = j(i);
            long j = 1048575 & iJ;
            int i2 = this.a[i];
            switch ((iJ >>> 20) & Base64.BASELENGTH) {
                case 0:
                    if (s(t2, i)) {
                        lb4.p(t, j, lb4.o(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (s(t2, i)) {
                        lb4.e.f(t, j, lb4.n(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (s(t2, i)) {
                        lb4.l(t, j, lb4.k(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (s(t2, i)) {
                        lb4.l(t, j, lb4.k(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (s(t2, i)) {
                        lb4.e.o(t, j, lb4.j(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (s(t2, i)) {
                        lb4.l(t, j, lb4.k(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (s(t2, i)) {
                        lb4.e.o(t, j, lb4.j(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (s(t2, i)) {
                        lb4.e.d(t, j, lb4.m(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (s(t2, i)) {
                        lb4.e.s(t, j, lb4.q(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    E(t, t2, i);
                    break;
                case 10:
                    if (s(t2, i)) {
                        lb4.e.s(t, j, lb4.q(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (s(t2, i)) {
                        lb4.e.o(t, j, lb4.j(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (s(t2, i)) {
                        lb4.e.o(t, j, lb4.j(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (s(t2, i)) {
                        lb4.e.o(t, j, lb4.j(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (s(t2, i)) {
                        lb4.l(t, j, lb4.k(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (s(t2, i)) {
                        lb4.e.o(t, j, lb4.j(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (s(t2, i)) {
                        lb4.l(t, j, lb4.k(t2, j));
                        t(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    E(t, t2, i);
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
                    this.k.b(t, t2, j);
                    break;
                case 50:
                    Class<?> cls = pa4.a;
                    lb4.e.s(t, j, z94.b(lb4.q(t, j), lb4.q(t2, j)));
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
                    if (u(t2, i2, i)) {
                        lb4.e.s(t, j, lb4.q(t2, j));
                        v(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    F(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (u(t2, i2, i)) {
                        lb4.e.s(t, j, lb4.q(t2, j));
                        v(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    F(t, t2, i);
                    break;
            }
        }
        ab4<?, ?> ab4Var = this.l;
        Class<?> cls2 = pa4.a;
        ab4Var.c(t, ab4Var.f(ab4Var.d(t), ab4Var.d(t2)));
        if (this.f) {
            this.m.b(t2);
            throw null;
        }
    }

    @Override // defpackage.na4
    public final void h(T t, byte[] bArr, int i, int i2, w74 w74Var) throws IOException {
        if (this.g) {
            O(t, bArr, i, i2, w74Var);
        } else {
            A(t, bArr, i, i2, 0, w74Var);
        }
    }

    @Override // defpackage.na4
    public final void i(T t, m84 m84Var) throws IOException {
        if (!this.g) {
            x(t, m84Var);
            return;
        }
        if (this.f) {
            this.m.b(t);
            throw null;
        }
        int length = this.a.length;
        for (int i = 0; i < length; i += 3) {
            int iJ = j(i);
            int[] iArr = this.a;
            int i2 = iArr[i];
            switch ((iJ >>> 20) & Base64.BASELENGTH) {
                case 0:
                    if (s(t, i)) {
                        m84Var.b(i2, lb4.o(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (s(t, i)) {
                        m84Var.a(i2, lb4.n(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (s(t, i)) {
                        m84Var.a.j(i2, lb4.k(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (s(t, i)) {
                        m84Var.a.j(i2, lb4.k(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (s(t, i)) {
                        m84Var.a.g(i2, lb4.j(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (s(t, i)) {
                        m84Var.a.k(i2, lb4.k(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (s(t, i)) {
                        m84Var.a.i(i2, lb4.j(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (s(t, i)) {
                        m84Var.a.l(i2, lb4.m(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (s(t, i)) {
                        y(i2, lb4.q(t, iJ & 1048575), m84Var);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (s(t, i)) {
                        m84Var.e(i2, lb4.q(t, iJ & 1048575), L(i));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (s(t, i)) {
                        m84Var.a.n(i2, (g84) lb4.q(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (s(t, i)) {
                        m84Var.a.h(i2, lb4.j(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (s(t, i)) {
                        m84Var.a.g(i2, lb4.j(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (s(t, i)) {
                        m84Var.a.i(i2, lb4.j(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (s(t, i)) {
                        m84Var.a.k(i2, lb4.k(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (s(t, i)) {
                        m84Var.c(i2, lb4.j(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (s(t, i)) {
                        m84Var.d(i2, lb4.k(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (s(t, i)) {
                        m84Var.f(i2, lb4.q(t, iJ & 1048575), L(i));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    pa4.b(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 19:
                    pa4.c(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 20:
                    pa4.d(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 21:
                    pa4.e(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 22:
                    pa4.i(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 23:
                    pa4.g(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 24:
                    pa4.l(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 25:
                    pa4.o(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 26:
                    pa4.p(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var);
                    break;
                case 27:
                    pa4.r(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, L(i));
                    break;
                case 28:
                    pa4.q(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var);
                    break;
                case 29:
                    pa4.j(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 30:
                    pa4.n(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 31:
                    pa4.m(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 32:
                    pa4.h(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 33:
                    pa4.k(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 34:
                    pa4.f(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, false);
                    break;
                case 35:
                    pa4.b(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 36:
                    pa4.c(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 37:
                    pa4.d(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 38:
                    pa4.e(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 39:
                    pa4.i(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 40:
                    pa4.g(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 41:
                    pa4.l(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 42:
                    pa4.o(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 43:
                    pa4.j(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 44:
                    pa4.n(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 45:
                    pa4.m(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 46:
                    pa4.h(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 47:
                    pa4.k(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 48:
                    pa4.f(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, true);
                    break;
                case 49:
                    pa4.s(iArr[i], (List) lb4.q(t, iJ & 1048575), m84Var, L(i));
                    break;
                case 50:
                    if (lb4.q(t, iJ & 1048575) != null) {
                        throw null;
                    }
                    break;
                case 51:
                    if (u(t, i2, i)) {
                        m84Var.b(i2, l(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (u(t, i2, i)) {
                        m84Var.a(i2, m(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (u(t, i2, i)) {
                        m84Var.a.j(i2, o(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (u(t, i2, i)) {
                        m84Var.a.j(i2, o(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (u(t, i2, i)) {
                        m84Var.a.g(i2, n(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (u(t, i2, i)) {
                        m84Var.a.k(i2, o(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (u(t, i2, i)) {
                        m84Var.a.i(i2, n(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (u(t, i2, i)) {
                        m84Var.a.l(i2, p(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (u(t, i2, i)) {
                        y(i2, lb4.q(t, iJ & 1048575), m84Var);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (u(t, i2, i)) {
                        m84Var.e(i2, lb4.q(t, iJ & 1048575), L(i));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (u(t, i2, i)) {
                        m84Var.a.n(i2, (g84) lb4.q(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (u(t, i2, i)) {
                        m84Var.a.h(i2, n(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (u(t, i2, i)) {
                        m84Var.a.g(i2, n(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (u(t, i2, i)) {
                        m84Var.a.i(i2, n(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (u(t, i2, i)) {
                        m84Var.a.k(i2, o(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (u(t, i2, i)) {
                        m84Var.c(i2, n(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (u(t, i2, i)) {
                        m84Var.d(i2, o(t, iJ & 1048575));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (u(t, i2, i)) {
                        m84Var.f(i2, lb4.q(t, iJ & 1048575), L(i));
                        break;
                    } else {
                        break;
                    }
            }
        }
        ab4<?, ?> ab4Var = this.l;
        ab4Var.i(ab4Var.d(t), m84Var);
    }

    public final int j(int i) {
        return this.a[i + 1];
    }

    public final int k(int i) {
        return this.a[i + 2];
    }

    public final boolean q(T t, T t2, int i) {
        return s(t, i) == s(t2, i);
    }

    public final boolean r(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? s(t, i) : (i3 & i4) != 0;
    }

    public final boolean s(T t, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            return (lb4.j(t, j) & (1 << (i2 >>> 20))) != 0;
        }
        int i3 = iArr[i + 1];
        long j2 = i3 & 1048575;
        switch ((i3 >>> 20) & Base64.BASELENGTH) {
            case 0:
                return lb4.o(t, j2) != 0.0d;
            case 1:
                return lb4.n(t, j2) != 0.0f;
            case 2:
                return lb4.k(t, j2) != 0;
            case 3:
                return lb4.k(t, j2) != 0;
            case 4:
                return lb4.j(t, j2) != 0;
            case 5:
                return lb4.k(t, j2) != 0;
            case 6:
                return lb4.j(t, j2) != 0;
            case 7:
                return lb4.m(t, j2);
            case 8:
                Object objQ = lb4.q(t, j2);
                if (objQ instanceof String) {
                    return !((String) objQ).isEmpty();
                }
                if (objQ instanceof g84) {
                    return !g84.f.equals(objQ);
                }
                throw new IllegalArgumentException();
            case 9:
                return lb4.q(t, j2) != null;
            case 10:
                return !g84.f.equals(lb4.q(t, j2));
            case 11:
                return lb4.j(t, j2) != 0;
            case 12:
                return lb4.j(t, j2) != 0;
            case 13:
                return lb4.j(t, j2) != 0;
            case 14:
                return lb4.k(t, j2) != 0;
            case 15:
                return lb4.j(t, j2) != 0;
            case 16:
                return lb4.k(t, j2) != 0;
            case 17:
                return lb4.q(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final void t(T t, int i) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        lb4.e.o(t, j, (1 << (i2 >>> 20)) | lb4.j(t, j));
    }

    public final boolean u(T t, int i, int i2) {
        return lb4.j(t, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final void v(T t, int i, int i2) {
        lb4.e.o(t, this.a[i2 + 2] & 1048575, i);
    }

    public final int w(int i, int i2) {
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

    public final void x(T t, m84 m84Var) throws IOException {
        int i;
        if (this.f) {
            this.m.b(t);
            throw null;
        }
        int length = this.a.length;
        Unsafe unsafe = p;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 1048575;
        int i5 = 0;
        while (i3 < length) {
            int iJ = j(i3);
            int[] iArr = this.a;
            int i6 = iArr[i3];
            int i7 = (iJ >>> 20) & Base64.BASELENGTH;
            if (i7 <= 17) {
                int i8 = iArr[i3 + 2];
                int i9 = i8 & i2;
                if (i9 != i4) {
                    i5 = unsafe.getInt(t, i9);
                    i4 = i9;
                }
                i = 1 << (i8 >>> 20);
            } else {
                i = 0;
            }
            long j = iJ & i2;
            switch (i7) {
                case 0:
                    if ((i5 & i) != 0) {
                        m84Var.b(i6, lb4.o(t, j));
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 1:
                    if ((i5 & i) != 0) {
                        m84Var.a(i6, lb4.n(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 2:
                    if ((i5 & i) != 0) {
                        m84Var.a.j(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 3:
                    if ((i5 & i) != 0) {
                        m84Var.a.j(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 4:
                    if ((i5 & i) != 0) {
                        m84Var.a.g(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 5:
                    if ((i5 & i) != 0) {
                        m84Var.a.k(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 6:
                    if ((i5 & i) != 0) {
                        m84Var.a.i(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 7:
                    if ((i5 & i) != 0) {
                        m84Var.a.l(i6, lb4.m(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 8:
                    if ((i5 & i) != 0) {
                        y(i6, unsafe.getObject(t, j), m84Var);
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 9:
                    if ((i5 & i) != 0) {
                        m84Var.e(i6, unsafe.getObject(t, j), L(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 10:
                    if ((i5 & i) != 0) {
                        m84Var.a.n(i6, (g84) unsafe.getObject(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 11:
                    if ((i5 & i) != 0) {
                        m84Var.a.h(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 12:
                    if ((i5 & i) != 0) {
                        m84Var.a.g(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 13:
                    if ((i5 & i) != 0) {
                        m84Var.a.i(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 14:
                    if ((i5 & i) != 0) {
                        m84Var.a.k(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 15:
                    if ((i5 & i) != 0) {
                        m84Var.c(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 16:
                    if ((i5 & i) != 0) {
                        m84Var.d(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 17:
                    if ((i5 & i) != 0) {
                        m84Var.f(i6, unsafe.getObject(t, j), L(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                case 18:
                    pa4.b(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 19:
                    pa4.c(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 20:
                    pa4.d(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 21:
                    pa4.e(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 22:
                    pa4.i(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 23:
                    pa4.g(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 24:
                    pa4.l(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 25:
                    pa4.o(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                case 26:
                    pa4.p(this.a[i3], (List) unsafe.getObject(t, j), m84Var);
                    break;
                case 27:
                    pa4.r(this.a[i3], (List) unsafe.getObject(t, j), m84Var, L(i3));
                    break;
                case 28:
                    pa4.q(this.a[i3], (List) unsafe.getObject(t, j), m84Var);
                    break;
                case 29:
                    pa4.j(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    break;
                case 30:
                    pa4.n(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    break;
                case 31:
                    pa4.m(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    break;
                case 32:
                    pa4.h(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    break;
                case 33:
                    pa4.k(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    break;
                case 34:
                    pa4.f(this.a[i3], (List) unsafe.getObject(t, j), m84Var, false);
                    break;
                case 35:
                    pa4.b(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 36:
                    pa4.c(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 37:
                    pa4.d(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 38:
                    pa4.e(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 39:
                    pa4.i(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 40:
                    pa4.g(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 41:
                    pa4.l(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 42:
                    pa4.o(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 43:
                    pa4.j(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 44:
                    pa4.n(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 45:
                    pa4.m(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 46:
                    pa4.h(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 47:
                    pa4.k(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 48:
                    pa4.f(this.a[i3], (List) unsafe.getObject(t, j), m84Var, true);
                    break;
                case 49:
                    pa4.s(this.a[i3], (List) unsafe.getObject(t, j), m84Var, L(i3));
                    break;
                case 50:
                    if (unsafe.getObject(t, j) != null) {
                        throw null;
                    }
                    break;
                case 51:
                    if (u(t, i6, i3)) {
                        m84Var.b(i6, l(t, j));
                        break;
                    }
                    break;
                case 52:
                    if (u(t, i6, i3)) {
                        m84Var.a(i6, m(t, j));
                        break;
                    }
                    break;
                case 53:
                    if (u(t, i6, i3)) {
                        m84Var.a.j(i6, o(t, j));
                        break;
                    }
                    break;
                case 54:
                    if (u(t, i6, i3)) {
                        m84Var.a.j(i6, o(t, j));
                        break;
                    }
                    break;
                case 55:
                    if (u(t, i6, i3)) {
                        m84Var.a.g(i6, n(t, j));
                        break;
                    }
                    break;
                case 56:
                    if (u(t, i6, i3)) {
                        m84Var.a.k(i6, o(t, j));
                        break;
                    }
                    break;
                case 57:
                    if (u(t, i6, i3)) {
                        m84Var.a.i(i6, n(t, j));
                        break;
                    }
                    break;
                case 58:
                    if (u(t, i6, i3)) {
                        m84Var.a.l(i6, p(t, j));
                        break;
                    }
                    break;
                case 59:
                    if (u(t, i6, i3)) {
                        y(i6, unsafe.getObject(t, j), m84Var);
                        break;
                    }
                    break;
                case 60:
                    if (u(t, i6, i3)) {
                        m84Var.e(i6, unsafe.getObject(t, j), L(i3));
                        break;
                    }
                    break;
                case 61:
                    if (u(t, i6, i3)) {
                        m84Var.a.n(i6, (g84) unsafe.getObject(t, j));
                        break;
                    }
                    break;
                case 62:
                    if (u(t, i6, i3)) {
                        m84Var.a.h(i6, n(t, j));
                        break;
                    }
                    break;
                case 63:
                    if (u(t, i6, i3)) {
                        m84Var.a.g(i6, n(t, j));
                        break;
                    }
                    break;
                case 64:
                    if (u(t, i6, i3)) {
                        m84Var.a.i(i6, n(t, j));
                        break;
                    }
                    break;
                case 65:
                    if (u(t, i6, i3)) {
                        m84Var.a.k(i6, o(t, j));
                        break;
                    }
                    break;
                case 66:
                    if (u(t, i6, i3)) {
                        m84Var.c(i6, n(t, j));
                        break;
                    }
                    break;
                case 67:
                    if (u(t, i6, i3)) {
                        m84Var.d(i6, o(t, j));
                        break;
                    }
                    break;
                case 68:
                    if (u(t, i6, i3)) {
                        m84Var.f(i6, unsafe.getObject(t, j), L(i3));
                        break;
                    }
                    break;
            }
            i3 += 3;
            i2 = 1048575;
        }
        ab4<?, ?> ab4Var = this.l;
        ab4Var.i(ab4Var.d(t), m84Var);
    }
}
