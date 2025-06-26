package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class y83 {
    public static final Class<?> a;
    public static final l93<?, ?> b;
    public static final l93<?, ?> c;
    public static final l93<?, ?> d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        b = s(false);
        c = s(true);
        d = new n93();
    }

    public static void A(int i, List<Long> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.M(i, b63.B(list.get(i2).longValue()));
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int iA = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA += b63.A(list.get(i3).longValue());
        }
        d63Var.a.E(iA);
        while (i2 < list.size()) {
            d63Var.a.x(b63.B(list.get(i2).longValue()));
            i2++;
        }
    }

    public static void B(int i, List<Long> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.Q(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = b63.b;
            i3 += 8;
        }
        d63Var.a.E(i3);
        while (i2 < list.size()) {
            d63Var.a.y(list.get(i2).longValue());
            i2++;
        }
    }

    public static void C(int i, List<Long> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.Q(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = b63.b;
            i3 += 8;
        }
        d63Var.a.E(i3);
        while (i2 < list.size()) {
            d63Var.a.y(list.get(i2).longValue());
            i2++;
        }
    }

    public static void D(int i, List<Integer> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.g(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int iH = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iH += b63.H(list.get(i3).intValue());
        }
        d63Var.a.E(iH);
        while (i2 < list.size()) {
            d63Var.a.C(list.get(i2).intValue());
            i2++;
        }
    }

    public static boolean E(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void F(int i, List<Integer> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.h(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int I = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            I += b63.I(list.get(i3).intValue());
        }
        d63Var.a.E(I);
        while (i2 < list.size()) {
            d63Var.a.E(list.get(i2).intValue());
            i2++;
        }
    }

    public static void G(int i, List<Integer> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.h(i, b63.K(list.get(i2).intValue()));
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += b63.J(list.get(i3).intValue());
        }
        d63Var.a.E(iJ);
        while (i2 < list.size()) {
            d63Var.a.E(b63.K(list.get(i2).intValue()));
            i2++;
        }
    }

    public static void H(int i, List<Integer> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.i(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = b63.b;
            i3 += 4;
        }
        d63Var.a.E(i3);
        while (i2 < list.size()) {
            d63Var.a.F(list.get(i2).intValue());
            i2++;
        }
    }

    public static void I(int i, List<Integer> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.i(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = b63.b;
            i3 += 4;
        }
        d63Var.a.E(i3);
        while (i2 < list.size()) {
            d63Var.a.F(list.get(i2).intValue());
            i2++;
        }
    }

    public static void J(int i, List<Integer> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.g(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int iH = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iH += b63.H(list.get(i3).intValue());
        }
        d63Var.a.E(iH);
        while (i2 < list.size()) {
            d63Var.a.C(list.get(i2).intValue());
            i2++;
        }
    }

    public static void K(int i, List<Boolean> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.D(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            Logger logger = b63.b;
            i3++;
        }
        d63Var.a.E(i3);
        while (i2 < list.size()) {
            d63Var.a.w(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static int L(int i, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (b63.G(i) * list.size()) + g(list);
    }

    public static int M(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (b63.G(i) * size) + h(list);
    }

    public static int N(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (b63.G(i) * size) + i(list);
    }

    public static int O(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (b63.G(i) * size) + j(list);
    }

    public static int P(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (b63.G(i) * size) + k(list);
    }

    public static int Q(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (b63.G(i) * size) + l(list);
    }

    public static int R(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (b63.G(i) * size) + m(list);
    }

    public static int S(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return b63.n(i) * size;
    }

    public static int T(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return b63.U(i) * size;
    }

    public static <UT, UB> UB a(int i, int i2, UB ub, l93<UT, UB> l93Var) {
        if (ub == null) {
            ub = l93Var.n();
        }
        l93Var.a(ub, i, i2);
        return ub;
    }

    public static <UT, UB> UB b(int i, List<Integer> list, y63 y63Var, UB ub, l93<UT, UB> l93Var) {
        if (y63Var == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (y63Var.k(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    if (ub == null) {
                        ub = l93Var.n();
                    }
                    l93Var.a(ub, i, iIntValue);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!y63Var.k(iIntValue2)) {
                    if (ub == null) {
                        ub = l93Var.n();
                    }
                    l93Var.a(ub, i, iIntValue2);
                    it.remove();
                }
            }
        }
        return ub;
    }

    public static void c(int i, List<String> list, ga3 ga3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!(list instanceof l73)) {
            while (i2 < list.size()) {
                d63Var.a.N(i, list.get(i2));
                i2++;
            }
            return;
        }
        l73 l73Var = (l73) list;
        while (i2 < list.size()) {
            Object objL = l73Var.L(i2);
            if (objL instanceof String) {
                d63Var.a.N(i, (String) objL);
            } else {
                d63Var.a.d(i, (k53) objL);
            }
            i2++;
        }
    }

    public static void d(int i, List<?> list, ga3 ga3Var, w83 w83Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            d63Var.a.f(i, (e83) list.get(i2), w83Var);
        }
    }

    public static void e(int i, List<Double> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                b63 b63Var = d63Var.a;
                double dDoubleValue = list.get(i2).doubleValue();
                Objects.requireNonNull(b63Var);
                b63Var.Q(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            Logger logger = b63.b;
            i3 += 8;
        }
        d63Var.a.E(i3);
        while (i2 < list.size()) {
            b63 b63Var2 = d63Var.a;
            double dDoubleValue2 = list.get(i2).doubleValue();
            Objects.requireNonNull(b63Var2);
            b63Var2.y(Double.doubleToRawLongBits(dDoubleValue2));
            i2++;
        }
    }

    public static <T, FT extends m63<FT>> void f(g63<FT> g63Var, T t, T t2) {
        k63<T> k63VarG = g63Var.g(t2);
        if (k63VarG.a.isEmpty()) {
            return;
        }
        k63<T> k63VarH = g63Var.h(t);
        Objects.requireNonNull(k63VarH);
        for (int i = 0; i < k63VarG.a.d(); i++) {
            k63VarH.l(k63VarG.a.h(i));
        }
        Iterator<T> it = k63VarG.a.e().iterator();
        while (it.hasNext()) {
            k63VarH.l((Map.Entry) it.next());
        }
    }

    public static int g(List<Long> list) {
        int iZ;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t73) {
            t73 t73Var = (t73) list;
            iZ = 0;
            while (i < size) {
                iZ += b63.z(t73Var.h(i));
                i++;
            }
        } else {
            iZ = 0;
            while (i < size) {
                iZ += b63.z(list.get(i).longValue());
                i++;
            }
        }
        return iZ;
    }

    public static int h(List<Long> list) {
        int iZ;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t73) {
            t73 t73Var = (t73) list;
            iZ = 0;
            while (i < size) {
                iZ += b63.z(t73Var.h(i));
                i++;
            }
        } else {
            iZ = 0;
            while (i < size) {
                iZ += b63.z(list.get(i).longValue());
                i++;
            }
        }
        return iZ;
    }

    public static int i(List<Long> list) {
        int iA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof t73) {
            t73 t73Var = (t73) list;
            iA = 0;
            while (i < size) {
                iA += b63.A(t73Var.h(i));
                i++;
            }
        } else {
            iA = 0;
            while (i < size) {
                iA += b63.A(list.get(i).longValue());
                i++;
            }
        }
        return iA;
    }

    public static int j(List<Integer> list) {
        int iH;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v63) {
            v63 v63Var = (v63) list;
            iH = 0;
            while (i < size) {
                iH += b63.H(v63Var.h(i));
                i++;
            }
        } else {
            iH = 0;
            while (i < size) {
                iH += b63.H(list.get(i).intValue());
                i++;
            }
        }
        return iH;
    }

    public static int k(List<Integer> list) {
        int iH;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v63) {
            v63 v63Var = (v63) list;
            iH = 0;
            while (i < size) {
                iH += b63.H(v63Var.h(i));
                i++;
            }
        } else {
            iH = 0;
            while (i < size) {
                iH += b63.H(list.get(i).intValue());
                i++;
            }
        }
        return iH;
    }

    public static int l(List<Integer> list) {
        int I;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v63) {
            v63 v63Var = (v63) list;
            I = 0;
            while (i < size) {
                I += b63.I(v63Var.h(i));
                i++;
            }
        } else {
            I = 0;
            while (i < size) {
                I += b63.I(list.get(i).intValue());
                i++;
            }
        }
        return I;
    }

    public static int m(List<Integer> list) {
        int iJ;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof v63) {
            v63 v63Var = (v63) list;
            iJ = 0;
            while (i < size) {
                iJ += b63.J(v63Var.h(i));
                i++;
            }
        } else {
            iJ = 0;
            while (i < size) {
                iJ += b63.J(list.get(i).intValue());
                i++;
            }
        }
        return iJ;
    }

    public static int n(List<?> list) {
        return list.size() << 2;
    }

    public static int o(List<?> list) {
        return list.size() << 3;
    }

    public static void p(int i, List<k53> list, ga3 ga3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            d63Var.a.d(i, list.get(i2));
        }
    }

    public static void q(int i, List<?> list, ga3 ga3Var, w83 w83Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            d63Var.e(i, list.get(i2), w83Var);
        }
    }

    public static void r(int i, List<Float> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                b63 b63Var = d63Var.a;
                float fFloatValue = list.get(i2).floatValue();
                Objects.requireNonNull(b63Var);
                b63Var.i(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            Logger logger = b63.b;
            i3 += 4;
        }
        d63Var.a.E(i3);
        while (i2 < list.size()) {
            b63 b63Var2 = d63Var.a;
            float fFloatValue2 = list.get(i2).floatValue();
            Objects.requireNonNull(b63Var2);
            b63Var2.F(Float.floatToRawIntBits(fFloatValue2));
            i2++;
        }
    }

    public static l93<?, ?> s(boolean z) {
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
            return (l93) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int t(int i, Object obj, w83 w83Var) {
        if (!(obj instanceof j73)) {
            return b63.c((e83) obj, w83Var) + b63.I(i << 3);
        }
        int I = b63.I(i << 3);
        int iB = ((j73) obj).b();
        return b63.I(iB) + iB + I;
    }

    public static int u(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iG = b63.G(i) * size;
        if (list instanceof l73) {
            l73 l73Var = (l73) list;
            while (i2 < size) {
                Object objL = l73Var.L(i2);
                iG = (objL instanceof k53 ? b63.l((k53) objL) : b63.O((String) objL)) + iG;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iG = (obj instanceof k53 ? b63.l((k53) obj) : b63.O((String) obj)) + iG;
                i2++;
            }
        }
        return iG;
    }

    public static int v(int i, List<?> list, w83 w83Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iG = b63.G(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof j73) {
                int iB = ((j73) obj).b();
                iG += b63.I(iB) + iB;
            } else {
                iG = b63.c((e83) obj, w83Var) + iG;
            }
        }
        return iG;
    }

    public static void w(int i, List<Long> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.M(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int iZ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZ += b63.z(list.get(i3).longValue());
        }
        d63Var.a.E(iZ);
        while (i2 < list.size()) {
            d63Var.a.x(list.get(i2).longValue());
            i2++;
        }
    }

    public static int x(int i, List<k53> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iG = b63.G(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            iG += b63.l(list.get(i2));
        }
        return iG;
    }

    public static int y(int i, List<e83> list, w83 w83Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iV = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iV += b63.v(i, list.get(i2), w83Var);
        }
        return iV;
    }

    public static void z(int i, List<Long> list, ga3 ga3Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        d63 d63Var = (d63) ga3Var;
        Objects.requireNonNull(d63Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                d63Var.a.M(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        d63Var.a.b(i, 2);
        int iZ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZ += b63.z(list.get(i3).longValue());
        }
        d63Var.a.E(iZ);
        while (i2 < list.size()) {
            d63Var.a.x(list.get(i2).longValue());
            i2++;
        }
    }
}
