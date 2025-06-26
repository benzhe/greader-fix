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
public final class dm4<T> implements om4<T> {
    public static final int[] n = new int[0];
    public static final Unsafe o = in4.j();
    public final int[] a;
    public final Object[] b;
    public final am4 c;
    public final boolean d;
    public final boolean e;
    public final int[] f;
    public final int g;
    public final int h;
    public final em4 i;
    public final kl4 j;
    public final cn4<?, ?> k;
    public final fk4<?> l;
    public final tl4 m;

    public dm4(int[] iArr, Object[] objArr, int i, int i2, am4 am4Var, boolean z, int[] iArr2, int i3, int i4, em4 em4Var, kl4 kl4Var, cn4 cn4Var, fk4 fk4Var, tl4 tl4Var) {
        this.a = iArr;
        this.b = objArr;
        boolean z2 = am4Var instanceof pk4;
        this.e = z;
        this.d = fk4Var != null && fk4Var.d(am4Var);
        this.f = iArr2;
        this.g = i3;
        this.h = i4;
        this.i = em4Var;
        this.j = kl4Var;
        this.k = cn4Var;
        this.l = fk4Var;
        this.c = am4Var;
        this.m = tl4Var;
    }

    public static <T> int C(T t, long j) {
        return ((Integer) in4.q(t, j)).intValue();
    }

    public static <T> long D(T t, long j) {
        return ((Long) in4.q(t, j)).longValue();
    }

