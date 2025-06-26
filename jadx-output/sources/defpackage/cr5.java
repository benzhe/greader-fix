package defpackage;

import defpackage.dq5;
import defpackage.kr5;
import defpackage.ln5;
import defpackage.qx5;
import defpackage.sw5;
import defpackage.x47;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;

/* loaded from: classes.dex */
public class cr5 implements sw5.c {
    public static final String o = "cr5";
    public final fs5 a;
    public final sw5 b;
    public final int e;
    public tp5 m;
    public b n;
    public final Map<yq5, ar5> c = new HashMap();
    public final Map<Integer, List<yq5>> d = new HashMap();
    public final Queue<bu5> f = new ArrayDeque();
    public final Map<bu5, Integer> g = new HashMap();
    public final Map<Integer, a> h = new HashMap();
    public final ys5 i = new ys5();
    public final Map<tp5, Map<Integer, f45<Void>>> j = new HashMap();
    public final er5 l = new er5(1, 1);
    public final Map<Integer, List<f45<Void>>> k = new HashMap();

    public static class a {
        public final bu5 a;
        public boolean b;

        public a(bu5 bu5Var) {
            this.a = bu5Var;
        }
    }

    public interface b {
    }

    public cr5(fs5 fs5Var, sw5 sw5Var, tp5 tp5Var, int i) {
        this.a = fs5Var;
        this.b = sw5Var;
        this.e = i;
        this.m = tp5Var;
    }

    @Override // sw5.c
    public void a(int i, x47 x47Var) {
        g("handleRejectedListen");
        a aVar = this.h.get(Integer.valueOf(i));
        bu5 bu5Var = aVar != null ? aVar.a : null;
        if (bu5Var == null) {
            fs5 fs5Var = this.a;
            fs5Var.a.h("Release target", new es5(fs5Var, i));
            l(i, x47Var);
        } else {
            this.g.remove(bu5Var);
            this.h.remove(Integer.valueOf(i));
            k();
            ju5 ju5Var = ju5.f;
            c(new nw5(ju5Var, Collections.emptyMap(), Collections.emptySet(), Collections.singletonMap(bu5Var, new gu5(bu5Var, ju5Var, false)), Collections.singleton(bu5Var)));
        }
    }

    @Override // sw5.c
    public void b(final int i, x47 x47Var) {
        g("handleRejectedWrite");
        final fs5 fs5Var = this.a;
        jn5<bu5, fu5> jn5Var = (jn5) fs5Var.a.g("Reject batch", new rx5(fs5Var, i) { // from class: zr5
            public final fs5 a;
            public final int b;

            {
                this.a = fs5Var;
                this.b = i;
            }

            @Override // defpackage.rx5
            public Object get() {
                fs5 fs5Var2 = this.a;
                ru5 ru5VarG = fs5Var2.b.g(this.b);
                bx5.c(ru5VarG != null, "Attempt to reject nonexistent batch!", new Object[0]);
                fs5Var2.b.h(ru5VarG);
                fs5Var2.b.a();
                tr5 tr5Var = fs5Var2.d;
                return tr5Var.e(tr5Var.a.c(ru5VarG.b()));
            }
        });
        if (!jn5Var.isEmpty()) {
            i(x47Var, "Write failed at %s", jn5Var.n().e);
        }
        j(i, x47Var);
        n(i);
        h(jn5Var, null);
    }

