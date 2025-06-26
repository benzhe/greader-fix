package defpackage;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pa4 {
    public static final Class<?> a;
    public static final ab4<?, ?> b;
    public static final ab4<?, ?> c;
    public static final ab4<?, ?> d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        b = t(false);
        c = t(true);
        d = new cb4();
    }

    public static int A(List<Integer> list) {
        int iW;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d94) {
            d94 d94Var = (d94) list;
            iW = 0;
            while (i < size) {
                iW += l84.w(d94Var.j(i));
                i++;
            }
        } else {
            iW = 0;
            while (i < size) {
                iW += l84.w(list.get(i).intValue());
                i++;
            }
        }
        return iW;
    }

    public static int B(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) * size) + A(list);
    }

    public static int C(List<Integer> list) {
        int iW;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d94) {
            d94 d94Var = (d94) list;
            iW = 0;
            while (i < size) {
                iW += l84.w(d94Var.j(i));
                i++;
            }
        } else {
            iW = 0;
            while (i < size) {
                iW += l84.w(list.get(i).intValue());
                i++;
            }
        }
        return iW;
    }

    public static int D(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) * size) + C(list);
    }

    public static int E(List<Integer> list) {
        int iX;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d94) {
            d94 d94Var = (d94) list;
            iX = 0;
            while (i < size) {
                iX += l84.x(d94Var.j(i));
                i++;
            }
        } else {
            iX = 0;
            while (i < size) {
                iX += l84.x(list.get(i).intValue());
                i++;
            }
        }
        return iX;
    }

    public static int F(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) * size) + E(list);
    }

    public static int G(List<Integer> list) {
        int iX;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d94) {
            d94 d94Var = (d94) list;
            iX = 0;
            while (i < size) {
                iX += l84.x(l84.c(d94Var.j(i)));
                i++;
            }
        } else {
            iX = 0;
            while (i < size) {
                iX += l84.x(l84.c(list.get(i).intValue()));
                i++;
            }
        }
        return iX;
    }

    public static int H(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) * size) + G(list);
    }

    public static int I(List<?> list) {
        return list.size() * 4;
    }

    public static int J(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) + 4) * size;
    }

    public static int K(List<?> list) {
        return list.size() * 8;
    }

    public static int L(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) + 8) * size;
    }

    public static int M(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iV = l84.v(i) * size;
        if (list instanceof p94) {
            p94 p94Var = (p94) list;
            while (i2 < size) {
                Object objZ0 = p94Var.z0(i2);
                iV = (objZ0 instanceof g84 ? l84.a((g84) objZ0) : l84.z((String) objZ0)) + iV;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iV = (obj instanceof g84 ? l84.a((g84) obj) : l84.z((String) obj)) + iV;
                i2++;
            }
        }
        return iV;
    }

    public static int N(int i, Object obj, na4 na4Var) {
        if (!(obj instanceof n94)) {
            return l84.b((da4) obj, na4Var) + l84.v(i);
        }
        int iV = l84.v(i);
        int iA = ((n94) obj).a();
        return l84.x(iA) + iA + iV;
    }

    public static int O(int i, List<?> list, na4 na4Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iV = l84.v(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof n94) {
                int iA = ((n94) obj).a();
                iV += l84.x(iA) + iA;
            } else {
                iV = l84.b((da4) obj, na4Var) + iV;
            }
        }
        return iV;
    }

    public static int P(int i, List<g84> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iV = l84.v(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            iV += l84.a(list.get(i2));
        }
        return iV;
    }

    public static int Q(int i, List<da4> list, na4 na4Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iE += l84.e(i, list.get(i2), na4Var);
        }
        return iE;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void b(int i, List<Double> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.k(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        m84Var.a.q(i3);
        while (i2 < list.size()) {
            m84Var.a.t(Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            i2++;
        }
    }

    public static void c(int i, List<Float> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.i(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        m84Var.a.q(i3);
        while (i2 < list.size()) {
            m84Var.a.r(Float.floatToRawIntBits(list.get(i2).floatValue()));
            i2++;
        }
    }

    public static void d(int i, List<Long> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.j(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int iY = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iY += l84.y(list.get(i3).longValue());
        }
        m84Var.a.q(iY);
        while (i2 < list.size()) {
            m84Var.a.s(list.get(i2).longValue());
            i2++;
        }
    }

    public static void e(int i, List<Long> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.j(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int iY = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iY += l84.y(list.get(i3).longValue());
        }
        m84Var.a.q(iY);
        while (i2 < list.size()) {
            m84Var.a.s(list.get(i2).longValue());
            i2++;
        }
    }

    public static void f(int i, List<Long> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.j(i, l84.d(list.get(i2).longValue()));
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int iY = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iY += l84.y(l84.d(list.get(i3).longValue()));
        }
        m84Var.a.q(iY);
        while (i2 < list.size()) {
            m84Var.a.s(l84.d(list.get(i2).longValue()));
            i2++;
        }
    }

    public static void g(int i, List<Long> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.k(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        m84Var.a.q(i3);
        while (i2 < list.size()) {
            m84Var.a.t(list.get(i2).longValue());
            i2++;
        }
    }

    public static void h(int i, List<Long> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.k(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        m84Var.a.q(i3);
        while (i2 < list.size()) {
            m84Var.a.t(list.get(i2).longValue());
            i2++;
        }
    }

    public static void i(int i, List<Integer> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.g(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int iW = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iW += l84.w(list.get(i3).intValue());
        }
        m84Var.a.q(iW);
        while (i2 < list.size()) {
            m84Var.a.p(list.get(i2).intValue());
            i2++;
        }
    }

    public static void j(int i, List<Integer> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.h(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int iX = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iX += l84.x(list.get(i3).intValue());
        }
        m84Var.a.q(iX);
        while (i2 < list.size()) {
            m84Var.a.q(list.get(i2).intValue());
            i2++;
        }
    }

    public static void k(int i, List<Integer> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.h(i, l84.c(list.get(i2).intValue()));
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int iX = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iX += l84.x(l84.c(list.get(i3).intValue()));
        }
        m84Var.a.q(iX);
        while (i2 < list.size()) {
            m84Var.a.q(l84.c(list.get(i2).intValue()));
            i2++;
        }
    }

    public static void l(int i, List<Integer> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.i(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        m84Var.a.q(i3);
        while (i2 < list.size()) {
            m84Var.a.r(list.get(i2).intValue());
            i2++;
        }
    }

    public static void m(int i, List<Integer> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.i(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        m84Var.a.q(i3);
        while (i2 < list.size()) {
            m84Var.a.r(list.get(i2).intValue());
            i2++;
        }
    }

    public static void n(int i, List<Integer> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.g(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int iW = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iW += l84.w(list.get(i3).intValue());
        }
        m84Var.a.q(iW);
        while (i2 < list.size()) {
            m84Var.a.p(list.get(i2).intValue());
            i2++;
        }
    }

    public static void o(int i, List<Boolean> list, m84 m84Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                m84Var.a.l(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        m84Var.a.f(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        m84Var.a.q(i3);
        while (i2 < list.size()) {
            m84Var.a.o(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void p(int i, List<String> list, m84 m84Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        int i2 = 0;
        if (!(list instanceof p94)) {
            while (i2 < list.size()) {
                m84Var.a.m(i, list.get(i2));
                i2++;
            }
            return;
        }
        p94 p94Var = (p94) list;
        while (i2 < list.size()) {
            Object objZ0 = p94Var.z0(i2);
            if (objZ0 instanceof String) {
                m84Var.a.m(i, (String) objZ0);
            } else {
                m84Var.a.n(i, (g84) objZ0);
            }
            i2++;
        }
    }

    public static void q(int i, List<g84> list, m84 m84Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(m84Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m84Var.a.n(i, list.get(i2));
        }
    }

    public static void r(int i, List<?> list, m84 m84Var, na4 na4Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            m84Var.e(i, list.get(i2), na4Var);
        }
    }

    public static void s(int i, List<?> list, m84 m84Var, na4 na4Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            m84Var.f(i, list.get(i2), na4Var);
        }
    }

    public static ab4<?, ?> t(boolean z) {
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
            return (ab4) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int u(List<Long> list) {
        int iY;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t94) {
            t94 t94Var = (t94) list;
            iY = 0;
            while (i < size) {
                iY += l84.y(t94Var.h(i));
                i++;
            }
        } else {
            iY = 0;
            while (i < size) {
                iY += l84.y(list.get(i).longValue());
                i++;
            }
        }
        return iY;
    }

    public static int v(int i, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (l84.v(i) * list.size()) + u(list);
    }

    public static int w(List<Long> list) {
        int iY;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t94) {
            t94 t94Var = (t94) list;
            iY = 0;
            while (i < size) {
                iY += l84.y(t94Var.h(i));
                i++;
            }
        } else {
            iY = 0;
            while (i < size) {
                iY += l84.y(list.get(i).longValue());
                i++;
            }
        }
        return iY;
    }

    public static int x(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) * size) + w(list);
    }

    public static int y(List<Long> list) {
        int iY;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t94) {
            t94 t94Var = (t94) list;
            iY = 0;
            while (i < size) {
                iY += l84.y(l84.d(t94Var.h(i)));
                i++;
            }
        } else {
            iY = 0;
            while (i < size) {
                iY += l84.y(l84.d(list.get(i).longValue()));
                i++;
            }
        }
        return iY;
    }

    public static int z(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l84.v(i) * size) + y(list);
    }
}
