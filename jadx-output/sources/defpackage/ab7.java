package defpackage;

import defpackage.c47;
import defpackage.v27;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class ab7 extends c47 {
    public static final v27.c<d<j37>> g = new v27.c<>("state-info");
    public static final x47 h = x47.f.h("no subchannels ready");
    public final c47.d b;
    public final Random d;
    public i37 e;
    public final Map<q37, c47.h> c = new HashMap();
    public e f = new b(h);

    public class a implements c47.j {
        public final /* synthetic */ c47.h a;

        public a(c47.h hVar) {
            this.a = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // c47.j
        public void a(j37 j37Var) {
            ab7 ab7Var = ab7.this;
            c47.h hVar = this.a;
            Map<q37, c47.h> map = ab7Var.c;
            List<q37> listA = hVar.a();
            c50.F(listA.size() == 1, "%s does not have exactly one group", listA);
            if (map.get(new q37(listA.get(0).a, v27.b)) != hVar) {
                return;
            }
            if (j37Var.a == i37.IDLE) {
                hVar.d();
            }
            ab7.e(hVar).a = j37Var;
            ab7Var.g();
        }
    }

    public static final class b extends e {
        public final x47 a;

        public b(x47 x47Var) {
            super(null);
            c50.A(x47Var, "status");
            this.a = x47Var;
        }

        @Override // c47.i
        public c47.e a(c47.f fVar) {
            return this.a.f() ? c47.e.e : c47.e.a(this.a);
        }

        @Override // ab7.e
        public boolean b(e eVar) {
            if (eVar instanceof b) {
                b bVar = (b) eVar;
                if (c50.T(this.a, bVar.a) || (this.a.f() && bVar.a.f())) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            nd5 nd5Var = new nd5(b.class.getSimpleName(), null);
            nd5Var.d("status", this.a);
            return nd5Var.toString();
        }
    }

    public static final class c extends e {
        public static final AtomicIntegerFieldUpdater<c> c = AtomicIntegerFieldUpdater.newUpdater(c.class, "b");
        public final List<c47.h> a;
        private volatile int b;

        public c(List<c47.h> list, int i) {
            super(null);
            c50.t(!list.isEmpty(), "empty list");
            this.a = list;
            this.b = i - 1;
        }

        @Override // c47.i
        public c47.e a(c47.f fVar) {
            int size = this.a.size();
            AtomicIntegerFieldUpdater<c> atomicIntegerFieldUpdater = c;
            int iIncrementAndGet = atomicIntegerFieldUpdater.incrementAndGet(this);
            if (iIncrementAndGet >= size) {
                int i = iIncrementAndGet % size;
                atomicIntegerFieldUpdater.compareAndSet(this, iIncrementAndGet, i);
                iIncrementAndGet = i;
            }
            return c47.e.b(this.a.get(iIncrementAndGet));
        }

        @Override // ab7.e
        public boolean b(e eVar) {
            if (!(eVar instanceof c)) {
                return false;
            }
            c cVar = (c) eVar;
            return cVar == this || (this.a.size() == cVar.a.size() && new HashSet(this.a).containsAll(cVar.a));
        }

        public String toString() {
            nd5 nd5Var = new nd5(c.class.getSimpleName(), null);
            nd5Var.d("list", this.a);
            return nd5Var.toString();
        }
    }

    public static final class d<T> {
        public T a;

        public d(T t) {
            this.a = t;
        }
    }

    public static abstract class e extends c47.i {
        public e(a aVar) {
        }

        public abstract boolean b(e eVar);
    }

    public ab7(c47.d dVar) {
        c50.A(dVar, "helper");
        this.b = dVar;
        this.d = new Random();
    }

    public static d<j37> e(c47.h hVar) {
        v27 v27VarB = hVar.b();
        Object obj = v27VarB.a.get(g);
        c50.A(obj, "STATE_INFO");
        return (d) obj;
    }

    @Override // defpackage.c47
    public void a(x47 x47Var) {
        i37 i37Var = i37.TRANSIENT_FAILURE;
        e bVar = this.f;
        if (!(bVar instanceof c)) {
            bVar = new b(x47Var);
        }
        h(i37Var, bVar);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, j37] */
    @Override // defpackage.c47
    public void b(c47.g gVar) {
        List<q37> list = gVar.a;
        Set<q37> setKeySet = this.c.keySet();
        HashMap map = new HashMap(list.size() * 2);
        for (q37 q37Var : list) {
            map.put(new q37(q37Var.a, v27.b), q37Var);
        }
        Set setKeySet2 = map.keySet();
        HashSet hashSet = new HashSet(setKeySet);
        hashSet.removeAll(setKeySet2);
        for (Map.Entry entry : map.entrySet()) {
            q37 q37Var2 = (q37) entry.getKey();
            q37 q37Var3 = (q37) entry.getValue();
            c47.h hVar = this.c.get(q37Var2);
            if (hVar != null) {
                hVar.g(Collections.singletonList(q37Var3));
            } else {
                v27.b bVarA = v27.a();
                bVarA.b(g, new d(j37.a(i37.IDLE)));
                c47.d dVar = this.b;
                c47.b.a aVar = new c47.b.a();
                aVar.a = Collections.singletonList(q37Var3);
                v27 v27VarA = bVarA.a();
                c50.A(v27VarA, "attrs");
                aVar.b = v27VarA;
                c47.h hVarA = dVar.a(new c47.b(aVar.a, v27VarA, aVar.c, null));
                c50.A(hVarA, "subchannel");
                hVarA.f(new a(hVarA));
                this.c.put(q37Var2, hVarA);
                hVarA.d();
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(this.c.remove((q37) it.next()));
        }
        g();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            c47.h hVar2 = (c47.h) it2.next();
            hVar2.e();
            e(hVar2).a = j37.a(i37.SHUTDOWN);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, j37] */
    @Override // defpackage.c47
    public void d() {
        for (c47.h hVar : f()) {
            hVar.e();
            e(hVar).a = j37.a(i37.SHUTDOWN);
        }
    }

    public Collection<c47.h> f() {
        return this.c.values();
    }

    public final void g() {
        boolean z;
        i37 i37Var = i37.CONNECTING;
        i37 i37Var2 = i37.READY;
        Collection<c47.h> collectionF = f();
        ArrayList arrayList = new ArrayList(collectionF.size());
        Iterator<c47.h> it = collectionF.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            c47.h next = it.next();
            if (e(next).a.a == i37Var2) {
                arrayList.add(next);
            }
        }
        if (!arrayList.isEmpty()) {
            h(i37Var2, new c(arrayList, this.d.nextInt(arrayList.size())));
            return;
        }
        x47 x47Var = h;
        Iterator<c47.h> it2 = f().iterator();
        while (it2.hasNext()) {
            j37 j37Var = e(it2.next()).a;
            i37 i37Var3 = j37Var.a;
            if (i37Var3 == i37Var || i37Var3 == i37.IDLE) {
                z = true;
            }
            if (x47Var == h || !x47Var.f()) {
                x47Var = j37Var.b;
            }
        }
        if (!z) {
            i37Var = i37.TRANSIENT_FAILURE;
        }
        h(i37Var, new b(x47Var));
    }

    public final void h(i37 i37Var, e eVar) {
        if (i37Var == this.e && eVar.b(this.f)) {
            return;
        }
        this.b.d(i37Var, eVar);
        this.e = i37Var;
        this.f = eVar;
    }
}
