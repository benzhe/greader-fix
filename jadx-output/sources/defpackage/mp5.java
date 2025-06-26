package defpackage;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.FirebaseFirestore;
import defpackage.bd6;
import defpackage.jc6;
import defpackage.jl6;
import defpackage.lx5;
import defpackage.mu5;
import defpackage.wc6;
import defpackage.wk6;
import defpackage.yo5;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class mp5 {
    public final wt5 a;

    public mp5(wt5 wt5Var) {
        this.a = wt5Var;
    }

    public final bd6 a(Object obj, hr5 hr5Var) {
        return c(lx5.b(obj, lx5.b.d), hr5Var);
    }

    public final List<bd6> b(List<Object> list) {
        new HashSet();
        new ArrayList();
        throw null;
    }

    public final bd6 c(Object obj, hr5 hr5Var) {
        hk6 hk6Var = hk6.NULL_VALUE;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (map.isEmpty()) {
                eu5 eu5Var = hr5Var.b;
                if (eu5Var != null && !eu5Var.C()) {
                    hr5Var.a(hr5Var.b);
                }
                bd6.b bVarZ = bd6.Z();
                bVarZ.v(wc6.D());
                return bVarZ.l();
            }
            wc6.b bVarI = wc6.I();
            for (Map.Entry entry : map.entrySet()) {
                if (!(entry.getKey() instanceof String)) {
                    throw hr5Var.c(String.format("Non-String Map key (%s) is not allowed", entry.getValue()));
                }
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                eu5 eu5Var2 = hr5Var.b;
                hr5 hr5Var2 = new hr5(hr5Var.a, eu5Var2 == null ? null : eu5Var2.k(str), false);
                hr5Var2.e(str);
                bd6 bd6VarC = c(value, hr5Var2);
                if (bd6VarC != null) {
                    bVarI.r(str, bd6VarC);
                }
            }
            bd6.b bVarZ2 = bd6.Z();
            bVarZ2.u(bVarI);
            return bVarZ2.l();
        }
        if (obj instanceof yo5) {
            yo5 yo5Var = (yo5) obj;
            if (!hr5Var.d()) {
                throw hr5Var.c(String.format("%s() can only be used with set() and update()", yo5Var.a()));
            }
            eu5 eu5Var3 = hr5Var.b;
            if (eu5Var3 == null) {
                throw hr5Var.c(String.format("%s() is not currently supported inside arrays", yo5Var.a()));
            }
            if (yo5Var instanceof yo5.c) {
                ir5 ir5Var = hr5Var.a.a;
                if (ir5Var != ir5.MergeSet) {
                    if (ir5Var != ir5.Update) {
                        throw hr5Var.c("FieldValue.delete() can only be used with update() and set() with SetOptions.merge()");
                    }
                    bx5.c(eu5Var3.I() > 0, "FieldValue.delete() at the top level should have already been handled.", new Object[0]);
                    throw hr5Var.c("FieldValue.delete() can only appear at the top level of your update data");
                }
                hr5Var.a(eu5Var3);
            } else if (yo5Var instanceof yo5.e) {
                hr5Var.b(eu5Var3, xu5.a);
            } else if (yo5Var instanceof yo5.b) {
                Objects.requireNonNull((yo5.b) yo5Var);
                hr5Var.b(hr5Var.b, new mu5.b(b(null)));
            } else if (yo5Var instanceof yo5.a) {
                Objects.requireNonNull((yo5.a) yo5Var);
                hr5Var.b(hr5Var.b, new mu5.a(b(null)));
            } else {
                if (!(yo5Var instanceof yo5.d)) {
                    Object[] objArr = new Object[1];
                    Comparator comparator = vx5.a;
                    objArr[0] = yo5Var == null ? "null" : yo5Var.getClass().getName();
                    bx5.a("Unknown FieldValue type: %s", objArr);
                    throw null;
                }
                Number number = ((yo5.d) yo5Var).b;
                gr5 gr5Var = new gr5(ir5.Argument);
                bd6 bd6VarA = a(number, gr5Var.a());
                bx5.c(bd6VarA != null, "Parsed data should not be null.", new Object[0]);
                bx5.c(gr5Var.c.isEmpty(), "Field transforms should have been disallowed.", new Object[0]);
                hr5Var.b(hr5Var.b, new uu5(bd6VarA));
            }
            return null;
        }
        eu5 eu5Var4 = hr5Var.b;
        if (eu5Var4 != null) {
            hr5Var.a(eu5Var4);
        }
        if (obj instanceof List) {
            if (hr5Var.c && hr5Var.a.a != ir5.ArrayArgument) {
                throw hr5Var.c("Nested arrays are not supported");
            }
            jc6.b bVarJ = jc6.J();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                bd6 bd6VarC2 = c(it.next(), new hr5(hr5Var.a, null, true));
                if (bd6VarC2 == null) {
                    bd6.b bVarZ3 = bd6.Z();
                    bVarZ3.o();
                    bd6.J((bd6) bVarZ3.f, hk6Var);
                    bd6VarC2 = bVarZ3.l();
                }
                bVarJ.o();
                jc6.C((jc6) bVarJ.f, bd6VarC2);
            }
            bd6.b bVarZ4 = bd6.Z();
            bVarZ4.r(bVarJ);
            return bVarZ4.l();
        }
        if (obj == null) {
            bd6.b bVarZ5 = bd6.Z();
            bVarZ5.o();
            bd6.J((bd6) bVarZ5.f, hk6Var);
            return bVarZ5.l();
        }
        if (obj instanceof Integer) {
            bd6.b bVarZ6 = bd6.Z();
            bVarZ6.t(((Integer) obj).intValue());
            return bVarZ6.l();
        }
        if (obj instanceof Long) {
            bd6.b bVarZ7 = bd6.Z();
            bVarZ7.t(((Long) obj).longValue());
            return bVarZ7.l();
        }
        if (obj instanceof Float) {
            bd6.b bVarZ8 = bd6.Z();
            bVarZ8.s(((Float) obj).doubleValue());
            return bVarZ8.l();
        }
        if (obj instanceof Double) {
            bd6.b bVarZ9 = bd6.Z();
            bVarZ9.s(((Double) obj).doubleValue());
            return bVarZ9.l();
        }
        if (obj instanceof Boolean) {
            bd6.b bVarZ10 = bd6.Z();
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            bVarZ10.o();
            bd6.K((bd6) bVarZ10.f, zBooleanValue);
            return bVarZ10.l();
        }
        if (obj instanceof String) {
            bd6.b bVarZ11 = bd6.Z();
            bVarZ11.o();
            bd6.D((bd6) bVarZ11.f, (String) obj);
            return bVarZ11.l();
        }
        if (obj instanceof Date) {
            return d(new Timestamp((Date) obj));
        }
        if (obj instanceof Timestamp) {
            return d((Timestamp) obj);
        }
        if (obj instanceof dp5) {
            dp5 dp5Var = (dp5) obj;
            bd6.b bVarZ12 = bd6.Z();
            jl6.b bVarH = jl6.H();
            double d = dp5Var.e;
            bVarH.o();
            jl6.C((jl6) bVarH.f, d);
            double d2 = dp5Var.f;
            bVarH.o();
            jl6.D((jl6) bVarH.f, d2);
            bVarZ12.o();
            bd6.G((bd6) bVarZ12.f, bVarH.l());
            return bVarZ12.l();
        }
        if (obj instanceof oo5) {
            bd6.b bVarZ13 = bd6.Z();
            qi6 qi6Var = ((oo5) obj).e;
            bVarZ13.o();
            bd6.E((bd6) bVarZ13.f, qi6Var);
            return bVarZ13.l();
        }
        if (!(obj instanceof to5)) {
            if (obj.getClass().isArray()) {
                throw hr5Var.c("Arrays are not supported; use a List instead");
            }
            StringBuilder sbZ = jo.z("Unsupported type: ");
            Comparator comparator2 = vx5.a;
            sbZ.append(obj.getClass().getName());
            throw hr5Var.c(sbZ.toString());
        }
        to5 to5Var = (to5) obj;
        FirebaseFirestore firebaseFirestore = to5Var.b;
        if (firebaseFirestore != null) {
            wt5 wt5Var = firebaseFirestore.b;
            if (!wt5Var.equals(this.a)) {
                wt5 wt5Var2 = this.a;
                throw hr5Var.c(String.format("Document reference is for database %s/%s but should be for database %s/%s", wt5Var.e, wt5Var.f, wt5Var2.e, wt5Var2.f));
            }
        }
        bd6.b bVarZ14 = bd6.Z();
        wt5 wt5Var3 = this.a;
        String str2 = String.format("projects/%s/databases/%s/documents/%s", wt5Var3.e, wt5Var3.f, to5Var.a.e.l());
        bVarZ14.o();
        bd6.F((bd6) bVarZ14.f, str2);
        return bVarZ14.l();
    }

    public final bd6 d(Timestamp timestamp) {
        int i = (timestamp.f / 1000) * 1000;
        bd6.b bVarZ = bd6.Z();
        wk6.b bVarH = wk6.H();
        bVarH.s(timestamp.e);
        bVarH.r(i);
        bVarZ.o();
        bd6.C((bd6) bVarZ.f, bVarH.l());
        return bVarZ.l();
    }
}
