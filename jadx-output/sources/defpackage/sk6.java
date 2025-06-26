package defpackage;

import defpackage.cj6;
import defpackage.jj6;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class sk6 {
    public static final Class<?> a;
    public static final yk6<?, ?> b;
    public static final yk6<?, ?> c;
    public static final yk6<?, ?> d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        b = z(false);
        c = z(true);
        d = new al6();
    }

    public static <T, FT extends cj6.a<FT>> void A(zi6<FT> zi6Var, T t, T t2) {
        cj6<T> cj6VarC = zi6Var.c(t2);
        if (cj6VarC.h()) {
            return;
        }
        cj6<T> cj6VarD = zi6Var.d(t);
        Objects.requireNonNull(cj6VarD);
        for (int i = 0; i < cj6VarC.a.d(); i++) {
            cj6VarD.m(cj6VarC.a.c(i));
        }
        Iterator<T> it = cj6VarC.a.e().iterator();
        while (it.hasNext()) {
            cj6VarD.m((Map.Entry) it.next());
        }
    }

    public static boolean B(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <UT, UB> UB C(int i, int i2, UB ub, yk6<UT, UB> yk6Var) {
        if (ub == null) {
            ub = yk6Var.m();
        }
        yk6Var.e(ub, i, i2);
        return ub;
    }

    public static void D(int i, List<Boolean> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.I(i, list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            Logger logger = ti6.b;
            i3++;
        }
        ui6Var.a.a0(i3);
        while (i2 < list.size()) {
            ui6Var.a.H(list.get(i2).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void E(int i, List<qi6> list, hl6 hl6Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ui6Var.a.K(i, list.get(i2));
        }
    }

    public static void F(int i, List<Double> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ti6 ti6Var = ui6Var.a;
                double dDoubleValue = list.get(i2).doubleValue();
                Objects.requireNonNull(ti6Var);
                ti6Var.O(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            Logger logger = ti6.b;
            i3 += 8;
        }
        ui6Var.a.a0(i3);
        while (i2 < list.size()) {
            ti6 ti6Var2 = ui6Var.a;
            double dDoubleValue2 = list.get(i2).doubleValue();
            Objects.requireNonNull(ti6Var2);
            ti6Var2.P(Double.doubleToRawLongBits(dDoubleValue2));
            i2++;
        }
    }

    public static void G(int i, List<Integer> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.Q(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int iM = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM += ti6.m(list.get(i3).intValue());
        }
        ui6Var.a.a0(iM);
        while (i2 < list.size()) {
            ui6Var.a.R(list.get(i2).intValue());
            i2++;
        }
    }

    public static void H(int i, List<Integer> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.M(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = ti6.b;
            i3 += 4;
        }
        ui6Var.a.a0(i3);
        while (i2 < list.size()) {
            ui6Var.a.N(list.get(i2).intValue());
            i2++;
        }
    }

    public static void I(int i, List<Long> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.O(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = ti6.b;
            i3 += 8;
        }
        ui6Var.a.a0(i3);
        while (i2 < list.size()) {
            ui6Var.a.P(list.get(i2).longValue());
            i2++;
        }
    }

    public static void J(int i, List<Float> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ti6 ti6Var = ui6Var.a;
                float fFloatValue = list.get(i2).floatValue();
                Objects.requireNonNull(ti6Var);
                ti6Var.M(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            Logger logger = ti6.b;
            i3 += 4;
        }
        ui6Var.a.a0(i3);
        while (i2 < list.size()) {
            ti6 ti6Var2 = ui6Var.a;
            float fFloatValue2 = list.get(i2).floatValue();
            Objects.requireNonNull(ti6Var2);
            ti6Var2.N(Float.floatToRawIntBits(fFloatValue2));
            i2++;
        }
    }

    public static void K(int i, List<?> list, hl6 hl6Var, qk6 qk6Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ui6Var.c(i, list.get(i2), qk6Var);
        }
    }

    public static void L(int i, List<Integer> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.Q(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int iM = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iM += ti6.m(list.get(i3).intValue());
        }
        ui6Var.a.a0(iM);
        while (i2 < list.size()) {
            ui6Var.a.R(list.get(i2).intValue());
            i2++;
        }
    }

    public static void M(int i, List<Long> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.b0(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int iC = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iC += ti6.C(list.get(i3).longValue());
        }
        ui6Var.a.a0(iC);
        while (i2 < list.size()) {
            ui6Var.a.c0(list.get(i2).longValue());
            i2++;
        }
    }

    public static void N(int i, List<?> list, hl6 hl6Var, qk6 qk6Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ui6Var.a.S(i, (ak6) list.get(i2), qk6Var);
        }
    }

    public static void O(int i, List<Integer> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.M(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            Logger logger = ti6.b;
            i3 += 4;
        }
        ui6Var.a.a0(i3);
        while (i2 < list.size()) {
            ui6Var.a.N(list.get(i2).intValue());
            i2++;
        }
    }

    public static void P(int i, List<Long> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.O(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            Logger logger = ti6.b;
            i3 += 8;
        }
        ui6Var.a.a0(i3);
        while (i2 < list.size()) {
            ui6Var.a.P(list.get(i2).longValue());
            i2++;
        }
    }

    public static void Q(int i, List<Integer> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.Z(i, ti6.D(list.get(i2).intValue()));
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int iT = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iT += ti6.t(list.get(i3).intValue());
        }
        ui6Var.a.a0(iT);
        while (i2 < list.size()) {
            ui6Var.a.a0(ti6.D(list.get(i2).intValue()));
            i2++;
        }
    }

    public static void R(int i, List<Long> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.b0(i, ti6.E(list.get(i2).longValue()));
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int iV = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iV += ti6.v(list.get(i3).longValue());
        }
        ui6Var.a.a0(iV);
        while (i2 < list.size()) {
            ui6Var.a.c0(ti6.E(list.get(i2).longValue()));
            i2++;
        }
    }

    public static void S(int i, List<String> list, hl6 hl6Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!(list instanceof pj6)) {
            while (i2 < list.size()) {
                ui6Var.a.W(i, list.get(i2));
                i2++;
            }
            return;
        }
        pj6 pj6Var = (pj6) list;
        while (i2 < list.size()) {
            Object objM = pj6Var.m(i2);
            if (objM instanceof String) {
                ui6Var.a.W(i, (String) objM);
            } else {
                ui6Var.a.K(i, (qi6) objM);
            }
            i2++;
        }
    }

    public static void T(int i, List<Integer> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.Z(i, list.get(i2).intValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int iA = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iA += ti6.A(list.get(i3).intValue());
        }
        ui6Var.a.a0(iA);
        while (i2 < list.size()) {
            ui6Var.a.a0(list.get(i2).intValue());
            i2++;
        }
    }

    public static void U(int i, List<Long> list, hl6 hl6Var, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        ui6 ui6Var = (ui6) hl6Var;
        Objects.requireNonNull(ui6Var);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ui6Var.a.b0(i, list.get(i2).longValue());
                i2++;
            }
            return;
        }
        ui6Var.a.Y(i, 2);
        int iC = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iC += ti6.C(list.get(i3).longValue());
        }
        ui6Var.a.a0(iC);
        while (i2 < list.size()) {
            ui6Var.a.c0(list.get(i2).longValue());
            i2++;
        }
    }

    public static int a(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return ti6.c(i, true) * size;
        }
        return ti6.p(size) + ti6.y(i);
    }

    public static int b(int i, List<qi6> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iY = ti6.y(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            iY += ti6.e(list.get(i2));
        }
        return iY;
    }

    public static int c(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD = d(list);
        if (!z) {
            return (ti6.y(i) * size) + iD;
        }
        return ti6.p(iD) + ti6.y(i);
    }

    public static int d(List<Integer> list) {
        int iM;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ij6) {
            ij6 ij6Var = (ij6) list;
            iM = 0;
            while (i < size) {
                iM += ti6.m(ij6Var.l(i));
                i++;
            }
        } else {
            iM = 0;
            while (i < size) {
                iM += ti6.m(list.get(i).intValue());
                i++;
            }
        }
        return iM;
    }

    public static int e(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return ti6.h(i, 0) * size;
        }
        return ti6.p(size * 4) + ti6.y(i);
    }

    public static int f(List<?> list) {
        return list.size() * 4;
    }

    public static int g(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return ti6.i(i, 0L) * size;
        }
        return ti6.p(size * 8) + ti6.y(i);
    }

    public static int h(List<?> list) {
        return list.size() * 8;
    }

    public static int i(int i, List<ak6> list, qk6 qk6Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iK = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iK += ti6.k(i, list.get(i2), qk6Var);
        }
        return iK;
    }

    public static int j(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iK = k(list);
        if (!z) {
            return (ti6.y(i) * size) + iK;
        }
        return ti6.p(iK) + ti6.y(i);
    }

    public static int k(List<Integer> list) {
        int iM;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ij6) {
            ij6 ij6Var = (ij6) list;
            iM = 0;
            while (i < size) {
                iM += ti6.m(ij6Var.l(i));
                i++;
            }
        } else {
            iM = 0;
            while (i < size) {
                iM += ti6.m(list.get(i).intValue());
                i++;
            }
        }
        return iM;
    }

    public static int l(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int iM = m(list);
        if (z) {
            return ti6.p(iM) + ti6.y(i);
        }
        return (ti6.y(i) * list.size()) + iM;
    }

    public static int m(List<Long> list) {
        int iC;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof rj6) {
            rj6 rj6Var = (rj6) list;
            iC = 0;
            while (i < size) {
                iC += ti6.C(rj6Var.l(i));
                i++;
            }
        } else {
            iC = 0;
            while (i < size) {
                iC += ti6.C(list.get(i).longValue());
                i++;
            }
        }
        return iC;
    }

    public static int n(int i, Object obj, qk6 qk6Var) {
        int iY;
        int iP;
        if (obj instanceof nj6) {
            iY = ti6.y(i);
            iP = ti6.o((nj6) obj);
        } else {
            iY = ti6.y(i);
            iP = ti6.p(((ii6) ((ak6) obj)).m(qk6Var));
        }
        return iP + iY;
    }

    public static int o(int i, List<?> list, qk6 qk6Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iY = ti6.y(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            iY = obj instanceof nj6 ? ti6.o((nj6) obj) + iY : iY + ti6.p(((ii6) ((ak6) obj)).m(qk6Var));
        }
        return iY;
    }

    public static int p(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iQ = q(list);
        if (!z) {
            return (ti6.y(i) * size) + iQ;
        }
        return ti6.p(iQ) + ti6.y(i);
    }

    public static int q(List<Integer> list) {
        int iT;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ij6) {
            ij6 ij6Var = (ij6) list;
            iT = 0;
            while (i < size) {
                iT += ti6.t(ij6Var.l(i));
                i++;
            }
        } else {
            iT = 0;
            while (i < size) {
                iT += ti6.t(list.get(i).intValue());
                i++;
            }
        }
        return iT;
    }

    public static int r(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iS = s(list);
        if (!z) {
            return (ti6.y(i) * size) + iS;
        }
        return ti6.p(iS) + ti6.y(i);
    }

    public static int s(List<Long> list) {
        int iV;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof rj6) {
            rj6 rj6Var = (rj6) list;
            iV = 0;
            while (i < size) {
                iV += ti6.v(rj6Var.l(i));
                i++;
            }
        } else {
            iV = 0;
            while (i < size) {
                iV += ti6.v(list.get(i).longValue());
                i++;
            }
        }
        return iV;
    }

    public static int t(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iY = ti6.y(i) * size;
        if (list instanceof pj6) {
            pj6 pj6Var = (pj6) list;
            while (i2 < size) {
                Object objM = pj6Var.m(i2);
                iY = (objM instanceof qi6 ? ti6.e((qi6) objM) : ti6.x((String) objM)) + iY;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iY = (obj instanceof qi6 ? ti6.e((qi6) obj) : ti6.x((String) obj)) + iY;
                i2++;
            }
        }
        return iY;
    }

    public static int u(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iV = v(list);
        if (!z) {
            return (ti6.y(i) * size) + iV;
        }
        return ti6.p(iV) + ti6.y(i);
    }

    public static int v(List<Integer> list) {
        int iA;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ij6) {
            ij6 ij6Var = (ij6) list;
            iA = 0;
            while (i < size) {
                iA += ti6.A(ij6Var.l(i));
                i++;
            }
        } else {
            iA = 0;
            while (i < size) {
                iA += ti6.A(list.get(i).intValue());
                i++;
            }
        }
        return iA;
    }

    public static int w(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iX = x(list);
        if (!z) {
            return (ti6.y(i) * size) + iX;
        }
        return ti6.p(iX) + ti6.y(i);
    }

    public static int x(List<Long> list) {
        int iC;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof rj6) {
            rj6 rj6Var = (rj6) list;
            iC = 0;
            while (i < size) {
                iC += ti6.C(rj6Var.l(i));
                i++;
            }
        } else {
            iC = 0;
            while (i < size) {
                iC += ti6.C(list.get(i).longValue());
                i++;
            }
        }
        return iC;
    }

    public static <UT, UB> UB y(int i, List<Integer> list, jj6.b bVar, UB ub, yk6<UT, UB> yk6Var) {
        if (bVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (bVar.a(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    if (ub == null) {
                        ub = yk6Var.m();
                    }
                    yk6Var.e(ub, i, iIntValue);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!bVar.a(iIntValue2)) {
                    if (ub == null) {
                        ub = yk6Var.m();
                    }
                    yk6Var.e(ub, i, iIntValue2);
                    it.remove();
                }
            }
        }
        return ub;
    }

    public static yk6<?, ?> z(boolean z) {
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
            return (yk6) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }
}