    @Override // sw5.c
    public void c(final nw5 nw5Var) {
        g("handleRemoteEvent");
        for (Map.Entry<Integer, vw5> entry : nw5Var.b.entrySet()) {
            Integer key = entry.getKey();
            vw5 value = entry.getValue();
            a aVar = this.h.get(key);
            if (aVar != null) {
                bx5.c(value.e.size() + (value.d.size() + value.c.size()) <= 1, "Limbo resolution for single document contains multiple changes.", new Object[0]);
                if (value.c.size() > 0) {
                    aVar.b = true;
                } else if (value.d.size() > 0) {
                    bx5.c(aVar.b, "Received change for limbo target document without add.", new Object[0]);
                } else if (value.e.size() > 0) {
                    bx5.c(aVar.b, "Received remove for limbo target document without add.", new Object[0]);
                    aVar.b = false;
                }
            }
        }
        final fs5 fs5Var = this.a;
        Objects.requireNonNull(fs5Var);
        final ju5 ju5Var = nw5Var.a;
        h((jn5) fs5Var.a.g("Apply remote event", new rx5(fs5Var, nw5Var, ju5Var) { // from class: bs5
            public final fs5 a;
            public final nw5 b;
            public final ju5 c;

            {
                this.a = fs5Var;
                this.b = nw5Var;
                this.c = ju5Var;
            }

            @Override // defpackage.rx5
            public Object get() {
                fs5 fs5Var2 = this.a;
                nw5 nw5Var2 = this.b;
                ju5 ju5Var2 = this.c;
                int i = fs5.l;
                Map<Integer, vw5> map = nw5Var2.b;
                long jE = fs5Var2.a.c().e();
                Iterator<Map.Entry<Integer, vw5>> it = map.entrySet().iterator();
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<Integer, vw5> next = it.next();
                    int iIntValue = next.getKey().intValue();
                    vw5 value2 = next.getValue();
                    ut5 ut5Var = fs5Var2.h.get(iIntValue);
                    if (ut5Var != null) {
                        fs5Var2.g.i(value2.e, iIntValue);
                        fs5Var2.g.f(value2.c, iIntValue);
                        qi6 qi6Var = value2.a;
                        if (!qi6Var.isEmpty()) {
                            ut5 ut5VarB = ut5Var.a(qi6Var, nw5Var2.a).b(jE);
                            fs5Var2.h.put(iIntValue, ut5VarB);
                            bx5.c(!ut5VarB.g.isEmpty(), "Attempted to persist query data with empty resume token", new Object[0]);
                            if (!ut5Var.g.isEmpty() && ut5VarB.e.e.e - ut5Var.e.e.e < fs5.k && value2.e.size() + value2.d.size() + value2.c.size() <= 0) {
                                z = false;
                            }
                            if (z) {
                                fs5Var2.g.g(ut5VarB);
                            }
                        }
                    }
                }
                HashMap map2 = new HashMap();
                Map<bu5, fu5> map3 = nw5Var2.d;
                Set<bu5> set = nw5Var2.e;
                Map<bu5, fu5> mapC = fs5Var2.c.c(map3.keySet());
                for (Map.Entry<bu5, fu5> entry2 : map3.entrySet()) {
                    bu5 key2 = entry2.getKey();
                    fu5 value3 = entry2.getValue();
                    fu5 fu5Var = mapC.get(key2);
                    if ((value3 instanceof gu5) && value3.b.equals(ju5.f)) {
                        fs5Var2.c.b(value3.a);
                        map2.put(key2, value3);
                    } else if (fu5Var == null || value3.b.compareTo(fu5Var.b) > 0 || (value3.b.compareTo(fu5Var.b) == 0 && fu5Var.a())) {
                        bx5.c(!ju5.f.equals(nw5Var2.a), "Cannot add a document when the remote version is zero", new Object[0]);
                        fs5Var2.c.e(value3, nw5Var2.a);
                        map2.put(key2, value3);
                    } else {
                        qx5.a(qx5.a.DEBUG, "LocalStore", "Ignoring outdated watch update for %s.Current version: %s  Watch version: %s", key2, fu5Var.b, value3.b);
                    }
                    if (set.contains(key2)) {
                        fs5Var2.a.c().a(key2);
                    }
                }
                ju5 ju5VarE = fs5Var2.g.e();
                if (!ju5Var2.equals(ju5.f)) {
                    bx5.c(ju5Var2.compareTo(ju5VarE) >= 0, "Watch stream reverted to previous snapshot?? (%s < %s)", ju5Var2, ju5VarE);
                    fs5Var2.g.h(ju5Var2);
                }
                return fs5Var2.d.e(map2);
            }
        }), nw5Var);
    }

    @Override // sw5.c
    public ln5<bu5> d(int i) {
        a aVar = this.h.get(Integer.valueOf(i));
        if (aVar != null && aVar.b) {
            return bu5.f.d(aVar.a);
        }
        ln5 ln5Var = bu5.f;
        if (this.d.containsKey(Integer.valueOf(i))) {
            for (yq5 yq5Var : this.d.get(Integer.valueOf(i))) {
                if (this.c.containsKey(yq5Var)) {
                    ln5 ln5Var2 = this.c.get(yq5Var).c.e;
                    int size = ln5Var.size();
                    int size2 = ln5Var2.size();
                    ln5 ln5Var3 = ln5Var2;
                    if (size >= size2) {
                        ln5Var3 = ln5Var;
                        ln5Var = ln5Var2;
                    }
                    Iterator<bu5> it = ln5Var.iterator();
                    ln5 ln5VarD = ln5Var3;
                    while (true) {
                        ln5.a aVar2 = (ln5.a) it;
                        if (!aVar2.hasNext()) {
                            break;
                        }
                        ln5VarD = ln5VarD.d(aVar2.next());
                    }
                    ln5Var = ln5VarD;
                }
            }
        }
        return ln5Var;
    }

    @Override // sw5.c
    public void e(wq5 wq5Var) {
        boolean z;
        lr5 lr5Var;
        g("handleOnlineStateChange");
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<yq5, ar5>> it = this.c.entrySet().iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            kr5 kr5Var = it.next().getValue().c;
            if (kr5Var.c && wq5Var == wq5.OFFLINE) {
                kr5Var.c = false;
                lr5Var = kr5Var.a(new kr5.b(kr5Var.d, new cq5(), kr5Var.g, false, null), null);
            } else {
                lr5Var = new lr5(null, Collections.emptyList());
            }
            bx5.c(lr5Var.b.isEmpty(), "OnlineState should not affect limbo documents.", new Object[0]);
            mr5 mr5Var = lr5Var.a;
            if (mr5Var != null) {
                arrayList.add(mr5Var);
            }
        }
        ((dq5) this.n).a(arrayList);
        dq5 dq5Var = (dq5) this.n;
        dq5Var.d = wq5Var;
        Iterator<dq5.b> it2 = dq5Var.b.values().iterator();
        while (it2.hasNext()) {
            Iterator<zq5> it3 = it2.next().a.iterator();
            while (it3.hasNext()) {
                if (it3.next().a(wq5Var)) {
                    z = true;
                }
            }
        }
        if (z) {
            dq5Var.b();
        }
    }

    @Override // sw5.c
    public void f(final su5 su5Var) {
        g("handleSuccessfulWrite");
        j(su5Var.a.a, null);
        n(su5Var.a.a);
        final fs5 fs5Var = this.a;
        h((jn5) fs5Var.a.g("Acknowledge batch", new rx5(fs5Var, su5Var) { // from class: yr5
            public final fs5 a;
            public final su5 b;

            {
                this.a = fs5Var;
                this.b = su5Var;
            }

            @Override // defpackage.rx5
            public Object get() {
                fs5 fs5Var2 = this.a;
                su5 su5Var2 = this.b;
                int i = fs5.l;
                ru5 ru5Var = su5Var2.a;
                fs5Var2.b.k(ru5Var, su5Var2.d);
                ru5 ru5Var2 = su5Var2.a;
                Iterator it = ((HashSet) ru5Var2.b()).iterator();
                while (it.hasNext()) {
                    bu5 bu5Var = (bu5) it.next();
                    fu5 fu5VarA = fs5Var2.c.a(bu5Var);
                    ju5 ju5VarH = su5Var2.e.h(bu5Var);
                    bx5.c(ju5VarH != null, "docVersions should contain every doc in the write.", new Object[0]);
                    if (fu5VarA == null || fu5VarA.b.compareTo(ju5VarH) < 0) {
                        if (fu5VarA != null) {
                            bx5.c(fu5VarA.a.equals(bu5Var), "applyToRemoteDocument: key %s doesn't match maybeDoc key %s", bu5Var, fu5VarA.a);
                        }
                        int size = ru5Var2.d.size();
                        List<tu5> list = su5Var2.c;
                        bx5.c(list.size() == size, "Mismatch between mutations length (%d) and results length (%d)", Integer.valueOf(size), Integer.valueOf(list.size()));
                        fu5 fu5VarB = fu5VarA;
                        for (int i2 = 0; i2 < size; i2++) {
                            qu5 qu5Var = ru5Var2.d.get(i2);
                            if (qu5Var.a.equals(bu5Var)) {
                                fu5VarB = qu5Var.b(fu5VarB, list.get(i2));
                            }
                        }
                        if (fu5VarB == null) {
                            bx5.c(fu5VarA == null, "Mutation batch %s applied to document %s resulted in null.", ru5Var2, fu5VarA);
                        } else {
                            fs5Var2.c.e(fu5VarB, su5Var2.b);
                        }
                    }
                }
                fs5Var2.b.h(ru5Var2);
                fs5Var2.b.a();
                tr5 tr5Var = fs5Var2.d;
                return tr5Var.e(tr5Var.a.c(ru5Var.b()));
            }
        }), null);
    }

    public final void g(String str) {
        bx5.c(this.n != null, "Trying to call %s before setting callback", str);
    }

    public final void h(jn5<bu5, fu5> jn5Var, nw5 nw5Var) {
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        Iterator<Map.Entry<yq5, ar5>> it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            ar5 value = it.next().getValue();
            kr5 kr5Var = value.c;
            kr5.b bVarC = kr5Var.c(jn5Var, null);
            if (bVarC.c) {
                bVarC = kr5Var.c(this.a.a(value.a, false).a, bVarC);
            }
            lr5 lr5VarA = value.c.a(bVarC, nw5Var != null ? nw5Var.b.get(Integer.valueOf(value.b)) : null);
            o(lr5VarA.b, value.b);
            mr5 mr5Var = lr5VarA.a;
            if (mr5Var != null) {
                arrayList.add(mr5Var);
                int i = value.b;
                mr5 mr5Var2 = lr5VarA.a;
                ArrayList arrayList3 = new ArrayList();
                ln5<bu5> ln5Var = bu5.f;
                au5 au5Var = au5.e;
                ln5 ln5Var2 = new ln5(arrayList3, au5Var);
                ln5 ln5Var3 = new ln5(new ArrayList(), au5Var);
                for (bq5 bq5Var : mr5Var2.d) {
                    int iOrdinal = bq5Var.a.ordinal();
                    if (iOrdinal == 0) {
                        ln5Var3 = ln5Var3.d(bq5Var.b.a);
                    } else if (iOrdinal == 1) {
                        ln5Var2 = ln5Var2.d(bq5Var.b.a);
                    }
                }
                arrayList2.add(new gs5(i, mr5Var2.e, ln5Var2, ln5Var3));
            }
        }
        ((dq5) this.n).a(arrayList);
        final fs5 fs5Var = this.a;
        fs5Var.a.h("notifyLocalViewChanges", new Runnable(fs5Var, arrayList2) { // from class: cs5
            public final fs5 e;
            public final List f;

            {
                this.e = fs5Var;
                this.f = arrayList2;
            }

            @Override // java.lang.Runnable
            public void run() {
                fs5 fs5Var2 = this.e;
                List<gs5> list = this.f;
                int i2 = fs5.l;
                for (gs5 gs5Var : list) {
                    int i3 = gs5Var.a;
                    fs5Var2.f.b(gs5Var.c, i3);
                    ln5<bu5> ln5Var4 = gs5Var.d;
                    Iterator<bu5> it2 = ln5Var4.iterator();
                    while (true) {
                        ln5.a aVar = (ln5.a) it2;
                        if (!aVar.hasNext()) {
                            break;
                        } else {
                            fs5Var2.a.c().i((bu5) aVar.next());
                        }
                    }
                    fs5Var2.f.f(ln5Var4, i3);
                    if (!gs5Var.b) {
                        ut5 ut5Var = fs5Var2.h.get(i3);
                        bx5.c(ut5Var != null, "Can't set limbo-free snapshot version for unknown target: %s", Integer.valueOf(i3));
                        ju5 ju5Var = ut5Var.e;
                        fs5Var2.h.put(i3, new ut5(ut5Var.a, ut5Var.b, ut5Var.c, ut5Var.d, ju5Var, ju5Var, ut5Var.g));
                    }
                }
            }
        });
    }

    public final void i(x47 x47Var, String str, Object... objArr) {
        x47.b bVar = x47Var.a;
        String str2 = x47Var.b;
        if (str2 == null) {
            str2 = "";
        }
        if ((bVar == x47.b.FAILED_PRECONDITION && str2.contains("requires an index")) || bVar == x47.b.PERMISSION_DENIED) {
            qx5.a(qx5.a.WARN, "Firestore", "%s: %s", String.format(str, objArr), x47Var);
        }
    }

    public final void j(int i, x47 x47Var) {
        Integer numValueOf;
        f45<Void> f45Var;
        Map<Integer, f45<Void>> map = this.j.get(this.m);
        if (map == null || (f45Var = map.get((numValueOf = Integer.valueOf(i)))) == null) {
            return;
        }
        if (x47Var != null) {
            f45Var.a.r(vx5.d(x47Var));
        } else {
            f45Var.a.s(null);
        }
        map.remove(numValueOf);
    }

    public final void k() {
        while (!this.f.isEmpty() && this.g.size() < this.e) {
            bu5 bu5VarRemove = this.f.remove();
            int iA = this.l.a();
            this.h.put(Integer.valueOf(iA), new a(bu5VarRemove));
            this.g.put(bu5VarRemove, Integer.valueOf(iA));
            this.b.d(new ut5(yq5.a(bu5VarRemove.e).i(), iA, -1L, vs5.LIMBO_RESOLUTION));
        }
    }

    public final void l(int i, x47 x47Var) {
        for (yq5 yq5Var : this.d.get(Integer.valueOf(i))) {
            this.c.remove(yq5Var);
            if (!x47Var.f()) {
                dq5 dq5Var = (dq5) this.n;
                dq5.b bVar = dq5Var.b.get(yq5Var);
                if (bVar != null) {
                    Iterator<zq5> it = bVar.a.iterator();
                    while (it.hasNext()) {
                        it.next().c.a(null, vx5.d(x47Var));
                    }
                }
                dq5Var.b.remove(yq5Var);
                i(x47Var, "Listen for %s failed", yq5Var);
            }
        }
        this.d.remove(Integer.valueOf(i));
        ln5<bu5> ln5VarD = this.i.d(i);
        this.i.g(i);
        Iterator<bu5> it2 = ln5VarD.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it2;
            if (!aVar.hasNext()) {
                return;
            }
            bu5 bu5Var = (bu5) aVar.next();
            if (!this.i.c(bu5Var)) {
                m(bu5Var);
            }
        }
    }

    public final void m(bu5 bu5Var) {
        Integer num = this.g.get(bu5Var);
        if (num != null) {
            this.b.k(num.intValue());
            this.g.remove(bu5Var);
            this.h.remove(num);
            k();
        }
    }

    public final void n(int i) {
        if (this.k.containsKey(Integer.valueOf(i))) {
            Iterator<f45<Void>> it = this.k.get(Integer.valueOf(i)).iterator();
            while (it.hasNext()) {
                it.next().a.s(null);
            }
            this.k.remove(Integer.valueOf(i));
        }
    }

    public final void o(List<rq5> list, int i) {
        qx5.a aVar = qx5.a.DEBUG;
        for (rq5 rq5Var : list) {
            int iOrdinal = rq5Var.a.ordinal();
            if (iOrdinal == 0) {
                this.i.a(rq5Var.b, i);
                bu5 bu5Var = rq5Var.b;
                if (!this.g.containsKey(bu5Var)) {
                    qx5.a(aVar, o, "New document in limbo: %s", bu5Var);
                    this.f.add(bu5Var);
                    k();
                }
            } else {
                if (iOrdinal != 1) {
                    bx5.a("Unknown limbo change type: %s", rq5Var.a);
                    throw null;
                }
                qx5.a(aVar, o, "Document no longer in limbo: %s", rq5Var.b);
                bu5 bu5Var2 = rq5Var.b;
                this.i.e(bu5Var2, i);
                if (!this.i.c(bu5Var2)) {
                    m(bu5Var2);
                }
            }
        }
    }
}