    public static <T> boolean E(T t, long j) {
        return ((Boolean) in4.q(t, j)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:182:0x03a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.dm4 h(defpackage.yl4 r35, defpackage.em4 r36, defpackage.kl4 r37, defpackage.cn4 r38, defpackage.fk4 r39, defpackage.tl4 r40) {
        /*
            Method dump skipped, instructions count: 1069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm4.h(yl4, em4, kl4, cn4, fk4, tl4):dm4");
    }

    public static Field j(Class<?> cls, String str) {
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

    public static List<?> k(Object obj, long j) {
        return (List) in4.q(obj, j);
    }

    public static void l(int i, Object obj, vn4 vn4Var) throws IOException {
        if (obj instanceof String) {
            ((ek4) vn4Var).a.j(i, (String) obj);
        } else {
            ((ek4) vn4Var).a.g(i, (vj4) obj);
        }
    }

    public static <UT, UB> void m(cn4<UT, UB> cn4Var, T t, vn4 vn4Var) throws IOException {
        cn4Var.b(cn4Var.a(t), vn4Var);
    }

    public static <T> double s(T t, long j) {
        return ((Double) in4.q(t, j)).doubleValue();
    }

    public static <T> float y(T t, long j) {
        return ((Float) in4.q(t, j)).floatValue();
    }

    public final boolean A(T t, T t2, int i) {
        return p(t, i) == p(t2, i);
    }

    public final int B(int i) {
        return this.a[i + 2];
    }

    @Override // defpackage.om4
    public final void a(T t) {
        int i;
        int i2 = this.g;
        while (true) {
            i = this.h;
            if (i2 >= i) {
                break;
            }
            long jZ = z(this.f[i2]) & 1048575;
            Object objQ = in4.q(t, jZ);
            if (objQ != null) {
                in4.e(t, jZ, this.m.a(objQ));
            }
            i2++;
        }
        int length = this.f.length;
        while (i < length) {
            this.j.a(t, this.f[i]);
            i++;
        }
        this.k.e(t);
        if (this.d) {
            this.l.f(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4  */
    @Override // defpackage.om4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(T r19) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm4.b(java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x01e1 A[PHI: r2
      0x01e1: PHI (r2v32 int) = (r2v10 int), (r2v33 int) binds: [B:81:0x01de, B:40:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.om4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(T r10) {
        /*
            Method dump skipped, instructions count: 736
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm4.c(java.lang.Object):int");
    }

    @Override // defpackage.om4
    public final void d(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.a.length; i += 3) {
            int iZ = z(i);
            long j = 1048575 & iZ;
            int i2 = this.a[i];
            switch ((iZ & 267386880) >>> 20) {
                case 0:
                    if (p(t2, i)) {
                        in4.f.c(t, j, in4.p(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (p(t2, i)) {
                        in4.f.d(t, j, in4.m(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (p(t2, i)) {
                        in4.d(t, j, in4.h(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (p(t2, i)) {
                        in4.d(t, j, in4.h(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (p(t2, i)) {
                        in4.f.e(t, j, in4.b(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (p(t2, i)) {
                        in4.d(t, j, in4.h(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (p(t2, i)) {
                        in4.f.e(t, j, in4.b(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (p(t2, i)) {
                        in4.f.g(t, j, in4.l(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (p(t2, i)) {
                        in4.e(t, j, in4.q(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    o(t, t2, i);
                    break;
                case 10:
                    if (p(t2, i)) {
                        in4.e(t, j, in4.q(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (p(t2, i)) {
                        in4.f.e(t, j, in4.b(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (p(t2, i)) {
                        in4.f.e(t, j, in4.b(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (p(t2, i)) {
                        in4.f.e(t, j, in4.b(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (p(t2, i)) {
                        in4.d(t, j, in4.h(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (p(t2, i)) {
                        in4.f.e(t, j, in4.b(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (p(t2, i)) {
                        in4.d(t, j, in4.h(t2, j));
                        u(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    o(t, t2, i);
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
                    this.j.b(t, t2, j);
                    break;
                case 50:
                    tl4 tl4Var = this.m;
                    Class<?> cls = qm4.a;
                    in4.e(t, j, tl4Var.e(in4.q(t, j), in4.q(t2, j)));
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
                    if (q(t2, i2, i)) {
                        in4.e(t, j, in4.q(t2, j));
                        v(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    x(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (q(t2, i2, i)) {
                        in4.e(t, j, in4.q(t2, j));
                        v(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    x(t, t2, i);
                    break;
            }
        }
        cn4<?, ?> cn4Var = this.k;
        Class<?> cls2 = qm4.a;
        cn4Var.c(t, cn4Var.d(cn4Var.a(t), cn4Var.a(t2)));
        if (this.d) {
            qm4.i(this.l, t, t2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // defpackage.om4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm4.e(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // defpackage.om4
    public final int f(T t) {
        int i;
        int iT;
        int iL;
        int iC;
        int iK;
        int iT2;
        int iL2;
        int iC2;
        int iK2;
        if (this.e) {
            Unsafe unsafe = o;
            int i2 = 0;
            for (int i3 = 0; i3 < this.a.length; i3 += 3) {
                int iZ = z(i3);
                int i4 = (iZ & 267386880) >>> 20;
                int[] iArr = this.a;
                int i5 = iArr[i3];
                long j = iZ & 1048575;
                if (i4 >= lk4.O.e && i4 <= lk4.b0.e) {
                    int i6 = iArr[i3 + 2];
                }
                switch (i4) {
                    case 0:
                        if (p(t, i3)) {
                            iT2 = ck4.t(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (p(t, i3)) {
                            iT2 = ck4.m(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (p(t, i3)) {
                            iT2 = ck4.A(i5, in4.h(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (p(t, i3)) {
                            iT2 = ck4.D(i5, in4.h(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (p(t, i3)) {
                            iT2 = ck4.H(i5, in4.b(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (p(t, i3)) {
                            iT2 = ck4.M(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (p(t, i3)) {
                            iT2 = ck4.R(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (p(t, i3)) {
                            iT2 = ck4.u(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (p(t, i3)) {
                            Object objQ = in4.q(t, j);
                            iT2 = objQ instanceof vj4 ? ck4.v(i5, (vj4) objQ) : ck4.n(i5, (String) objQ);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (p(t, i3)) {
                            iT2 = qm4.a(i5, in4.q(t, j), i(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (p(t, i3)) {
                            iT2 = ck4.v(i5, (vj4) in4.q(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (p(t, i3)) {
                            iT2 = ck4.L(i5, in4.b(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (p(t, i3)) {
                            iT2 = ck4.T(i5, in4.b(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (p(t, i3)) {
                            iT2 = ck4.S(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (p(t, i3)) {
                            iT2 = ck4.P(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (p(t, i3)) {
                            iT2 = ck4.O(i5, in4.b(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (p(t, i3)) {
                            iT2 = ck4.I(i5, in4.h(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (p(t, i3)) {
                            iT2 = ck4.w(i5, (am4) in4.q(t, j), i(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        iT2 = qm4.K(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 19:
                        iT2 = qm4.H(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 20:
                        iT2 = qm4.k(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 21:
                        iT2 = qm4.r(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 22:
                        iT2 = qm4.y(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 23:
                        iT2 = qm4.K(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 24:
                        iT2 = qm4.H(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 25:
                        List<?> listK = k(t, j);
                        Class<?> cls = qm4.a;
                        int size = listK.size();
                        iT2 = size == 0 ? 0 : size * ck4.u(i5);
                        i2 += iT2;
                        break;
                    case 26:
                        iT2 = qm4.b(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 27:
                        iT2 = qm4.c(i5, k(t, j), i(i3));
                        i2 += iT2;
                        break;
                    case 28:
                        iT2 = qm4.l(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 29:
                        iT2 = qm4.B(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 30:
                        iT2 = qm4.v(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 31:
                        iT2 = qm4.H(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 32:
                        iT2 = qm4.K(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 33:
                        iT2 = qm4.E(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 34:
                        iT2 = qm4.s(i5, k(t, j));
                        i2 += iT2;
                        break;
                    case 35:
                        iL2 = qm4.L((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        iL2 = qm4.I((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        iL2 = qm4.d((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        iL2 = qm4.n((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        iL2 = qm4.z((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        iL2 = qm4.L((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        iL2 = qm4.I((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        List list = (List) unsafe.getObject(t, j);
                        Class<?> cls2 = qm4.a;
                        iL2 = list.size();
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        iL2 = qm4.C((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        iL2 = qm4.w((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        iL2 = qm4.I((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        iL2 = qm4.L((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        iL2 = qm4.F((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        iL2 = qm4.t((List) unsafe.getObject(t, j));
                        if (iL2 > 0) {
                            iC2 = ck4.C(i5);
                            iK2 = ck4.K(iL2);
                            i2 = iK2 + iC2 + iL2 + i2;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        iT2 = qm4.m(i5, k(t, j), i(i3));
                        i2 += iT2;
                        break;
                    case 50:
                        iT2 = this.m.f(i5, in4.q(t, j), t(i3));
                        i2 += iT2;
                        break;
                    case 51:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.t(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.m(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.A(i5, D(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.D(i5, D(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.H(i5, C(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.M(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.R(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.u(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (q(t, i5, i3)) {
                            Object objQ2 = in4.q(t, j);
                            iT2 = objQ2 instanceof vj4 ? ck4.v(i5, (vj4) objQ2) : ck4.n(i5, (String) objQ2);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (q(t, i5, i3)) {
                            iT2 = qm4.a(i5, in4.q(t, j), i(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.v(i5, (vj4) in4.q(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.L(i5, C(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.T(i5, C(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.S(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.P(i5);
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.O(i5, C(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.I(i5, D(t, j));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (q(t, i5, i3)) {
                            iT2 = ck4.w(i5, (am4) in4.q(t, j), i(i3));
                            i2 += iT2;
                            break;
                        } else {
                            break;
                        }
                }
            }
            cn4<?, ?> cn4Var = this.k;
            return cn4Var.h(cn4Var.a(t)) + i2;
        }
        Unsafe unsafe2 = o;
        int i7 = 0;
        int i8 = 1048575;
        int i9 = 0;
        for (int i10 = 0; i10 < this.a.length; i10 += 3) {
            int iZ2 = z(i10);
            int[] iArr2 = this.a;
            int i11 = iArr2[i10];
            int i12 = (iZ2 & 267386880) >>> 20;
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
            long j2 = iZ2 & 1048575;
            switch (i12) {
                case 0:
                    if ((i9 & i) != 0) {
                        iT = ck4.t(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i9 & i) != 0) {
                        iT = ck4.m(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i9 & i) != 0) {
                        iT = ck4.A(i11, unsafe2.getLong(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i9 & i) != 0) {
                        iT = ck4.D(i11, unsafe2.getLong(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i9 & i) != 0) {
                        iT = ck4.H(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i9 & i) != 0) {
                        iT = ck4.M(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i9 & i) != 0) {
                        iT = ck4.R(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i9 & i) != 0) {
                        iT = ck4.u(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i9 & i) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        iT = object instanceof vj4 ? ck4.v(i11, (vj4) object) : ck4.n(i11, (String) object);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if ((i9 & i) != 0) {
                        iT = qm4.a(i11, unsafe2.getObject(t, j2), i(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i9 & i) != 0) {
                        iT = ck4.v(i11, (vj4) unsafe2.getObject(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i9 & i) != 0) {
                        iT = ck4.L(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i9 & i) != 0) {
                        iT = ck4.T(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i9 & i) != 0) {
                        iT = ck4.S(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i9 & i) != 0) {
                        iT = ck4.P(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i9 & i) != 0) {
                        iT = ck4.O(i11, unsafe2.getInt(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i9 & i) != 0) {
                        iT = ck4.I(i11, unsafe2.getLong(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i9 & i) != 0) {
                        iT = ck4.w(i11, (am4) unsafe2.getObject(t, j2), i(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    iT = qm4.K(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 19:
                    iT = qm4.H(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 20:
                    iT = qm4.k(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 21:
                    iT = qm4.r(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 22:
                    iT = qm4.y(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 23:
                    iT = qm4.K(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 24:
                    iT = qm4.H(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 25:
                    List list2 = (List) unsafe2.getObject(t, j2);
                    Class<?> cls3 = qm4.a;
                    int size2 = list2.size();
                    iT = size2 == 0 ? 0 : size2 * ck4.u(i11);
                    i7 += iT;
                    break;
                case 26:
                    iT = qm4.b(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 27:
                    iT = qm4.c(i11, (List) unsafe2.getObject(t, j2), i(i10));
                    i7 += iT;
                    break;
                case 28:
                    iT = qm4.l(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 29:
                    iT = qm4.B(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 30:
                    iT = qm4.v(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 31:
                    iT = qm4.H(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 32:
                    iT = qm4.K(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 33:
                    iT = qm4.E(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 34:
                    iT = qm4.s(i11, (List) unsafe2.getObject(t, j2));
                    i7 += iT;
                    break;
                case 35:
                    iL = qm4.L((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    iL = qm4.I((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    iL = qm4.d((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    iL = qm4.n((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    iL = qm4.z((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    iL = qm4.L((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    iL = qm4.I((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list3 = (List) unsafe2.getObject(t, j2);
                    Class<?> cls4 = qm4.a;
                    iL = list3.size();
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    iL = qm4.C((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    iL = qm4.w((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    iL = qm4.I((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    iL = qm4.L((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    iL = qm4.F((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    iL = qm4.t((List) unsafe2.getObject(t, j2));
                    if (iL > 0) {
                        iC = ck4.C(i11);
                        iK = ck4.K(iL);
                        i7 = iK + iC + iL + i7;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    iT = qm4.m(i11, (List) unsafe2.getObject(t, j2), i(i10));
                    i7 += iT;
                    break;
                case 50:
                    iT = this.m.f(i11, unsafe2.getObject(t, j2), t(i10));
                    i7 += iT;
                    break;
                case 51:
                    if (q(t, i11, i10)) {
                        iT = ck4.t(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (q(t, i11, i10)) {
                        iT = ck4.m(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (q(t, i11, i10)) {
                        iT = ck4.A(i11, D(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (q(t, i11, i10)) {
                        iT = ck4.D(i11, D(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (q(t, i11, i10)) {
                        iT = ck4.H(i11, C(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (q(t, i11, i10)) {
                        iT = ck4.M(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (q(t, i11, i10)) {
                        iT = ck4.R(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (q(t, i11, i10)) {
                        iT = ck4.u(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (q(t, i11, i10)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        iT = object2 instanceof vj4 ? ck4.v(i11, (vj4) object2) : ck4.n(i11, (String) object2);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (q(t, i11, i10)) {
                        iT = qm4.a(i11, unsafe2.getObject(t, j2), i(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (q(t, i11, i10)) {
                        iT = ck4.v(i11, (vj4) unsafe2.getObject(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (q(t, i11, i10)) {
                        iT = ck4.L(i11, C(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (q(t, i11, i10)) {
                        iT = ck4.T(i11, C(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (q(t, i11, i10)) {
                        iT = ck4.S(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (q(t, i11, i10)) {
                        iT = ck4.P(i11);
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (q(t, i11, i10)) {
                        iT = ck4.O(i11, C(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (q(t, i11, i10)) {
                        iT = ck4.I(i11, D(t, j2));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (q(t, i11, i10)) {
                        iT = ck4.w(i11, (am4) unsafe2.getObject(t, j2), i(i10));
                        i7 += iT;
                        break;
                    } else {
                        break;
                    }
            }
        }
        cn4<?, ?> cn4Var2 = this.k;
        int iH = cn4Var2.h(cn4Var2.a(t)) + i7;
        if (!this.d) {
            return iH;
        }
        kk4<T> kk4VarB = this.l.b(t);
        int iA = 0;
        for (int i15 = 0; i15 < kk4VarB.a.e(); i15++) {
            Map.Entry entryD = kk4VarB.a.d(i15);
            iA += kk4.a((mk4) entryD.getKey(), entryD.getValue());
        }
        for (Map.Entry entry : kk4VarB.a.g()) {
            iA += kk4.a((mk4) entry.getKey(), entry.getValue());
        }
        return iH + iA;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    @Override // defpackage.om4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(T r13, defpackage.vn4 r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm4.g(java.lang.Object, vn4):void");
    }

    public final om4 i(int i) {
        int i2 = (i / 3) << 1;
        Object[] objArr = this.b;
        om4 om4Var = (om4) objArr[i2];
        if (om4Var != null) {
            return om4Var;
        }
        om4<T> om4VarA = km4.c.a((Class) objArr[i2 + 1]);
        this.b[i2] = om4VarA;
        return om4VarA;
    }

    public final <K, V> void n(vn4 vn4Var, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            this.m.b(this.b[(i2 / 3) << 1]);
            Map<?, ?> mapC = this.m.c(obj);
            ek4 ek4Var = (ek4) vn4Var;
            Objects.requireNonNull(ek4Var);
            Iterator<Map.Entry<?, ?>> it = mapC.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                ek4Var.a.e(i, 2);
                next.getKey();
                next.getValue();
                throw null;
            }
        }
    }

    public final void o(T t, T t2, int i) {
        long j = this.a[i + 1] & 1048575;
        if (p(t2, i)) {
            Object objQ = in4.q(t, j);
            Object objQ2 = in4.q(t2, j);
            if (objQ != null && objQ2 != null) {
                in4.e(t, j, rk4.b(objQ, objQ2));
                u(t, i);
            } else if (objQ2 != null) {
                in4.e(t, j, objQ2);
                u(t, i);
            }
        }
    }

    public final boolean p(T t, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            return (in4.b(t, j) & (1 << (i2 >>> 20))) != 0;
        }
        int i3 = iArr[i + 1];
        long j2 = i3 & 1048575;
        switch ((i3 & 267386880) >>> 20) {
            case 0:
                return in4.p(t, j2) != 0.0d;
            case 1:
                return in4.m(t, j2) != 0.0f;
            case 2:
                return in4.h(t, j2) != 0;
            case 3:
                return in4.h(t, j2) != 0;
            case 4:
                return in4.b(t, j2) != 0;
            case 5:
                return in4.h(t, j2) != 0;
            case 6:
                return in4.b(t, j2) != 0;
            case 7:
                return in4.l(t, j2);
            case 8:
                Object objQ = in4.q(t, j2);
                if (objQ instanceof String) {
                    return !((String) objQ).isEmpty();
                }
                if (objQ instanceof vj4) {
                    return !vj4.f.equals(objQ);
                }
                throw new IllegalArgumentException();
            case 9:
                return in4.q(t, j2) != null;
            case 10:
                return !vj4.f.equals(in4.q(t, j2));
            case 11:
                return in4.b(t, j2) != 0;
            case 12:
                return in4.b(t, j2) != 0;
            case 13:
                return in4.b(t, j2) != 0;
            case 14:
                return in4.h(t, j2) != 0;
            case 15:
                return in4.b(t, j2) != 0;
            case 16:
                return in4.h(t, j2) != 0;
            case 17:
                return in4.q(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean q(T t, int i, int i2) {
        return in4.b(t, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final boolean r(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? p(t, i) : (i3 & i4) != 0;
    }

    public final Object t(int i) {
        return this.b[(i / 3) << 1];
    }

    public final void u(T t, int i) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        in4.f.e(t, j, (1 << (i2 >>> 20)) | in4.b(t, j));
    }

    public final void v(T t, int i, int i2) {
        in4.f.e(t, this.a[i2 + 2] & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(T r18, defpackage.vn4 r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dm4.w(java.lang.Object, vn4):void");
    }

    public final void x(T t, T t2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long j = i2 & 1048575;
        if (q(t2, i3, i)) {
            Object objQ = in4.q(t, j);
            Object objQ2 = in4.q(t2, j);
            if (objQ != null && objQ2 != null) {
                in4.e(t, j, rk4.b(objQ, objQ2));
                v(t, i3, i);
            } else if (objQ2 != null) {
                in4.e(t, j, objQ2);
                v(t, i3, i);
            }
        }
    }

    public final int z(int i) {
        return this.a[i + 1];
    }
}
