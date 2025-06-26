package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class qm4 {
    public static final Class<?> a;
    public static final cn4<?, ?> b;
    public static final cn4<?, ?> c;
    public static final cn4<?, ?> d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        b = e(false);
        c = e(true);
        d = new en4();
    }

    public static void A(int i, List<Long> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.f(i, ck4.Q(list.get(i2).longValue()));
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += ck4.J(list.get(i3).longValue());
        }
        ek4Var.a.q(iJ);
        while (i2 < list.size()) {
            ek4Var.a.l(ck4.Q(list.get(i2).longValue()));
            i2++;
        }
    }

    public static int B(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ck4.C(i) * size) + C(list);
    }

    public static int C(List<Integer> list) {
        int iK;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof sk4) {
            sk4 sk4Var = (sk4) list;
            iK = 0;
            while (i < size) {
                iK += ck4.K(sk4Var.h(i));
                i++;
            }
        } else {
            iK = 0;
            while (i < size) {
                iK += ck4.K(list.get(i).intValue());
                i++;
            }
        }
        return iK;
    }

    public static void D(int i, List<Long> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.y(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = ck4.b;
            i3 += 8;
        }
        ek4Var.a.q(i3);
        while (i2 < list.size()) {
            ek4Var.a.z(list.get(i2).longValue());
            i2++;
        }
    }

    public static int E(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ck4.C(i) * size) + F(list);
    }

    public static int F(List<Integer> list) {
        int iN;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof sk4) {
            sk4 sk4Var = (sk4) list;
            iN = 0;
            while (i < size) {
                iN += ck4.N(sk4Var.h(i));
                i++;
            }
        } else {
            iN = 0;
            while (i < size) {
                iN += ck4.N(list.get(i).intValue());
                i++;
            }
        }
        return iN;
    }

    public static void G(int i, List<Long> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.y(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = ck4.b;
            i3 += 8;
        }
        ek4Var.a.q(i3);
        while (i2 < list.size()) {
            ek4Var.a.z(list.get(i2).longValue());
            i2++;
        }
    }

    public static int H(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return ck4.R(i) * size;
    }

    public static int I(List<?> list) {
        return list.size() << 2;
    }

    public static void J(int i, List<Integer> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.r(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int iG = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iG += ck4.G(list.get(i3).intValue());
        }
        ek4Var.a.q(iG);
        while (i2 < list.size()) {
            ek4Var.a.d(list.get(i2).intValue());
            i2++;
        }
    }

    public static int K(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return ck4.M(i) * size;
    }

    public static int L(List<?> list) {
        return list.size() << 3;
    }

    public static void M(int i, List<Integer> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.x(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int iK = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iK += ck4.K(list.get(i3).intValue());
        }
        ek4Var.a.q(iK);
        while (i2 < list.size()) {
            ek4Var.a.q(list.get(i2).intValue());
            i2++;
        }
    }

    public static void N(int i, List<Integer> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.x(i, ck4.U(list.get(i2).intValue()));
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int iN = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iN += ck4.N(list.get(i3).intValue());
        }
        ek4Var.a.q(iN);
        while (i2 < list.size()) {
            ek4Var.a.q(ck4.U(list.get(i2).intValue()));
            i2++;
        }
    }

    public static void O(int i, List<Integer> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.F(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = ck4.b;
            i3 += 4;
        }
        ek4Var.a.q(i3);
        while (i2 < list.size()) {
            ek4Var.a.B(list.get(i2).intValue());
            i2++;
        }
    }

    public static void P(int i, List<Integer> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.F(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = ck4.b;
            i3 += 4;
        }
        ek4Var.a.q(i3);
        while (i2 < list.size()) {
            ek4Var.a.B(list.get(i2).intValue());
            i2++;
        }
    }

    public static void Q(int i, List<Integer> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.r(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int iG = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iG += ck4.G(list.get(i3).intValue());
        }
        ek4Var.a.q(iG);
        while (i2 < list.size()) {
            ek4Var.a.d(list.get(i2).intValue());
            i2++;
        }
    }

    public static void R(int i, List<Boolean> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.k(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            Logger logger = ck4.b;
            i3++;
        }
        ek4Var.a.q(i3);
        while (i2 < list.size()) {
            ek4Var.a.c(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static int a(int i, Object obj, om4 om4Var) {
        if (!(obj instanceof fl4)) {
            return ck4.b((am4) obj, om4Var) + ck4.K(i << 3);
        }
        int iK = ck4.K(i << 3);
        int iA = ((fl4) obj).a();
        return ck4.K(iA) + iA + iK;
    }

    public static int b(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iC = ck4.C(i) * size;
        if (list instanceof hl4) {
            hl4 hl4Var = (hl4) list;
            while (i2 < size) {
                Object objC = hl4Var.c(i2);
                iC = (objC instanceof vj4 ? ck4.o((vj4) objC) : ck4.p((String) objC)) + iC;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iC = (obj instanceof vj4 ? ck4.o((vj4) obj) : ck4.p((String) obj)) + iC;
                i2++;
            }
        }
        return iC;
    }

    public static int c(int i, List<?> list, om4 om4Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iC = ck4.C(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof fl4) {
                int iA = ((fl4) obj).a();
                iC += ck4.K(iA) + iA;
            } else {
                iC = ck4.b((am4) obj, om4Var) + iC;
            }
        }
        return iC;
    }

    public static int d(List<Long> list) {
        int iE;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ol4) {
            ol4 ol4Var = (ol4) list;
            iE = 0;
            while (i < size) {
                iE += ck4.E(ol4Var.h(i));
                i++;
            }
        } else {
            iE = 0;
            while (i < size) {
                iE += ck4.E(list.get(i).longValue());
                i++;
            }
        }
        return iE;
    }

    public static cn4<?, ?> e(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (cn4) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static void f(int i, List<String> list, vn4 vn4Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!(list instanceof hl4)) {
            while (i2 < list.size()) {
                ek4Var.a.j(i, list.get(i2));
                i2++;
            }
            return;
        }
        hl4 hl4Var = (hl4) list;
        while (i2 < list.size()) {
            Object objC = hl4Var.c(i2);
            if (objC instanceof String) {
                ek4Var.a.j(i, (String) objC);
            } else {
                ek4Var.a.g(i, (vj4) objC);
            }
            i2++;
        }
    }

    public static void g(int i, List<?> list, vn4 vn4Var, om4 om4Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ek4Var.a.i(i, (am4) list.get(i2), om4Var);
        }
    }

    public static void h(int i, List<Double> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ck4 ck4Var = ek4Var.a;
                double dDoubleValue = list.get(i2).doubleValue();
                Objects.requireNonNull(ck4Var);
                ck4Var.y(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            Logger logger = ck4.b;
            i3 += 8;
        }
        ek4Var.a.q(i3);
        while (i2 < list.size()) {
            ck4 ck4Var2 = ek4Var.a;
            double dDoubleValue2 = list.get(i2).doubleValue();
            Objects.requireNonNull(ck4Var2);
            ck4Var2.z(Double.doubleToRawLongBits(dDoubleValue2));
            i2++;
        }
    }

    public static <T, FT extends mk4<FT>> void i(fk4<FT> fk4Var, T t, T t2) {
        kk4<T> kk4VarB = fk4Var.b(t2);
        if (kk4VarB.a.isEmpty()) {
            return;
        }
        kk4<T> kk4VarE = fk4Var.e(t);
        Objects.requireNonNull(kk4VarE);
        for (int i = 0; i < kk4VarB.a.e(); i++) {
            kk4VarE.j(kk4VarB.a.d(i));
        }
        Iterator<T> it = kk4VarB.a.g().iterator();
        while (it.hasNext()) {
            kk4VarE.j((Map.Entry) it.next());
        }
    }

    public static boolean j(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int k(int i, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (ck4.C(i) * list.size()) + d(list);
    }

    public static int l(int i, List<vj4> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iC = ck4.C(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            iC += ck4.o(list.get(i2));
        }
        return iC;
    }

    public static int m(int i, List<am4> list, om4 om4Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iW += ck4.w(i, list.get(i2), om4Var);
        }
        return iW;
    }

    public static int n(List<Long> list) {
        int iE;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ol4) {
            ol4 ol4Var = (ol4) list;
            iE = 0;
            while (i < size) {
                iE += ck4.E(ol4Var.h(i));
                i++;
            }
        } else {
            iE = 0;
            while (i < size) {
                iE += ck4.E(list.get(i).longValue());
                i++;
            }
        }
        return iE;
    }

    public static void o(int i, List<vj4> list, vn4 vn4Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ek4Var.a.g(i, list.get(i2));
        }
    }

    public static void p(int i, List<?> list, vn4 vn4Var, om4 om4Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ek4Var.e(i, list.get(i2), om4Var);
        }
    }

    public static void q(int i, List<Float> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ck4 ck4Var = ek4Var.a;
                float fFloatValue = list.get(i2).floatValue();
                Objects.requireNonNull(ck4Var);
                ck4Var.F(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            Logger logger = ck4.b;
            i3 += 4;
        }
        ek4Var.a.q(i3);
        while (i2 < list.size()) {
            ck4 ck4Var2 = ek4Var.a;
            float fFloatValue2 = list.get(i2).floatValue();
            Objects.requireNonNull(ck4Var2);
            ck4Var2.B(Float.floatToRawIntBits(fFloatValue2));
            i2++;
        }
    }

    public static int r(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ck4.C(i) * size) + n(list);
    }

    public static int s(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ck4.C(i) * size) + t(list);
    }

    public static int t(List<Long> list) {
        int iJ;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ol4) {
            ol4 ol4Var = (ol4) list;
            iJ = 0;
            while (i < size) {
                iJ += ck4.J(ol4Var.h(i));
                i++;
            }
        } else {
            iJ = 0;
            while (i < size) {
                iJ += ck4.J(list.get(i).longValue());
                i++;
            }
        }
        return iJ;
    }

    public static void u(int i, List<Long> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.f(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int iE = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iE += ck4.E(list.get(i3).longValue());
        }
        ek4Var.a.q(iE);
        while (i2 < list.size()) {
            ek4Var.a.l(list.get(i2).longValue());
            i2++;
        }
    }

    public static int v(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ck4.C(i) * size) + w(list);
    }

    public static int w(List<Integer> list) {
        int iG;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof sk4) {
            sk4 sk4Var = (sk4) list;
            iG = 0;
            while (i < size) {
                iG += ck4.G(sk4Var.h(i));
                i++;
            }
        } else {
            iG = 0;
            while (i < size) {
                iG += ck4.G(list.get(i).intValue());
                i++;
            }
        }
        return iG;
    }

    public static void x(int i, List<Long> list, vn4 vn4Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ek4 ek4Var = (ek4) vn4Var;
        Objects.requireNonNull(ek4Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ek4Var.a.f(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ek4Var.a.e(i, 2);
        int iE = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iE += ck4.E(list.get(i3).longValue());
        }
        ek4Var.a.q(iE);
        while (i2 < list.size()) {
            ek4Var.a.l(list.get(i2).longValue());
            i2++;
        }
    }

    public static int y(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ck4.C(i) * size) + z(list);
    }

    public static int z(List<Integer> list) {
        int iG;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof sk4) {
            sk4 sk4Var = (sk4) list;
            iG = 0;
            while (i < size) {
                iG += ck4.G(sk4Var.h(i));
                i++;
            }
        } else {
            iG = 0;
            while (i < size) {
                iG += ck4.G(list.get(i).intValue());
                i++;
            }
        }
        return iG;
    }
}
