package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class pz3 {
    public static final Class<?> a;
    public static final b04<?, ?> b;
    public static final b04<?, ?> c;
    public static final b04<?, ?> d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        b = r(false);
        c = r(true);
        d = new d04();
    }

    public static int A(List<?> list) {
        return list.size() << 2;
    }

    public static void B(int i, List<Integer> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.A(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int iY = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iY += zw3.Y(list.get(i3).intValue());
        }
        bx3Var.a.V(iY);
        while (i2 < list.size()) {
            bx3Var.a.U(list.get(i2).intValue());
            i2++;
        }
    }

    public static int C(List<?> list) {
        return list.size() << 3;
    }

    public static void D(int i, List<Integer> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.D(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int iZ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZ += zw3.Z(list.get(i3).intValue());
        }
        bx3Var.a.V(iZ);
        while (i2 < list.size()) {
            bx3Var.a.V(list.get(i2).intValue());
            i2++;
        }
    }

    public static void E(int i, List<Integer> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.D(i, zw3.b0(list.get(i2).intValue()));
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int iA0 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA0 += zw3.a0(list.get(i3).intValue());
        }
        bx3Var.a.V(iA0);
        while (i2 < list.size()) {
            bx3Var.a.V(zw3.b0(list.get(i2).intValue()));
            i2++;
        }
    }

    public static void F(int i, List<Integer> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.I(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = zw3.b;
            i3 += 4;
        }
        bx3Var.a.V(i3);
        while (i2 < list.size()) {
            bx3Var.a.W(list.get(i2).intValue());
            i2++;
        }
    }

    public static void G(int i, List<Integer> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.I(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = zw3.b;
            i3 += 4;
        }
        bx3Var.a.V(i3);
        while (i2 < list.size()) {
            bx3Var.a.W(list.get(i2).intValue());
            i2++;
        }
    }

    public static void H(int i, List<Integer> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.A(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int iY = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iY += zw3.Y(list.get(i3).intValue());
        }
        bx3Var.a.V(iY);
        while (i2 < list.size()) {
            bx3Var.a.U(list.get(i2).intValue());
            i2++;
        }
    }

    public static void I(int i, List<Boolean> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.t(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            Logger logger = zw3.b;
            i3++;
        }
        bx3Var.a.V(i3);
        while (i2 < list.size()) {
            bx3Var.a.e(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static int J(int i, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (zw3.X(i) * list.size()) + a(list);
    }

    public static int K(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zw3.X(i) * size) + f(list);
    }

    public static int L(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zw3.X(i) * size) + m(list);
    }

    public static int M(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zw3.X(i) * size) + q(list);
    }

    public static int N(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zw3.X(i) * size) + u(list);
    }

    public static int O(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zw3.X(i) * size) + w(list);
    }

    public static int P(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zw3.X(i) * size) + y(list);
    }

    public static int Q(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zw3.Q(i) * size;
    }

    public static int R(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zw3.J(i) * size;
    }

    public static int a(List<Long> list) {
        int iH;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof my3) {
            my3 my3Var = (my3) list;
            iH = 0;
            while (i < size) {
                iH += zw3.H(my3Var.h(i));
                i++;
            }
        } else {
            iH = 0;
            while (i < size) {
                iH += zw3.H(list.get(i).longValue());
                i++;
            }
        }
        return iH;
    }

    public static void b(int i, List<String> list, v04 v04Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!(list instanceof hy3)) {
            while (i2 < list.size()) {
                bx3Var.a.j(i, list.get(i2));
                i2++;
            }
            return;
        }
        hy3 hy3Var = (hy3) list;
        while (i2 < list.size()) {
            Object objM = hy3Var.m(i2);
            if (objM instanceof String) {
                bx3Var.a.j(i, (String) objM);
            } else {
                bx3Var.a.g(i, (sw3) objM);
            }
            i2++;
        }
    }

    public static void c(int i, List<?> list, v04 v04Var, nz3 nz3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            bx3Var.a.i(i, (xy3) list.get(i2), nz3Var);
        }
    }

    public static void d(int i, List<Double> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zw3 zw3Var = bx3Var.a;
                double dDoubleValue = list.get(i2).doubleValue();
                Objects.requireNonNull(zw3Var);
                zw3Var.B(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            Logger logger = zw3.b;
            i3 += 8;
        }
        bx3Var.a.V(i3);
        while (i2 < list.size()) {
            zw3 zw3Var2 = bx3Var.a;
            double dDoubleValue2 = list.get(i2).doubleValue();
            Objects.requireNonNull(zw3Var2);
            zw3Var2.E(Double.doubleToRawLongBits(dDoubleValue2));
            i2++;
        }
    }

    public static <T, FT extends mx3<FT>> void e(fx3<FT> fx3Var, T t, T t2) {
        jx3<T> jx3VarB = fx3Var.b(t2);
        if (jx3VarB.a()) {
            return;
        }
        jx3<T> jx3VarD = fx3Var.d(t);
        Objects.requireNonNull(jx3VarD);
        for (int i = 0; i < jx3VarB.a.e(); i++) {
            jx3VarD.j(jx3VarB.a.c(i));
        }
        Iterator<T> it = jx3VarB.a.f().iterator();
        while (it.hasNext()) {
            jx3VarD.j((Map.Entry) it.next());
        }
    }

    public static int f(List<Long> list) {
        int iH;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof my3) {
            my3 my3Var = (my3) list;
            iH = 0;
            while (i < size) {
                iH += zw3.H(my3Var.h(i));
                i++;
            }
        } else {
            iH = 0;
            while (i < size) {
                iH += zw3.H(list.get(i).longValue());
                i++;
            }
        }
        return iH;
    }

    public static void g(int i, List<sw3> list, v04 v04Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            bx3Var.a.g(i, list.get(i2));
        }
    }

    public static void h(int i, List<?> list, v04 v04Var, nz3 nz3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            bx3Var.f(i, list.get(i2), nz3Var);
        }
    }

    public static void i(int i, List<Float> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zw3 zw3Var = bx3Var.a;
                float fFloatValue = list.get(i2).floatValue();
                Objects.requireNonNull(zw3Var);
                zw3Var.I(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            Logger logger = zw3.b;
            i3 += 4;
        }
        bx3Var.a.V(i3);
        while (i2 < list.size()) {
            zw3 zw3Var2 = bx3Var.a;
            float fFloatValue2 = list.get(i2).floatValue();
            Objects.requireNonNull(zw3Var2);
            zw3Var2.W(Float.floatToRawIntBits(fFloatValue2));
            i2++;
        }
    }

    public static int j(int i, Object obj, nz3 nz3Var) {
        if (!(obj instanceof fy3)) {
            return zw3.p((xy3) obj, nz3Var) + zw3.X(i);
        }
        int iX = zw3.X(i);
        int iA = ((fy3) obj).a();
        return zw3.Z(iA) + iA + iX;
    }

    public static int k(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iX = zw3.X(i) * size;
        if (list instanceof hy3) {
            hy3 hy3Var = (hy3) list;
            while (i2 < size) {
                Object objM = hy3Var.m(i2);
                iX = (objM instanceof sw3 ? zw3.o((sw3) objM) : zw3.O((String) objM)) + iX;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iX = (obj instanceof sw3 ? zw3.o((sw3) obj) : zw3.O((String) obj)) + iX;
                i2++;
            }
        }
        return iX;
    }

    public static int l(int i, List<?> list, nz3 nz3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iX = zw3.X(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            iX += obj instanceof fy3 ? zw3.d((fy3) obj) : zw3.p((xy3) obj, nz3Var);
        }
        return iX;
    }

    public static int m(List<Long> list) {
        int iL;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof my3) {
            my3 my3Var = (my3) list;
            iL = 0;
            while (i < size) {
                iL += zw3.L(my3Var.h(i));
                i++;
            }
        } else {
            iL = 0;
            while (i < size) {
                iL += zw3.L(list.get(i).longValue());
                i++;
            }
        }
        return iL;
    }

    public static void n(int i, List<Long> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.f(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int iH = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iH += zw3.H(list.get(i3).longValue());
        }
        bx3Var.a.V(iH);
        while (i2 < list.size()) {
            bx3Var.a.u(list.get(i2).longValue());
            i2++;
        }
    }

    public static int o(int i, List<sw3> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iX = zw3.X(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            iX += zw3.o(list.get(i2));
        }
        return iX;
    }

    public static int p(int i, List<xy3> list, nz3 nz3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZ = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZ += zw3.z(i, list.get(i2), nz3Var);
        }
        return iZ;
    }

    public static int q(List<Integer> list) {
        int iY;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof tx3) {
            tx3 tx3Var = (tx3) list;
            iY = 0;
            while (i < size) {
                iY += zw3.Y(tx3Var.h(i));
                i++;
            }
        } else {
            iY = 0;
            while (i < size) {
                iY += zw3.Y(list.get(i).intValue());
                i++;
            }
        }
        return iY;
    }

    public static b04<?, ?> r(boolean z) {
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
            return (b04) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static void s(int i, List<Long> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.f(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int iH = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iH += zw3.H(list.get(i3).longValue());
        }
        bx3Var.a.V(iH);
        while (i2 < list.size()) {
            bx3Var.a.u(list.get(i2).longValue());
            i2++;
        }
    }

    public static boolean t(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int u(List<Integer> list) {
        int iY;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof tx3) {
            tx3 tx3Var = (tx3) list;
            iY = 0;
            while (i < size) {
                iY += zw3.Y(tx3Var.h(i));
                i++;
            }
        } else {
            iY = 0;
            while (i < size) {
                iY += zw3.Y(list.get(i).intValue());
                i++;
            }
        }
        return iY;
    }

    public static void v(int i, List<Long> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.f(i, zw3.R(list.get(i2).longValue()));
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int iL = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iL += zw3.L(list.get(i3).longValue());
        }
        bx3Var.a.V(iL);
        while (i2 < list.size()) {
            bx3Var.a.u(zw3.R(list.get(i2).longValue()));
            i2++;
        }
    }

    public static int w(List<Integer> list) {
        int iZ;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof tx3) {
            tx3 tx3Var = (tx3) list;
            iZ = 0;
            while (i < size) {
                iZ += zw3.Z(tx3Var.h(i));
                i++;
            }
        } else {
            iZ = 0;
            while (i < size) {
                iZ += zw3.Z(list.get(i).intValue());
                i++;
            }
        }
        return iZ;
    }

    public static void x(int i, List<Long> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.B(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = zw3.b;
            i3 += 8;
        }
        bx3Var.a.V(i3);
        while (i2 < list.size()) {
            bx3Var.a.E(list.get(i2).longValue());
            i2++;
        }
    }

    public static int y(List<Integer> list) {
        int iA0;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof tx3) {
            tx3 tx3Var = (tx3) list;
            iA0 = 0;
            while (i < size) {
                iA0 += zw3.a0(tx3Var.h(i));
                i++;
            }
        } else {
            iA0 = 0;
            while (i < size) {
                iA0 += zw3.a0(list.get(i).intValue());
                i++;
            }
        }
        return iA0;
    }

    public static void z(int i, List<Long> list, v04 v04Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        bx3 bx3Var = (bx3) v04Var;
        Objects.requireNonNull(bx3Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                bx3Var.a.B(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        bx3Var.a.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = zw3.b;
            i3 += 8;
        }
        bx3Var.a.V(i3);
        while (i2 < list.size()) {
            bx3Var.a.E(list.get(i2).longValue());
            i2++;
        }
    }
}
