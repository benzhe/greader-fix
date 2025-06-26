package defpackage;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class tr5 {
    public final zs5 a;
    public final ss5 b;
    public final sr5 c;

    public tr5(zs5 zs5Var, ss5 ss5Var, sr5 sr5Var) {
        this.a = zs5Var;
        this.b = ss5Var;
        this.c = sr5Var;
    }

    public fu5 a(bu5 bu5Var) {
        List<ru5> listD = this.b.d(bu5Var);
        fu5 fu5VarA = this.a.a(bu5Var);
        Iterator<ru5> it = listD.iterator();
        while (it.hasNext()) {
            fu5VarA = it.next().a(bu5Var, fu5VarA);
        }
        return fu5VarA;
    }

    public jn5<bu5, fu5> b(Iterable<bu5> iterable) {
        return e(this.a.c(iterable));
    }

    public final jn5<bu5, yt5> c(yq5 yq5Var, ju5 ju5Var) {
        jn5<bu5, yt5> jn5VarD = this.a.d(yq5Var, ju5Var);
        List<ru5> listI = this.b.i(yq5Var);
        HashSet hashSet = new HashSet();
        Iterator<ru5> it = listI.iterator();
        while (it.hasNext()) {
            for (qu5 qu5Var : it.next().d) {
                if ((qu5Var instanceof vu5) && !jn5VarD.d(qu5Var.a)) {
                    hashSet.add(qu5Var.a);
                }
            }
        }
        for (Map.Entry<bu5, fu5> entry : this.a.c(hashSet).entrySet()) {
            if (entry.getValue() != null && (entry.getValue() instanceof yt5)) {
                jn5VarD = jn5VarD.o(entry.getKey(), (yt5) entry.getValue());
            }
        }
        for (ru5 ru5Var : listI) {
            for (qu5 qu5Var2 : ru5Var.d) {
                iu5 iu5Var = yq5Var.e;
                iu5 iu5Var2 = qu5Var2.a.e;
                boolean z = true;
                if (iu5Var.I() + 1 != iu5Var2.I()) {
                    z = false;
                    break;
                }
                for (int i = 0; i < iu5Var.I(); i++) {
                    if (!iu5Var.y(i).equals(iu5Var2.y(i))) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    bu5 bu5Var = qu5Var2.a;
                    yt5 yt5VarH = jn5VarD.h(bu5Var);
                    fu5 fu5VarA = qu5Var2.a(yt5VarH, yt5VarH, ru5Var.b);
                    jn5VarD = fu5VarA instanceof yt5 ? jn5VarD.o(bu5Var, (yt5) fu5VarA) : jn5VarD.r(bu5Var);
                }
            }
        }
        Iterator<Map.Entry<bu5, yt5>> it2 = jn5VarD.iterator();
        while (it2.hasNext()) {
            Map.Entry<bu5, yt5> next = it2.next();
            if (!yq5Var.h(next.getValue())) {
                jn5VarD = jn5VarD.r(next.getKey());
            }
        }
        return jn5VarD;
    }

    public jn5<bu5, yt5> d(yq5 yq5Var, ju5 ju5Var) {
        iu5 iu5Var = yq5Var.e;
        if (bu5.l(iu5Var) && yq5Var.f == null && yq5Var.d.isEmpty()) {
            jn5 jn5Var = zt5.a;
            fu5 fu5VarA = a(new bu5(iu5Var));
            return fu5VarA instanceof yt5 ? jn5Var.o(fu5VarA.a, (yt5) fu5VarA) : jn5Var;
        }
        if (!yq5Var.g()) {
            return c(yq5Var, ju5Var);
        }
        bx5.c(yq5Var.e.C(), "Currently we only support collection group queries at the root.", new Object[0]);
        String str = yq5Var.f;
        jn5 jn5VarO = zt5.a;
        Iterator<iu5> it = this.c.a(str).iterator();
        while (it.hasNext()) {
            Iterator<Map.Entry<bu5, yt5>> it2 = c(new yq5(it.next().k(str), null, yq5Var.d, yq5Var.a, yq5Var.g, yq5Var.h, yq5Var.i, yq5Var.j), ju5Var).iterator();
            jn5VarO = jn5VarO;
            while (it2.hasNext()) {
                Map.Entry<bu5, yt5> next = it2.next();
                jn5VarO = jn5VarO.o(next.getKey(), next.getValue());
            }
        }
        return jn5VarO;
    }

    public jn5<bu5, fu5> e(Map<bu5, fu5> map) {
        jn5<bu5, ?> jn5Var = zt5.a;
        List<ru5> listB = this.b.b(map.keySet());
        for (Map.Entry<bu5, fu5> entry : map.entrySet()) {
            fu5 value = entry.getValue();
            Iterator<ru5> it = listB.iterator();
            while (it.hasNext()) {
                value = it.next().a(entry.getKey(), value);
            }
            entry.setValue(value);
        }
        jn5 jn5VarO = jn5Var;
        for (Map.Entry<bu5, fu5> entry2 : map.entrySet()) {
            bu5 key = entry2.getKey();
            Object gu5Var = (fu5) entry2.getValue();
            if (gu5Var == null) {
                gu5Var = new gu5(key, ju5.f, false);
            }
            jn5VarO = jn5VarO.o(key, gu5Var);
        }
        return jn5VarO;
    }
}
