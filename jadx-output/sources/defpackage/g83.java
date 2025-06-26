package defpackage;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class g83<T> implements w83<T> {
    public static final int[] q = new int[0];
    public static final Unsafe r = r93.i();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final e83 e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final int[] i;
    public final int j;
    public final int k;
    public final k83 l;
    public final o73 m;
    public final l93<?, ?> n;
    public final g63<?> o;
    public final y73 p;

    public g83(int[] iArr, Object[] objArr, int i, int i2, e83 e83Var, boolean z, int[] iArr2, int i3, int i4, k83 k83Var, o73 o73Var, l93 l93Var, g63 g63Var, y73 y73Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = e83Var instanceof s63;
        this.h = z;
        this.f = g63Var != null && g63Var.j(e83Var);
        this.i = iArr2;
        this.j = i3;
        this.k = i4;
        this.l = k83Var;
        this.m = o73Var;
        this.n = l93Var;
        this.o = g63Var;
        this.e = e83Var;
        this.p = y73Var;
    }

    public static List<?> E(Object obj, long j) {
        return (List) r93.t(obj, j);
    }

    public static <T> double G(T t, long j) {
        return ((Double) r93.t(t, j)).doubleValue();
    }

    public static <T> float I(T t, long j) {
        return ((Float) r93.t(t, j)).floatValue();
    }

    public static <T> int J(T t, long j) {
        return ((Integer) r93.t(t, j)).intValue();
    }

    public static <T> long Q(T t, long j) {
        return ((Long) r93.t(t, j)).longValue();
    }

    public static <T> boolean R(T t, long j) {
        return ((Boolean) r93.t(t, j)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:182:0x03a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.g83 o(defpackage.d83 r35, defpackage.k83 r36, defpackage.o73 r37, defpackage.l93 r38, defpackage.g63 r39, defpackage.y73 r40) {
        /*
            Method dump skipped, instructions count: 1069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g83.o(d83, k83, o73, l93, g63, y73):g83");
    }

    public static Field q(Class<?> cls, String str) {
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
            throw new RuntimeException(jo.s(jo.y(jo.x(string, name.length() + jo.x(str, 40)), "Field ", str, " for ", name), " not found. Known fields are ", string));
        }
    }

    public static void r(int i, Object obj, ga3 ga3Var) throws IOException {
        if (obj instanceof String) {
            ((d63) ga3Var).a.N(i, (String) obj);
        } else {
            ((d63) ga3Var).a.d(i, (k53) obj);
        }
    }

    public static <UT, UB> void s(l93<UT, UB> l93Var, T t, ga3 ga3Var) throws IOException {
        l93Var.d(l93Var.j(t), ga3Var);
    }

    public static o93 z(Object obj) {
        s63 s63Var = (s63) obj;
        o93 o93Var = s63Var.zzitn;
        if (o93Var != o93.f) {
            return o93Var;
        }
        o93 o93VarD = o93.d();
        s63Var.zzitn = o93VarD;
        return o93VarD;
    }

    public final void A(T t, int i, int i2) {
        r93.e.e(t, this.a[i2 + 2] & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(T r18, defpackage.ga3 r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g83.B(java.lang.Object, ga3):void");
    }

    public final void C(T t, T t2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long j = i2 & 1048575;
        if (w(t2, i3, i)) {
            Object objT = w(t, i3, i) ? r93.t(t, j) : null;
            Object objT2 = r93.t(t2, j);
            if (objT != null && objT2 != null) {
                r93.e(t, j, u63.b(objT, objT2));
                A(t, i3, i);
            } else if (objT2 != null) {
                r93.e(t, j, objT2);
                A(t, i3, i);
            }
        }
    }

    public final boolean D(T t, T t2, int i) {
        return F(t, i) == F(t2, i);
    }

    public final boolean F(T t, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            return (r93.k(t, j) & (1 << (i2 >>> 20))) != 0;
        }
        int i3 = iArr[i + 1];
        long j2 = i3 & 1048575;
        switch ((i3 & 267386880) >>> 20) {
            case 0:
                return r93.r(t, j2) != 0.0d;
            case 1:
                return r93.p(t, j2) != 0.0f;
            case 2:
                return r93.l(t, j2) != 0;
            case 3:
                return r93.l(t, j2) != 0;
            case 4:
                return r93.k(t, j2) != 0;
            case 5:
                return r93.l(t, j2) != 0;
            case 6:
                return r93.k(t, j2) != 0;
            case 7:
                return r93.o(t, j2);
            case 8:
                Object objT = r93.t(t, j2);
                if (objT instanceof String) {
                    return !((String) objT).isEmpty();
                }
                if (objT instanceof k53) {
                    return !k53.f.equals(objT);
                }
                throw new IllegalArgumentException();
            case 9:
                return r93.t(t, j2) != null;
            case 10:
                return !k53.f.equals(r93.t(t, j2));
            case 11:
                return r93.k(t, j2) != 0;
            case 12:
                return r93.k(t, j2) != 0;
            case 13:
                return r93.k(t, j2) != 0;
            case 14:
                return r93.l(t, j2) != 0;
            case 15:
                return r93.k(t, j2) != 0;
            case 16:
                return r93.l(t, j2) != 0;
            case 17:
                return r93.t(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final void H(T t, int i) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        r93.e.e(t, j, (1 << (i2 >>> 20)) | r93.k(t, j));
    }

    public final w83 K(int i) {
        int i2 = (i / 3) << 1;
        Object[] objArr = this.b;
        w83 w83Var = (w83) objArr[i2];
        if (w83Var != null) {
            return w83Var;
        }
        w83<T> w83VarB = q83.c.b((Class) objArr[i2 + 1]);
        this.b[i2] = w83VarB;
        return w83VarB;
    }

    public final Object L(int i) {
        return this.b[(i / 3) << 1];
    }

    public final y63 M(int i) {
        return (y63) this.b[((i / 3) << 1) + 1];
    }

    public final int N(int i) {
        return this.a[i + 1];
    }

    public final int O(int i) {
        return this.a[i + 2];
    }

    public final int P(int i) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return y(i, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // defpackage.w83
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g83.a(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int b(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, g53 g53Var) throws IOException {
        int iO2;
        Unsafe unsafe = r;
        long j2 = this.a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(c50.q4(bArr, i))));
                    iO2 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(c50.h4(bArr, i))));
                    iO2 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    iO2 = c50.O2(bArr, i, g53Var);
                    unsafe.putObject(t, j, Long.valueOf(g53Var.b));
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    iO2 = c50.e1(bArr, i, g53Var);
                    unsafe.putObject(t, j, Integer.valueOf(g53Var.a));
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(c50.q4(bArr, i)));
                    iO2 = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(c50.h4(bArr, i)));
                    iO2 = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    iO2 = c50.O2(bArr, i, g53Var);
                    unsafe.putObject(t, j, Boolean.valueOf(g53Var.b != 0));
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int iE1 = c50.e1(bArr, i, g53Var);
                    int i9 = g53Var.a;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !u93.d(bArr, iE1, iE1 + i9)) {
                            throw e73.h();
                        }
                        unsafe.putObject(t, j, new String(bArr, iE1, i9, u63.a));
                        iE1 += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return iE1;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int iC1 = c50.c1(K(i8), bArr, i, i2, g53Var);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, g53Var.c);
                    } else {
                        unsafe.putObject(t, j, u63.b(object, g53Var.c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iC1;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    iO2 = c50.M3(bArr, i, g53Var);
                    unsafe.putObject(t, j, g53Var.c);
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int iE12 = c50.e1(bArr, i, g53Var);
                    int i10 = g53Var.a;
                    y63 y63Var = (y63) this.b[((i8 / 3) << 1) + 1];
                    if (y63Var != null && !y63Var.k(i10)) {
                        z(t).e(i3, Long.valueOf(i10));
                        return iE12;
                    }
                    unsafe.putObject(t, j, Integer.valueOf(i10));
                    iO2 = iE12;
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    iO2 = c50.e1(bArr, i, g53Var);
                    unsafe.putObject(t, j, Integer.valueOf(u53.A(g53Var.a)));
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    iO2 = c50.O2(bArr, i, g53Var);
                    unsafe.putObject(t, j, Long.valueOf(u53.v(g53Var.b)));
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    iO2 = c50.b1(K(i8), bArr, i, i2, (i3 & (-8)) | 4, g53Var);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, g53Var.c);
                    } else {
                        unsafe.putObject(t, j, u63.b(object2, g53Var.c));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iO2;
                }
                return i;
            default:
                return i;
        }
    }

    @Override // defpackage.w83
    public final T c() {
        return (T) this.l.a(this.e);
    }

    @Override // defpackage.w83
    public final int d(T t) {
        int i;
        int iC;
        int length = this.a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iN = N(i3);
            int i4 = this.a[i3];
            long j = 1048575 & iN;
            int iHashCode = 37;
            switch ((iN & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    iC = u63.c(Double.doubleToLongBits(r93.r(t, j)));
                    i2 = iC + i;
                    break;
                case 1:
                    i = i2 * 53;
                    iC = Float.floatToIntBits(r93.p(t, j));
                    i2 = iC + i;
                    break;
                case 2:
                    i = i2 * 53;
                    iC = u63.c(r93.l(t, j));
                    i2 = iC + i;
                    break;
                case 3:
                    i = i2 * 53;
                    iC = u63.c(r93.l(t, j));
                    i2 = iC + i;
                    break;
                case 4:
                    i = i2 * 53;
                    iC = r93.k(t, j);
                    i2 = iC + i;
                    break;
                case 5:
                    i = i2 * 53;
                    iC = u63.c(r93.l(t, j));
                    i2 = iC + i;
                    break;
                case 6:
                    i = i2 * 53;
                    iC = r93.k(t, j);
                    i2 = iC + i;
                    break;
                case 7:
                    i = i2 * 53;
                    iC = u63.a(r93.o(t, j));
                    i2 = iC + i;
                    break;
                case 8:
                    i = i2 * 53;
                    iC = ((String) r93.t(t, j)).hashCode();
                    i2 = iC + i;
                    break;
                case 9:
                    Object objT = r93.t(t, j);
                    if (objT != null) {
                        iHashCode = objT.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iC = r93.t(t, j).hashCode();
                    i2 = iC + i;
                    break;
                case 11:
                    i = i2 * 53;
                    iC = r93.k(t, j);
                    i2 = iC + i;
                    break;
                case 12:
                    i = i2 * 53;
                    iC = r93.k(t, j);
                    i2 = iC + i;
                    break;
                case 13:
                    i = i2 * 53;
                    iC = r93.k(t, j);
                    i2 = iC + i;
                    break;
                case 14:
                    i = i2 * 53;
                    iC = u63.c(r93.l(t, j));
                    i2 = iC + i;
                    break;
                case 15:
                    i = i2 * 53;
                    iC = r93.k(t, j);
                    i2 = iC + i;
                    break;
                case 16:
                    i = i2 * 53;
                    iC = u63.c(r93.l(t, j));
                    i2 = iC + i;
                    break;
                case 17:
                    Object objT2 = r93.t(t, j);
                    if (objT2 != null) {
                        iHashCode = objT2.hashCode();
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
                    iC = r93.t(t, j).hashCode();
                    i2 = iC + i;
                    break;
                case 50:
                    i = i2 * 53;
                    iC = r93.t(t, j).hashCode();
                    i2 = iC + i;
                    break;
                case 51:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = u63.c(Double.doubleToLongBits(G(t, j)));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = Float.floatToIntBits(I(t, j));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = u63.c(Q(t, j));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = u63.c(Q(t, j));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = J(t, j);
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = u63.c(Q(t, j));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = J(t, j);
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = u63.a(R(t, j));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = ((String) r93.t(t, j)).hashCode();
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = r93.t(t, j).hashCode();
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = r93.t(t, j).hashCode();
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = J(t, j);
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = J(t, j);
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = J(t, j);
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = u63.c(Q(t, j));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = J(t, j);
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = u63.c(Q(t, j));
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (w(t, i4, i3)) {
                        i = i2 * 53;
                        iC = r93.t(t, j).hashCode();
                        i2 = iC + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int iHashCode2 = this.n.j(t).hashCode() + (i2 * 53);
        return this.f ? (iHashCode2 * 53) + this.o.g(t).hashCode() : iHashCode2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4  */
    @Override // defpackage.w83
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(T r19) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g83.e(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    @Override // defpackage.w83
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(T r13, defpackage.ga3 r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g83.f(java.lang.Object, ga3):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0307, code lost:
    
        if (r0 == r12) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x034c, code lost:
    
        if (r0 == r11) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0367, code lost:
    
        r2 = r17;
        r9 = r26;
        r11 = r27;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x00a4. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Type inference failed for: r3v44, types: [int] */
    @Override // defpackage.w83
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r31, byte[] r32, int r33, int r34, defpackage.g53 r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g83.g(java.lang.Object, byte[], int, int, g53):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.w83
    public final void h(T t, z53 z53Var, e63 e63Var) throws IOException {
        Objects.requireNonNull(e63Var);
        l93 l93Var = this.n;
        g63<?> g63Var = this.o;
        Object objH = null;
        Object objB = null;
        while (true) {
            try {
                int iZ = z53Var.z();
                int iP = P(iZ);
                if (iP >= 0) {
                    int iN = N(iP);
                    switch ((267386880 & iN) >>> 20) {
                        case 0:
                            r93.c(t, iN & 1048575, z53Var.a());
                            H(t, iP);
                            break;
                        case 1:
                            r93.e.b(t, iN & 1048575, z53Var.b());
                            H(t, iP);
                            break;
                        case 2:
                            r93.d(t, iN & 1048575, z53Var.m());
                            H(t, iP);
                            break;
                        case 3:
                            r93.d(t, iN & 1048575, z53Var.l());
                            H(t, iP);
                            break;
                        case 4:
                            r93.e.e(t, iN & 1048575, z53Var.n());
                            H(t, iP);
                            break;
                        case 5:
                            r93.d(t, iN & 1048575, z53Var.o());
                            H(t, iP);
                            break;
                        case 6:
                            r93.e.e(t, iN & 1048575, z53Var.p());
                            H(t, iP);
                            break;
                        case 7:
                            r93.e.d(t, iN & 1048575, z53Var.q());
                            H(t, iP);
                            break;
                        case 8:
                            u(t, iN, z53Var);
                            H(t, iP);
                            break;
                        case 9:
                            if (F(t, iP)) {
                                long j = iN & 1048575;
                                r93.e(t, j, u63.b(r93.t(t, j), z53Var.d(K(iP), e63Var)));
                                break;
                            } else {
                                r93.e(t, iN & 1048575, z53Var.d(K(iP), e63Var));
                                H(t, iP);
                                break;
                            }
                        case 10:
                            r93.e(t, iN & 1048575, z53Var.s());
                            H(t, iP);
                            break;
                        case 11:
                            r93.h(t, iN & 1048575, z53Var.t());
                            H(t, iP);
                            break;
                        case 12:
                            int iU = z53Var.u();
                            y63 y63VarM = M(iP);
                            if (y63VarM != null && !y63VarM.k(iU)) {
                                objB = y83.a(iZ, iU, objB, l93Var);
                                break;
                            } else {
                                r93.h(t, iN & 1048575, iU);
                                H(t, iP);
                                break;
                            }
                            break;
                        case 13:
                            r93.h(t, iN & 1048575, z53Var.v());
                            H(t, iP);
                            break;
                        case 14:
                            r93.d(t, iN & 1048575, z53Var.w());
                            H(t, iP);
                            break;
                        case 15:
                            r93.h(t, iN & 1048575, z53Var.x());
                            H(t, iP);
                            break;
                        case 16:
                            r93.d(t, iN & 1048575, z53Var.y());
                            H(t, iP);
                            break;
                        case 17:
                            if (F(t, iP)) {
                                long j2 = iN & 1048575;
                                r93.e(t, j2, u63.b(r93.t(t, j2), z53Var.j(K(iP), e63Var)));
                                break;
                            } else {
                                r93.e(t, iN & 1048575, z53Var.j(K(iP), e63Var));
                                H(t, iP);
                                break;
                            }
                        case 18:
                            z53Var.H(this.m.a(t, iN & 1048575));
                            break;
                        case 19:
                            z53Var.I(this.m.a(t, iN & 1048575));
                            break;
                        case 20:
                            z53Var.K(this.m.a(t, iN & 1048575));
                            break;
                        case 21:
                            z53Var.J(this.m.a(t, iN & 1048575));
                            break;
                        case 22:
                            z53Var.L(this.m.a(t, iN & 1048575));
                            break;
                        case 23:
                            z53Var.M(this.m.a(t, iN & 1048575));
                            break;
                        case 24:
                            z53Var.N(this.m.a(t, iN & 1048575));
                            break;
                        case 25:
                            z53Var.O(this.m.a(t, iN & 1048575));
                            break;
                        case 26:
                            if ((536870912 & iN) != 0) {
                                z53Var.P(this.m.a(t, iN & 1048575));
                                break;
                            } else {
                                z53Var.c(this.m.a(t, iN & 1048575));
                                break;
                            }
                        case 27:
                            z53Var.e(this.m.a(t, iN & 1048575), K(iP), e63Var);
                            break;
                        case 28:
                            z53Var.Q(this.m.a(t, iN & 1048575));
                            break;
                        case 29:
                            z53Var.R(this.m.a(t, iN & 1048575));
                            break;
                        case 30:
                            List<Integer> listA = this.m.a(t, iN & 1048575);
                            z53Var.S(listA);
                            objB = y83.b(iZ, listA, M(iP), objB, l93Var);
                            break;
                        case 31:
                            z53Var.T(this.m.a(t, iN & 1048575));
                            break;
                        case 32:
                            z53Var.U(this.m.a(t, iN & 1048575));
                            break;
                        case 33:
                            z53Var.h(this.m.a(t, iN & 1048575));
                            break;
                        case 34:
                            z53Var.i(this.m.a(t, iN & 1048575));
                            break;
                        case 35:
                            z53Var.H(this.m.a(t, iN & 1048575));
                            break;
                        case 36:
                            z53Var.I(this.m.a(t, iN & 1048575));
                            break;
                        case 37:
                            z53Var.K(this.m.a(t, iN & 1048575));
                            break;
                        case 38:
                            z53Var.J(this.m.a(t, iN & 1048575));
                            break;
                        case 39:
                            z53Var.L(this.m.a(t, iN & 1048575));
                            break;
                        case 40:
                            z53Var.M(this.m.a(t, iN & 1048575));
                            break;
                        case 41:
                            z53Var.N(this.m.a(t, iN & 1048575));
                            break;
                        case 42:
                            z53Var.O(this.m.a(t, iN & 1048575));
                            break;
                        case 43:
                            z53Var.R(this.m.a(t, iN & 1048575));
                            break;
                        case 44:
                            List<Integer> listA2 = this.m.a(t, iN & 1048575);
                            z53Var.S(listA2);
                            objB = y83.b(iZ, listA2, M(iP), objB, l93Var);
                            break;
                        case 45:
                            z53Var.T(this.m.a(t, iN & 1048575));
                            break;
                        case 46:
                            z53Var.U(this.m.a(t, iN & 1048575));
                            break;
                        case 47:
                            z53Var.h(this.m.a(t, iN & 1048575));
                            break;
                        case 48:
                            z53Var.i(this.m.a(t, iN & 1048575));
                            break;
                        case 49:
                            z53Var.k(this.m.a(t, iN & 1048575), K(iP), e63Var);
                            break;
                        case 50:
                            Object objL = L(iP);
                            long jN = N(iP) & 1048575;
                            Object objT = r93.t(t, jN);
                            if (objT == null) {
                                objT = this.p.e(objL);
                                r93.e(t, jN, objT);
                            } else if (this.p.c(objT)) {
                                Object objE = this.p.e(objL);
                                this.p.f(objE, objT);
                                r93.e(t, jN, objE);
                                objT = objE;
                            }
                            z53Var.g(this.p.h(objT), this.p.g(objL), e63Var);
                            throw null;
                        case 51:
                            r93.e(t, iN & 1048575, Double.valueOf(z53Var.a()));
                            A(t, iZ, iP);
                            break;
                        case 52:
                            r93.e(t, iN & 1048575, Float.valueOf(z53Var.b()));
                            A(t, iZ, iP);
                            break;
                        case 53:
                            r93.e(t, iN & 1048575, Long.valueOf(z53Var.m()));
                            A(t, iZ, iP);
                            break;
                        case 54:
                            r93.e(t, iN & 1048575, Long.valueOf(z53Var.l()));
                            A(t, iZ, iP);
                            break;
                        case 55:
                            r93.e(t, iN & 1048575, Integer.valueOf(z53Var.n()));
                            A(t, iZ, iP);
                            break;
                        case 56:
                            r93.e(t, iN & 1048575, Long.valueOf(z53Var.o()));
                            A(t, iZ, iP);
                            break;
                        case 57:
                            r93.e(t, iN & 1048575, Integer.valueOf(z53Var.p()));
                            A(t, iZ, iP);
                            break;
                        case 58:
                            r93.e(t, iN & 1048575, Boolean.valueOf(z53Var.q()));
                            A(t, iZ, iP);
                            break;
                        case 59:
                            u(t, iN, z53Var);
                            A(t, iZ, iP);
                            break;
                        case 60:
                            if (w(t, iZ, iP)) {
                                long j3 = iN & 1048575;
                                r93.e(t, j3, u63.b(r93.t(t, j3), z53Var.d(K(iP), e63Var)));
                            } else {
                                r93.e(t, iN & 1048575, z53Var.d(K(iP), e63Var));
                                H(t, iP);
                            }
                            A(t, iZ, iP);
                            break;
                        case 61:
                            r93.e(t, iN & 1048575, z53Var.s());
                            A(t, iZ, iP);
                            break;
                        case 62:
                            r93.e(t, iN & 1048575, Integer.valueOf(z53Var.t()));
                            A(t, iZ, iP);
                            break;
                        case 63:
                            int iU2 = z53Var.u();
                            y63 y63VarM2 = M(iP);
                            if (y63VarM2 != null && !y63VarM2.k(iU2)) {
                                objB = y83.a(iZ, iU2, objB, l93Var);
                                break;
                            } else {
                                r93.e(t, iN & 1048575, Integer.valueOf(iU2));
                                A(t, iZ, iP);
                                break;
                            }
                        case 64:
                            r93.e(t, iN & 1048575, Integer.valueOf(z53Var.v()));
                            A(t, iZ, iP);
                            break;
                        case 65:
                            r93.e(t, iN & 1048575, Long.valueOf(z53Var.w()));
                            A(t, iZ, iP);
                            break;
                        case 66:
                            r93.e(t, iN & 1048575, Integer.valueOf(z53Var.x()));
                            A(t, iZ, iP);
                            break;
                        case 67:
                            r93.e(t, iN & 1048575, Long.valueOf(z53Var.y()));
                            A(t, iZ, iP);
                            break;
                        case 68:
                            r93.e(t, iN & 1048575, z53Var.j(K(iP), e63Var));
                            A(t, iZ, iP);
                            break;
                        default:
                            if (objB == null) {
                                try {
                                    objB = l93Var.n();
                                } catch (d73 unused) {
                                    l93Var.e(z53Var);
                                    if (objB == null) {
                                        objB = l93Var.k(t);
                                    }
                                    if (!l93Var.f(objB, z53Var)) {
                                        for (int i = this.j; i < this.k; i++) {
                                            p(t, this.i[i], objB, l93Var);
                                        }
                                        if (objB != null) {
                                            l93Var.r(t, objB);
                                            return;
                                        }
                                        return;
                                    }
                                    break;
                                }
                            }
                            if (!l93Var.f(objB, z53Var)) {
                                for (int i2 = this.j; i2 < this.k; i2++) {
                                    p(t, this.i[i2], objB, l93Var);
                                }
                                if (objB != null) {
                                    l93Var.r(t, objB);
                                    return;
                                }
                                return;
                            }
                            break;
                    }
                } else {
                    if (iZ == Integer.MAX_VALUE) {
                        for (int i3 = this.j; i3 < this.k; i3++) {
                            p(t, this.i[i3], objB, l93Var);
                        }
                        if (objB != null) {
                            l93Var.r(t, objB);
                            return;
                        }
                        return;
                    }
                    Object objC = !this.f ? null : g63Var.c(e63Var, this.e, iZ);
                    if (objC != null) {
                        if (objH == null) {
                            objH = g63Var.h(t);
                        }
                        k63<T> k63Var = objH;
                        objB = g63Var.b(z53Var, objC, e63Var, k63Var, objB, l93Var);
                        objH = k63Var;
                    } else {
                        l93Var.e(z53Var);
                        if (objB == null) {
                            objB = l93Var.k(t);
                        }
                        if (!l93Var.f(objB, z53Var)) {
                            for (int i4 = this.j; i4 < this.k; i4++) {
                                p(t, this.i[i4], objB, l93Var);
                            }
                            if (objB != null) {
                                l93Var.r(t, objB);
                                return;
                            }
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.j; i5 < this.k; i5++) {
                    p(t, this.i[i5], objB, l93Var);
                }
                if (objB != null) {
                    l93Var.r(t, objB);
                }
                throw th;
            }
        }
    }

    @Override // defpackage.w83
    public final void i(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.a.length; i += 3) {
            int iN = N(i);
            long j = 1048575 & iN;
            int i2 = this.a[i];
            switch ((iN & 267386880) >>> 20) {
                case 0:
                    if (F(t2, i)) {
                        r93.c(t, j, r93.r(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (F(t2, i)) {
                        r93.e.b(t, j, r93.p(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (F(t2, i)) {
                        r93.d(t, j, r93.l(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (F(t2, i)) {
                        r93.d(t, j, r93.l(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (F(t2, i)) {
                        r93.e.e(t, j, r93.k(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (F(t2, i)) {
                        r93.d(t, j, r93.l(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (F(t2, i)) {
                        r93.e.e(t, j, r93.k(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (F(t2, i)) {
                        r93.e.d(t, j, r93.o(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (F(t2, i)) {
                        r93.e(t, j, r93.t(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    v(t, t2, i);
                    break;
                case 10:
                    if (F(t2, i)) {
                        r93.e(t, j, r93.t(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (F(t2, i)) {
                        r93.e.e(t, j, r93.k(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (F(t2, i)) {
                        r93.e.e(t, j, r93.k(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (F(t2, i)) {
                        r93.e.e(t, j, r93.k(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (F(t2, i)) {
                        r93.d(t, j, r93.l(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (F(t2, i)) {
                        r93.e.e(t, j, r93.k(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (F(t2, i)) {
                        r93.d(t, j, r93.l(t2, j));
                        H(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    v(t, t2, i);
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
                    this.m.b(t, t2, j);
                    break;
                case 50:
                    y73 y73Var = this.p;
                    Class<?> cls = y83.a;
                    r93.e(t, j, y73Var.f(r93.t(t, j), r93.t(t2, j)));
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
                    if (w(t2, i2, i)) {
                        r93.e(t, j, r93.t(t2, j));
                        A(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    C(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (w(t2, i2, i)) {
                        r93.e(t, j, r93.t(t2, j));
                        A(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    C(t, t2, i);
                    break;
            }
        }
        l93<?, ?> l93Var = this.n;
        Class<?> cls2 = y83.a;
        l93Var.q(t, l93Var.s(l93Var.j(t), l93Var.j(t2)));
        if (this.f) {
            y83.f(this.o, t, t2);
        }
    }

    @Override // defpackage.w83
    public final void j(T t) {
        int i;
        int i2 = this.j;
        while (true) {
            i = this.k;
            if (i2 >= i) {
                break;
            }
            long jN = N(this.i[i2]) & 1048575;
            Object objT = r93.t(t, jN);
            if (objT != null) {
                r93.e(t, jN, this.p.d(objT));
            }
            i2++;
        }
        int length = this.i.length;
        while (i < length) {
            this.m.c(t, this.i[i]);
            i++;
        }
        this.n.g(t);
        if (this.f) {
            this.o.i(t);
        }
    }

    @Override // defpackage.w83
    public final int k(T t) {
        int i;
        int iT;
        int iO;
        int iG;
        int I;
        int iT2;
        int iO2;
        int iG2;
        int I2;
        if (this.h) {
            Unsafe unsafe = r;
            int i2 = 0;
            for (int i3 = 0; i3 < this.a.length; i3 += 3) {
                int iN = N(i3);
                int i4 = (iN & 267386880) >>> 20;
                int[] iArr = this.a;
                int i5 = iArr[i3];
                long j = iN & 1048575;
                if (i4 >= l63.O.e && i4 <= l63.b0.e) {
                    int i6 = iArr[i3 + 2];
                }
                switch (i4) {
                    case 0:
                        if (F(t, i3)) {
                            iT2 = b63.t(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (F(t, i3)) {
                            iT2 = b63.q(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (F(t, i3)) {
                            iT2 = b63.R(i5, r93.l(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (F(t, i3)) {
                            iT2 = b63.S(i5, r93.l(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (F(t, i3)) {
                            iT2 = b63.j(i5, r93.k(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (F(t, i3)) {
                            iT2 = b63.U(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (F(t, i3)) {
                            iT2 = b63.n(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (F(t, i3)) {
                            iT2 = b63.L(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (F(t, i3)) {
                            Object objT = r93.t(t, j);
                            iT2 = objT instanceof k53 ? b63.u(i5, (k53) objT) : b63.P(i5, (String) objT);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (F(t, i3)) {
                            iT2 = y83.t(i5, r93.t(t, j), K(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (F(t, i3)) {
                            iT2 = b63.u(i5, (k53) r93.t(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (F(t, i3)) {
                            iT2 = b63.k(i5, r93.k(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (F(t, i3)) {
                            iT2 = b63.p(i5, r93.k(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (F(t, i3)) {
                            iT2 = b63.o(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (F(t, i3)) {
                            iT2 = b63.V(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (F(t, i3)) {
                            iT2 = b63.m(i5, r93.k(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (F(t, i3)) {
                            iT2 = b63.T(i5, r93.l(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (F(t, i3)) {
                            iT2 = b63.v(i5, (e83) r93.t(t, j), K(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        iT2 = y83.T(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 19:
                        iT2 = y83.S(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 20:
                        iT2 = y83.L(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 21:
                        iT2 = y83.M(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 22:
                        iT2 = y83.P(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 23:
                        iT2 = y83.T(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 24:
                        iT2 = y83.S(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 25:
                        List<?> listE = E(t, j);
                        Class<?> cls = y83.a;
                        int size = listE.size();
                        iT2 = size == 0 ? 0 : size * b63.L(i5);
                        i2 += iT2;
                        break;
                    case 26:
                        iT2 = y83.u(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 27:
                        iT2 = y83.v(i5, E(t, j), K(i3));
                        i2 += iT2;
                        break;
                    case 28:
                        iT2 = y83.x(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 29:
                        iT2 = y83.Q(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 30:
                        iT2 = y83.O(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 31:
                        iT2 = y83.S(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 32:
                        iT2 = y83.T(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 33:
                        iT2 = y83.R(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 34:
                        iT2 = y83.N(i5, E(t, j));
                        i2 += iT2;
                        break;
                    case 35:
                        iO2 = y83.o((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        iO2 = y83.n((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        iO2 = y83.g((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        iO2 = y83.h((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        iO2 = y83.k((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        iO2 = y83.o((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        iO2 = y83.n((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        List list = (List) unsafe.getObject(t, j);
                        Class<?> cls2 = y83.a;
                        iO2 = list.size();
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        iO2 = y83.l((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        iO2 = y83.j((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        iO2 = y83.n((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        iO2 = y83.o((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        iO2 = y83.m((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        iO2 = y83.i((List) unsafe.getObject(t, j));
                        if (iO2 > 0) {
                            iG2 = b63.G(i5);
                            I2 = b63.I(iO2);
                            i2 = I2 + iG2 + iO2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        iT2 = y83.y(i5, E(t, j), K(i3));
                        i2 += iT2;
                        break;
                    case 50:
                        iT2 = this.p.a(i5, r93.t(t, j), L(i3));
                        i2 += iT2;
                        break;
                    case 51:
                        if (w(t, i5, i3)) {
                            iT2 = b63.t(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (w(t, i5, i3)) {
                            iT2 = b63.q(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (w(t, i5, i3)) {
                            iT2 = b63.R(i5, Q(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (w(t, i5, i3)) {
                            iT2 = b63.S(i5, Q(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (w(t, i5, i3)) {
                            iT2 = b63.j(i5, J(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (w(t, i5, i3)) {
                            iT2 = b63.U(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (w(t, i5, i3)) {
                            iT2 = b63.n(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (w(t, i5, i3)) {
                            iT2 = b63.L(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (w(t, i5, i3)) {
                            Object objT2 = r93.t(t, j);
                            iT2 = objT2 instanceof k53 ? b63.u(i5, (k53) objT2) : b63.P(i5, (String) objT2);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (w(t, i5, i3)) {
                            iT2 = y83.t(i5, r93.t(t, j), K(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (w(t, i5, i3)) {
                            iT2 = b63.u(i5, (k53) r93.t(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (w(t, i5, i3)) {
                            iT2 = b63.k(i5, J(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (w(t, i5, i3)) {
                            iT2 = b63.p(i5, J(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (w(t, i5, i3)) {
                            iT2 = b63.o(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (w(t, i5, i3)) {
                            iT2 = b63.V(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (w(t, i5, i3)) {
                            iT2 = b63.m(i5, J(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (w(t, i5, i3)) {
                            iT2 = b63.T(i5, Q(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (w(t, i5, i3)) {
                            iT2 = b63.v(i5, (e83) r93.t(t, j), K(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                }
            }
            l93<?, ?> l93Var = this.n;
            return l93Var.i(l93Var.j(t)) + i2;
        }
        Unsafe unsafe2 = r;
        int i7 = 0;
        int i8 = 1048575;
        int i9 = 0;
        for (int i10 = 0; i10 < this.a.length; i10 += 3) {
            int iN2 = N(i10);
            int[] iArr2 = this.a;
            int i11 = iArr2[i10];
            int i12 = (iN2 & 267386880) >>> 20;
            if (i12 <= 17) {
                int i13 = iArr2[i10 + 2];
                int i14 = i13 & 1048575;
                i = 1 << (i13 >>> 20);
                if (i14 != i8) {
                    i9 = unsafe2.getInt(t, i14);
                    i8 = i14;
                }
            } else {
                i = 0;
            }
            long j2 = iN2 & 1048575;
            switch (i12) {
                case 0:
                    if ((i9 & i) != 0) {
                        iT = b63.t(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i9 & i) != 0) {
                        iT = b63.q(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i9 & i) != 0) {
                        iT = b63.R(i11, unsafe2.getLong(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i9 & i) != 0) {
                        iT = b63.S(i11, unsafe2.getLong(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i9 & i) != 0) {
                        iT = b63.j(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i9 & i) != 0) {
                        iT = b63.U(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i9 & i) != 0) {
                        iT = b63.n(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i9 & i) != 0) {
                        iT = b63.L(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i9 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        iT = object instanceof k53 ? b63.u(i11, (k53) object) : b63.P(i11, (String) object);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i9 & i) != 0) {
                        iT = y83.t(i11, unsafe2.getObject(t, j2), K(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i9 & i) != 0) {
                        iT = b63.u(i11, (k53) unsafe2.getObject(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i9 & i) != 0) {
                        iT = b63.k(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i9 & i) != 0) {
                        iT = b63.p(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i9 & i) != 0) {
                        iT = b63.o(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i9 & i) != 0) {
                        iT = b63.V(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i9 & i) != 0) {
                        iT = b63.m(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i9 & i) != 0) {
                        iT = b63.T(i11, unsafe2.getLong(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i9 & i) != 0) {
                        iT = b63.v(i11, (e83) unsafe2.getObject(t, j2), K(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    iT = y83.T(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 19:
                    iT = y83.S(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 20:
                    iT = y83.L(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 21:
                    iT = y83.M(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 22:
                    iT = y83.P(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 23:
                    iT = y83.T(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 24:
                    iT = y83.S(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 25:
                    List list2 = (List) unsafe2.getObject(t, j2);
                    Class<?> cls3 = y83.a;
                    int size2 = list2.size();
                    iT = size2 == 0 ? 0 : size2 * b63.L(i11);
                    i7 += iT;
                    break;
                case 26:
                    iT = y83.u(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 27:
                    iT = y83.v(i11, (List) unsafe2.getObject(t, j2), K(i10));
                    i7 += iT;
                    break;
                case 28:
                    iT = y83.x(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 29:
                    iT = y83.Q(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 30:
                    iT = y83.O(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 31:
                    iT = y83.S(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 32:
                    iT = y83.T(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 33:
                    iT = y83.R(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 34:
                    iT = y83.N(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 35:
                    iO = y83.o((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    iO = y83.n((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    iO = y83.g((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    iO = y83.h((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    iO = y83.k((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    iO = y83.o((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    iO = y83.n((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list3 = (List) unsafe2.getObject(t, j2);
                    Class<?> cls4 = y83.a;
                    iO = list3.size();
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    iO = y83.l((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    iO = y83.j((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    iO = y83.n((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    iO = y83.o((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    iO = y83.m((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    iO = y83.i((List) unsafe2.getObject(t, j2));
                    if (iO > 0) {
                        iG = b63.G(i11);
                        I = b63.I(iO);
                        i7 = I + iG + iO + i7;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    iT = y83.y(i11, (List) unsafe2.getObject(t, j2), K(i10));
                    i7 += iT;
                    break;
                case 50:
                    iT = this.p.a(i11, unsafe2.getObject(t, j2), L(i10));
                    i7 += iT;
                    break;
                case 51:
                    if (w(t, i11, i10)) {
                        iT = b63.t(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (w(t, i11, i10)) {
                        iT = b63.q(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (w(t, i11, i10)) {
                        iT = b63.R(i11, Q(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (w(t, i11, i10)) {
                        iT = b63.S(i11, Q(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (w(t, i11, i10)) {
                        iT = b63.j(i11, J(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (w(t, i11, i10)) {
                        iT = b63.U(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (w(t, i11, i10)) {
                        iT = b63.n(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (w(t, i11, i10)) {
                        iT = b63.L(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (w(t, i11, i10)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        iT = object2 instanceof k53 ? b63.u(i11, (k53) object2) : b63.P(i11, (String) object2);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (w(t, i11, i10)) {
                        iT = y83.t(i11, unsafe2.getObject(t, j2), K(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (w(t, i11, i10)) {
                        iT = b63.u(i11, (k53) unsafe2.getObject(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (w(t, i11, i10)) {
                        iT = b63.k(i11, J(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (w(t, i11, i10)) {
                        iT = b63.p(i11, J(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (w(t, i11, i10)) {
                        iT = b63.o(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (w(t, i11, i10)) {
                        iT = b63.V(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (w(t, i11, i10)) {
                        iT = b63.m(i11, J(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (w(t, i11, i10)) {
                        iT = b63.T(i11, Q(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (w(t, i11, i10)) {
                        iT = b63.v(i11, (e83) unsafe2.getObject(t, j2), K(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
            }
        }
        l93<?, ?> l93Var2 = this.n;
        int i15 = l93Var2.i(l93Var2.j(t)) + i7;
        if (!this.f) {
            return i15;
        }
        k63<T> k63VarG = this.o.g(t);
        int iK = 0;
        for (int i16 = 0; i16 < k63VarG.a.d(); i16++) {
            Map.Entry entryH = k63VarG.a.h(i16);
            iK += k63.k((m63) entryH.getKey(), entryH.getValue());
        }
        for (Map.Entry entry : k63VarG.a.e()) {
            iK += k63.k((m63) entry.getKey(), entry.getValue());
        }
        return i15 + iK;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public final int l(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, g53 g53Var) throws IOException {
        int iE1;
        int iE12 = i;
        Unsafe unsafe = r;
        b73 b73VarD = (b73) unsafe.getObject(t, j2);
        if (!b73VarD.h0()) {
            int size = b73VarD.size();
            b73VarD = b73VarD.D(size == 0 ? 10 : size << 1);
            unsafe.putObject(t, j2, b73VarD);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    c63 c63Var = (c63) b73VarD;
                    int iE13 = c50.e1(bArr, iE12, g53Var);
                    int i8 = g53Var.a + iE13;
                    while (iE13 < i8) {
                        c63Var.h(Double.longBitsToDouble(c50.q4(bArr, iE13)));
                        iE13 += 8;
                    }
                    if (iE13 == i8) {
                        return iE13;
                    }
                    throw e73.a();
                }
                if (i5 == 1) {
                    c63 c63Var2 = (c63) b73VarD;
                    c63Var2.h(Double.longBitsToDouble(c50.q4(bArr, i)));
                    while (true) {
                        int i9 = iE12 + 8;
                        if (i9 >= i2) {
                            return i9;
                        }
                        iE12 = c50.e1(bArr, i9, g53Var);
                        if (i3 != g53Var.a) {
                            return i9;
                        }
                        c63Var2.h(Double.longBitsToDouble(c50.q4(bArr, iE12)));
                    }
                }
                return iE12;
            case 19:
            case 36:
                if (i5 == 2) {
                    q63 q63Var = (q63) b73VarD;
                    int iE14 = c50.e1(bArr, iE12, g53Var);
                    int i10 = g53Var.a + iE14;
                    while (iE14 < i10) {
                        q63Var.l(Float.intBitsToFloat(c50.h4(bArr, iE14)));
                        iE14 += 4;
                    }
                    if (iE14 == i10) {
                        return iE14;
                    }
                    throw e73.a();
                }
                if (i5 == 5) {
                    q63 q63Var2 = (q63) b73VarD;
                    q63Var2.l(Float.intBitsToFloat(c50.h4(bArr, i)));
                    while (true) {
                        int i11 = iE12 + 4;
                        if (i11 >= i2) {
                            return i11;
                        }
                        iE12 = c50.e1(bArr, i11, g53Var);
                        if (i3 != g53Var.a) {
                            return i11;
                        }
                        q63Var2.l(Float.intBitsToFloat(c50.h4(bArr, iE12)));
                    }
                }
                return iE12;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    t73 t73Var = (t73) b73VarD;
                    int iE15 = c50.e1(bArr, iE12, g53Var);
                    int i12 = g53Var.a + iE15;
                    while (iE15 < i12) {
                        iE15 = c50.O2(bArr, iE15, g53Var);
                        t73Var.j(g53Var.b);
                    }
                    if (iE15 == i12) {
                        return iE15;
                    }
                    throw e73.a();
                }
                if (i5 == 0) {
                    t73 t73Var2 = (t73) b73VarD;
                    int iO2 = c50.O2(bArr, iE12, g53Var);
                    t73Var2.j(g53Var.b);
                    while (iO2 < i2) {
                        int iE16 = c50.e1(bArr, iO2, g53Var);
                        if (i3 != g53Var.a) {
                            return iO2;
                        }
                        iO2 = c50.O2(bArr, iE16, g53Var);
                        t73Var2.j(g53Var.b);
                    }
                    return iO2;
                }
                return iE12;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return c50.f1(bArr, iE12, b73VarD, g53Var);
                }
                if (i5 == 0) {
                    return c50.R0(i3, bArr, i, i2, b73VarD, g53Var);
                }
                return iE12;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    t73 t73Var3 = (t73) b73VarD;
                    int iE17 = c50.e1(bArr, iE12, g53Var);
                    int i13 = g53Var.a + iE17;
                    while (iE17 < i13) {
                        t73Var3.j(c50.q4(bArr, iE17));
                        iE17 += 8;
                    }
                    if (iE17 == i13) {
                        return iE17;
                    }
                    throw e73.a();
                }
                if (i5 == 1) {
                    t73 t73Var4 = (t73) b73VarD;
                    t73Var4.j(c50.q4(bArr, i));
                    while (true) {
                        int i14 = iE12 + 8;
                        if (i14 >= i2) {
                            return i14;
                        }
                        iE12 = c50.e1(bArr, i14, g53Var);
                        if (i3 != g53Var.a) {
                            return i14;
                        }
                        t73Var4.j(c50.q4(bArr, iE12));
                    }
                }
                return iE12;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    v63 v63Var = (v63) b73VarD;
                    int iE18 = c50.e1(bArr, iE12, g53Var);
                    int i15 = g53Var.a + iE18;
                    while (iE18 < i15) {
                        v63Var.o(c50.h4(bArr, iE18));
                        iE18 += 4;
                    }
                    if (iE18 == i15) {
                        return iE18;
                    }
                    throw e73.a();
                }
                if (i5 == 5) {
                    v63 v63Var2 = (v63) b73VarD;
                    v63Var2.o(c50.h4(bArr, i));
                    while (true) {
                        int i16 = iE12 + 4;
                        if (i16 >= i2) {
                            return i16;
                        }
                        iE12 = c50.e1(bArr, i16, g53Var);
                        if (i3 != g53Var.a) {
                            return i16;
                        }
                        v63Var2.o(c50.h4(bArr, iE12));
                    }
                }
                return iE12;
            case 25:
            case 42:
                if (i5 == 2) {
                    i53 i53Var = (i53) b73VarD;
                    iE1 = c50.e1(bArr, iE12, g53Var);
                    int i17 = g53Var.a + iE1;
                    while (iE1 < i17) {
                        iE1 = c50.O2(bArr, iE1, g53Var);
                        i53Var.h(g53Var.b != 0);
                    }
                    if (iE1 != i17) {
                        throw e73.a();
                    }
                    return iE1;
                }
                if (i5 == 0) {
                    i53 i53Var2 = (i53) b73VarD;
                    iE12 = c50.O2(bArr, iE12, g53Var);
                    i53Var2.h(g53Var.b != 0);
                    while (iE12 < i2) {
                        int iE19 = c50.e1(bArr, iE12, g53Var);
                        if (i3 == g53Var.a) {
                            iE12 = c50.O2(bArr, iE19, g53Var);
                            i53Var2.h(g53Var.b != 0);
                        }
                    }
                }
                return iE12;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        iE12 = c50.e1(bArr, iE12, g53Var);
                        int i18 = g53Var.a;
                        if (i18 < 0) {
                            throw e73.b();
                        }
                        if (i18 == 0) {
                            b73VarD.add("");
                        } else {
                            b73VarD.add(new String(bArr, iE12, i18, u63.a));
                            iE12 += i18;
                        }
                        while (iE12 < i2) {
                            int iE110 = c50.e1(bArr, iE12, g53Var);
                            if (i3 == g53Var.a) {
                                iE12 = c50.e1(bArr, iE110, g53Var);
                                int i19 = g53Var.a;
                                if (i19 < 0) {
                                    throw e73.b();
                                }
                                if (i19 == 0) {
                                    b73VarD.add("");
                                } else {
                                    b73VarD.add(new String(bArr, iE12, i19, u63.a));
                                    iE12 += i19;
                                }
                            }
                        }
                    } else {
                        iE12 = c50.e1(bArr, iE12, g53Var);
                        int i20 = g53Var.a;
                        if (i20 < 0) {
                            throw e73.b();
                        }
                        if (i20 == 0) {
                            b73VarD.add("");
                        } else {
                            int i21 = iE12 + i20;
                            if (!u93.d(bArr, iE12, i21)) {
                                throw e73.h();
                            }
                            b73VarD.add(new String(bArr, iE12, i20, u63.a));
                            iE12 = i21;
                        }
                        while (iE12 < i2) {
                            int iE111 = c50.e1(bArr, iE12, g53Var);
                            if (i3 == g53Var.a) {
                                iE12 = c50.e1(bArr, iE111, g53Var);
                                int i22 = g53Var.a;
                                if (i22 < 0) {
                                    throw e73.b();
                                }
                                if (i22 == 0) {
                                    b73VarD.add("");
                                } else {
                                    int i23 = iE12 + i22;
                                    if (!u93.d(bArr, iE12, i23)) {
                                        throw e73.h();
                                    }
                                    b73VarD.add(new String(bArr, iE12, i22, u63.a));
                                    iE12 = i23;
                                }
                            }
                        }
                    }
                }
                return iE12;
            case 27:
                if (i5 == 2) {
                    return c50.a1(K(i6), i3, bArr, i, i2, b73VarD, g53Var);
                }
                return iE12;
            case 28:
                if (i5 == 2) {
                    int iE112 = c50.e1(bArr, iE12, g53Var);
                    int i24 = g53Var.a;
                    if (i24 < 0) {
                        throw e73.b();
                    }
                    if (i24 > bArr.length - iE112) {
                        throw e73.a();
                    }
                    if (i24 == 0) {
                        b73VarD.add(k53.f);
                    } else {
                        b73VarD.add(k53.M(bArr, iE112, i24));
                        iE112 += i24;
                    }
                    while (iE112 < i2) {
                        int iE113 = c50.e1(bArr, iE112, g53Var);
                        if (i3 != g53Var.a) {
                            return iE112;
                        }
                        iE112 = c50.e1(bArr, iE113, g53Var);
                        int i25 = g53Var.a;
                        if (i25 < 0) {
                            throw e73.b();
                        }
                        if (i25 > bArr.length - iE112) {
                            throw e73.a();
                        }
                        if (i25 == 0) {
                            b73VarD.add(k53.f);
                        } else {
                            b73VarD.add(k53.M(bArr, iE112, i25));
                            iE112 += i25;
                        }
                    }
                    return iE112;
                }
                return iE12;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iE1 = c50.R0(i3, bArr, i, i2, b73VarD, g53Var);
                    }
                    return iE12;
                }
                iE1 = c50.f1(bArr, iE12, b73VarD, g53Var);
                s63 s63Var = (s63) t;
                o93 o93Var = s63Var.zzitn;
                if (o93Var == o93.f) {
                    o93Var = null;
                }
                o93 o93Var2 = (o93) y83.b(i4, b73VarD, (y63) this.b[((i6 / 3) << 1) + 1], o93Var, this.n);
                if (o93Var2 != null) {
                    s63Var.zzitn = o93Var2;
                }
                return iE1;
            case 33:
            case 47:
                if (i5 == 2) {
                    v63 v63Var3 = (v63) b73VarD;
                    int iE114 = c50.e1(bArr, iE12, g53Var);
                    int i26 = g53Var.a + iE114;
                    while (iE114 < i26) {
                        iE114 = c50.e1(bArr, iE114, g53Var);
                        v63Var3.o(u53.A(g53Var.a));
                    }
                    if (iE114 == i26) {
                        return iE114;
                    }
                    throw e73.a();
                }
                if (i5 == 0) {
                    v63 v63Var4 = (v63) b73VarD;
                    int iE115 = c50.e1(bArr, iE12, g53Var);
                    v63Var4.o(u53.A(g53Var.a));
                    while (iE115 < i2) {
                        int iE116 = c50.e1(bArr, iE115, g53Var);
                        if (i3 != g53Var.a) {
                            return iE115;
                        }
                        iE115 = c50.e1(bArr, iE116, g53Var);
                        v63Var4.o(u53.A(g53Var.a));
                    }
                    return iE115;
                }
                return iE12;
            case 34:
            case 48:
                if (i5 == 2) {
                    t73 t73Var5 = (t73) b73VarD;
                    int iE117 = c50.e1(bArr, iE12, g53Var);
                    int i27 = g53Var.a + iE117;
                    while (iE117 < i27) {
                        iE117 = c50.O2(bArr, iE117, g53Var);
                        t73Var5.j(u53.v(g53Var.b));
                    }
                    if (iE117 == i27) {
                        return iE117;
                    }
                    throw e73.a();
                }
                if (i5 == 0) {
                    t73 t73Var6 = (t73) b73VarD;
                    int iO22 = c50.O2(bArr, iE12, g53Var);
                    t73Var6.j(u53.v(g53Var.b));
                    while (iO22 < i2) {
                        int iE118 = c50.e1(bArr, iO22, g53Var);
                        if (i3 != g53Var.a) {
                            return iO22;
                        }
                        iO22 = c50.O2(bArr, iE118, g53Var);
                        t73Var6.j(u53.v(g53Var.b));
                    }
                    return iO22;
                }
                return iE12;
            case 49:
                if (i5 == 3) {
                    w83 w83VarK = K(i6);
                    int i28 = (i3 & (-8)) | 4;
                    iE12 = c50.b1(w83VarK, bArr, i, i2, i28, g53Var);
                    b73VarD.add(g53Var.c);
                    while (iE12 < i2) {
                        int iE119 = c50.e1(bArr, iE12, g53Var);
                        if (i3 == g53Var.a) {
                            iE12 = c50.b1(w83VarK, bArr, iE119, i2, i28, g53Var);
                            b73VarD.add(g53Var.c);
                        }
                    }
                }
                return iE12;
            default:
                return iE12;
        }
    }

    public final <K, V> int m(T t, byte[] bArr, int i, int i2, int i3, long j, g53 g53Var) throws IOException {
        Unsafe unsafe = r;
        Object obj = this.b[(i3 / 3) << 1];
        Object object = unsafe.getObject(t, j);
        if (this.p.c(object)) {
            Object objE = this.p.e(obj);
            this.p.f(objE, object);
            unsafe.putObject(t, j, objE);
            object = objE;
        }
        this.p.g(obj);
        this.p.h(object);
        int iE1 = c50.e1(bArr, i, g53Var);
        int i4 = g53Var.a;
        if (i4 < 0 || i4 > i2 - iE1) {
            throw e73.a();
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x04df, code lost:
    
        if (r7 == 1048575) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x04e1, code lost:
    
        r30.putInt(r10, r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x04e7, code lost:
    
        r2 = r5.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x04eb, code lost:
    
        if (r2 >= r5.k) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04ed, code lost:
    
        r5.p(r10, r5.i[r2], r15, r5.n);
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04f9, code lost:
    
        if (r1 != 0) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x04fd, code lost:
    
        if (r0 != r36) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0504, code lost:
    
        throw defpackage.e73.g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0507, code lost:
    
        if (r0 > r36) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0509, code lost:
    
        if (r4 != r1) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x050b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0510, code lost:
    
        throw defpackage.e73.g();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x004f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int n(T r33, byte[] r34, int r35, int r36, int r37, defpackage.g53 r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g83.n(java.lang.Object, byte[], int, int, int, g53):int");
    }

    public final <UT, UB> UB p(Object obj, int i, UB ub, l93<UT, UB> l93Var) {
        int i2 = this.a[i];
        Object objT = r93.t(obj, r0[i + 1] & 1048575);
        if (objT == null) {
            return ub;
        }
        int i3 = (i / 3) << 1;
        y63 y63Var = (y63) this.b[i3 + 1];
        if (y63Var == null) {
            return ub;
        }
        Map<?, ?> mapH = this.p.h(objT);
        this.p.g(this.b[i3]);
        for (Map.Entry<?, ?> entry : mapH.entrySet()) {
            if (!y63Var.k(((Integer) entry.getValue()).intValue())) {
                if (ub == null) {
                    l93Var.n();
                }
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
        return ub;
    }

    public final <K, V> void t(ga3 ga3Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            this.p.g(this.b[(i2 / 3) << 1]);
            Map<?, ?> mapB = this.p.b(obj);
            d63 d63Var = (d63) ga3Var;
            Objects.requireNonNull(d63Var);
            Iterator<Map.Entry<?, ?>> it = mapB.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                d63Var.a.b(i, 2);
                next.getKey();
                next.getValue();
                throw null;
            }
        }
    }

    public final void u(Object obj, int i, z53 z53Var) throws IOException {
        if ((536870912 & i) != 0) {
            r93.e(obj, i & 1048575, z53Var.r());
        } else if (!this.g) {
            r93.e(obj, i & 1048575, z53Var.s());
        } else {
            z53Var.D(2);
            r93.e(obj, i & 1048575, z53Var.a.c());
        }
    }

    public final void v(T t, T t2, int i) {
        long j = this.a[i + 1] & 1048575;
        if (F(t2, i)) {
            Object objT = r93.t(t, j);
            Object objT2 = r93.t(t2, j);
            if (objT != null && objT2 != null) {
                r93.e(t, j, u63.b(objT, objT2));
                H(t, i);
            } else if (objT2 != null) {
                r93.e(t, j, objT2);
                H(t, i);
            }
        }
    }

    public final boolean w(T t, int i, int i2) {
        return r93.k(t, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final boolean x(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? F(t, i) : (i3 & i4) != 0;
    }

    public final int y(int i, int i2) {
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
}
