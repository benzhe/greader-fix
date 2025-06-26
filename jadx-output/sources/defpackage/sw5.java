package defpackage;

import defpackage.ax5;
import defpackage.bq5;
import defpackage.dd6;
import defpackage.ex5;
import defpackage.pv5;
import defpackage.qx5;
import defpackage.uc6;
import defpackage.x47;
import defpackage.xw5;
import defpackage.yw5;
import defpackage.zc6;
import defpackage.zw5;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class sw5 implements yw5.a {
    public final c a;
    public final fs5 b;
    public final mw5 d;
    public final zw5 f;
    public final ax5 g;
    public yw5 h;
    public boolean e = false;
    public final Map<Integer, ut5> c = new HashMap();
    public final Deque<ru5> i = new ArrayDeque();

    public class a implements zw5.a {
        public a() {
        }

        @Override // defpackage.uw5
        public void b() {
            sw5 sw5Var = sw5.this;
            Iterator<ut5> it = sw5Var.c.values().iterator();
            while (it.hasNext()) {
                sw5Var.g(it.next());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v6, types: [java.util.List, java.util.List<java.lang.Integer>] */
        /* JADX WARN: Type inference failed for: r5v7, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r5v9, types: [java.util.ArrayList] */
        @Override // zw5.a
        public void c(ju5 ju5Var, xw5 xw5Var) {
            boolean z;
            sw5 sw5Var = sw5.this;
            sw5Var.d.c(wq5.ONLINE);
            bx5.c((sw5Var.f == null || sw5Var.h == null) ? false : true, "WatchStream and WatchStreamAggregator should both be non-null", new Object[0]);
            boolean z2 = xw5Var instanceof xw5.d;
            xw5.d dVar = z2 ? (xw5.d) xw5Var : null;
            if (dVar != null && dVar.a.equals(xw5.e.Removed) && dVar.d != null) {
                bx5.c(true, "Processing target error without a cause", new Object[0]);
                for (Integer num : dVar.b) {
                    if (sw5Var.c.containsKey(num)) {
                        sw5Var.c.remove(num);
                        sw5Var.h.b.remove(Integer.valueOf(num.intValue()));
                        sw5Var.a.a(num.intValue(), dVar.d);
                    }
                }
                return;
            }
            if (xw5Var instanceof xw5.b) {
                yw5 yw5Var = sw5Var.h;
                xw5.b bVar = (xw5.b) xw5Var;
                Objects.requireNonNull(yw5Var);
                fu5 fu5Var = bVar.d;
                bu5 bu5Var = bVar.c;
                Iterator<Integer> it = bVar.a.iterator();
                while (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    if (fu5Var instanceof yt5) {
                        if (yw5Var.c(iIntValue) != null) {
                            bq5.a aVar = yw5Var.f(iIntValue, fu5Var.a) ? bq5.a.MODIFIED : bq5.a.ADDED;
                            ww5 ww5VarA = yw5Var.a(iIntValue);
                            bu5 bu5Var2 = fu5Var.a;
                            ww5VarA.c = true;
                            ww5VarA.b.put(bu5Var2, aVar);
                            yw5Var.c.put(fu5Var.a, fu5Var);
                            bu5 bu5Var3 = fu5Var.a;
                            Set<Integer> hashSet = yw5Var.d.get(bu5Var3);
                            if (hashSet == null) {
                                hashSet = new HashSet<>();
                                yw5Var.d.put(bu5Var3, hashSet);
                            }
                            hashSet.add(Integer.valueOf(iIntValue));
                        }
                    } else if (fu5Var instanceof gu5) {
                        yw5Var.d(iIntValue, bu5Var, fu5Var);
                    }
                }
                Iterator<Integer> it2 = bVar.b.iterator();
                while (it2.hasNext()) {
                    yw5Var.d(it2.next().intValue(), bu5Var, bVar.d);
                }
            } else if (xw5Var instanceof xw5.c) {
                yw5 yw5Var2 = sw5Var.h;
                xw5.c cVar = (xw5.c) xw5Var;
                Objects.requireNonNull(yw5Var2);
                int i = cVar.a;
                int i2 = cVar.b.a;
                ut5 ut5VarC = yw5Var2.c(i);
                if (ut5VarC != null) {
                    dr5 dr5Var = ut5VarC.a;
                    if (!dr5Var.c()) {
                        vw5 vw5VarB = yw5Var2.a(i).b();
                        if ((vw5VarB.c.size() + ((sw5) yw5Var2.a).a.d(i).size()) - vw5VarB.e.size() != i2) {
                            yw5Var2.e(i);
                            yw5Var2.e.add(Integer.valueOf(i));
                        }
                    } else if (i2 == 0) {
                        bu5 bu5Var4 = new bu5(dr5Var.d);
                        yw5Var2.d(i, bu5Var4, new gu5(bu5Var4, ju5.f, false));
                    } else {
                        bx5.c(i2 == 1, "Single document existence filter with count: %d", Integer.valueOf(i2));
                    }
                }
            } else {
                bx5.c(z2, "Expected watchChange to be an instance of WatchTargetChange", new Object[0]);
                yw5 yw5Var3 = sw5Var.h;
                xw5.d dVar2 = (xw5.d) xw5Var;
                Objects.requireNonNull(yw5Var3);
                ?? arrayList = dVar2.b;
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                    for (Integer num2 : yw5Var3.b.keySet()) {
                        if (yw5Var3.b(num2.intValue())) {
                            arrayList.add(num2);
                        }
                    }
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    int iIntValue2 = ((Integer) it3.next()).intValue();
                    ww5 ww5VarA2 = yw5Var3.a(iIntValue2);
                    int iOrdinal = dVar2.a.ordinal();
                    if (iOrdinal != 0) {
                        if (iOrdinal == 1) {
                            ww5VarA2.a--;
                            if (!ww5VarA2.a()) {
                                ww5VarA2.c = false;
                                ww5VarA2.b.clear();
                            }
                            ww5VarA2.c(dVar2.c);
                        } else if (iOrdinal == 2) {
                            ww5VarA2.a--;
                            if (!ww5VarA2.a()) {
                                yw5Var3.b.remove(Integer.valueOf(iIntValue2));
                            }
                            bx5.c(dVar2.d == null, "WatchChangeAggregator does not handle errored targets", new Object[0]);
                        } else if (iOrdinal != 3) {
                            if (iOrdinal != 4) {
                                bx5.a("Unknown target watch change state: %s", dVar2.a);
                                throw null;
                            }
                            if (yw5Var3.b(iIntValue2)) {
                                yw5Var3.e(iIntValue2);
                                ww5VarA2.c(dVar2.c);
                            }
                        } else if (yw5Var3.b(iIntValue2)) {
                            ww5VarA2.c = true;
                            ww5VarA2.e = true;
                            ww5VarA2.c(dVar2.c);
                        }
                    } else if (yw5Var3.b(iIntValue2)) {
                        ww5VarA2.c(dVar2.c);
                    }
                }
            }
            if (ju5Var.equals(ju5.f) || ju5Var.compareTo(sw5Var.b.g.e()) < 0) {
                return;
            }
            bx5.c(!ju5Var.equals(r0), "Can't raise event for unknown SnapshotVersion", new Object[0]);
            yw5 yw5Var4 = sw5Var.h;
            Objects.requireNonNull(yw5Var4);
            HashMap map = new HashMap();
            for (Map.Entry<Integer, ww5> entry : yw5Var4.b.entrySet()) {
                int iIntValue3 = entry.getKey().intValue();
                ww5 value = entry.getValue();
                ut5 ut5VarC2 = yw5Var4.c(iIntValue3);
                if (ut5VarC2 != null) {
                    if (value.e && ut5VarC2.a.c()) {
                        bu5 bu5Var5 = new bu5(ut5VarC2.a.d);
                        if (yw5Var4.c.get(bu5Var5) == null && !yw5Var4.f(iIntValue3, bu5Var5)) {
                            yw5Var4.d(iIntValue3, bu5Var5, new gu5(bu5Var5, ju5Var, false));
                        }
                    }
                    if (value.c) {
                        map.put(Integer.valueOf(iIntValue3), value.b());
                        value.c = false;
                        value.b.clear();
                    }
                }
            }
            HashSet hashSet2 = new HashSet();
            for (Map.Entry<bu5, Set<Integer>> entry2 : yw5Var4.d.entrySet()) {
                bu5 key = entry2.getKey();
                Iterator<Integer> it4 = entry2.getValue().iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        z = true;
                        break;
                    }
                    ut5 ut5VarC3 = yw5Var4.c(it4.next().intValue());
                    if (ut5VarC3 != null && !ut5VarC3.d.equals(vs5.LIMBO_RESOLUTION)) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    hashSet2.add(key);
                }
            }
            nw5 nw5Var = new nw5(ju5Var, Collections.unmodifiableMap(map), Collections.unmodifiableSet(yw5Var4.e), Collections.unmodifiableMap(yw5Var4.c), Collections.unmodifiableSet(hashSet2));
            yw5Var4.c = new HashMap();
            yw5Var4.d = new HashMap();
            yw5Var4.e = new HashSet();
            for (Map.Entry<Integer, vw5> entry3 : nw5Var.b.entrySet()) {
                vw5 value2 = entry3.getValue();
                if (!value2.a.isEmpty()) {
                    int iIntValue4 = entry3.getKey().intValue();
                    ut5 ut5Var = sw5Var.c.get(Integer.valueOf(iIntValue4));
                    if (ut5Var != null) {
                        sw5Var.c.put(Integer.valueOf(iIntValue4), ut5Var.a(value2.a, ju5Var));
                    }
                }
            }
            Iterator<Integer> it5 = nw5Var.c.iterator();
            while (it5.hasNext()) {
                int iIntValue5 = it5.next().intValue();
                ut5 ut5Var2 = sw5Var.c.get(Integer.valueOf(iIntValue5));
                if (ut5Var2 != null) {
                    sw5Var.c.put(Integer.valueOf(iIntValue5), ut5Var2.a(qi6.f, ut5Var2.e));
                    sw5Var.f(iIntValue5);
                    sw5Var.g(new ut5(ut5Var2.a, iIntValue5, ut5Var2.c, vs5.EXISTENCE_FILTER_MISMATCH));
                }
            }
            sw5Var.a.c(nw5Var);
        }

        @Override // defpackage.uw5
        public void e(x47 x47Var) {
            sw5 sw5Var = sw5.this;
            Objects.requireNonNull(sw5Var);
            wq5 wq5Var = wq5.UNKNOWN;
            if (x47.f.equals(x47Var)) {
                bx5.c(!sw5Var.h(), "Watch stream was stopped gracefully while still needed.", new Object[0]);
            }
            sw5Var.h = null;
            if (!sw5Var.h()) {
                sw5Var.d.c(wq5Var);
                return;
            }
            mw5 mw5Var = sw5Var.d;
            if (mw5Var.a == wq5.ONLINE) {
                mw5Var.b(wq5Var);
                bx5.c(mw5Var.b == 0, "watchStreamFailures must be 0", new Object[0]);
                bx5.c(mw5Var.c == null, "onlineStateTimer must be null", new Object[0]);
            } else {
                int i = mw5Var.b + 1;
                mw5Var.b = i;
                if (i >= 1) {
                    ex5.b bVar = mw5Var.c;
                    if (bVar != null) {
                        bVar.a();
                        mw5Var.c = null;
                    }
                    mw5Var.a(String.format(Locale.ENGLISH, "Connection failed %d times. Most recent error: %s", 1, x47Var));
                    mw5Var.b(wq5.OFFLINE);
                }
            }
            sw5Var.j();
        }
    }

    public class b implements ax5.a {
        public b() {
        }

        @Override // ax5.a
        public void a(ju5 ju5Var, List<tu5> list) {
            sw5 sw5Var = sw5.this;
            ru5 ru5VarPoll = sw5Var.i.poll();
            qi6 qi6Var = sw5Var.g.r;
            bx5.c(ru5VarPoll.d.size() == list.size(), "Mutations sent %d must equal results received %d", Integer.valueOf(ru5VarPoll.d.size()), Integer.valueOf(list.size()));
            jn5<bu5, ?> jn5Var = zt5.a;
            List<qu5> list2 = ru5VarPoll.d;
            jn5<bu5, ?> jn5VarO = jn5Var;
            for (int i = 0; i < list2.size(); i++) {
                jn5VarO = jn5VarO.o(list2.get(i).a, list.get(i).a);
            }
            sw5Var.a.f(new su5(ru5VarPoll, ju5Var, list, qi6Var, jn5VarO));
            sw5Var.c();
        }

        @Override // defpackage.uw5
        public void b() {
            ax5 ax5Var = sw5.this.g;
            bx5.c(ax5Var.c(), "Writing handshake requires an opened stream", new Object[0]);
            bx5.c(!ax5Var.q, "Handshake already completed", new Object[0]);
            dd6.b bVarG = dd6.G();
            String str = ax5Var.p.b;
            bVarG.o();
            dd6.C((dd6) bVarG.f, str);
            ax5Var.i(bVarG.l());
        }

        @Override // ax5.a
        public void d() {
            sw5 sw5Var = sw5.this;
            fs5 fs5Var = sw5Var.b;
            fs5Var.a.h("Set stream token", new as5(fs5Var, sw5Var.g.r));
            Iterator<ru5> it = sw5Var.i.iterator();
            while (it.hasNext()) {
                sw5Var.g.j(it.next().d);
            }
        }

        @Override // defpackage.uw5
        public void e(x47 x47Var) {
            sw5 sw5Var = sw5.this;
            Objects.requireNonNull(sw5Var);
            if (x47.f.equals(x47Var)) {
                bx5.c(!sw5Var.i(), "Write stream was stopped gracefully while still needed.", new Object[0]);
            }
            if (!x47Var.f() && !sw5Var.i.isEmpty()) {
                if (sw5Var.g.q) {
                    bx5.c(!x47Var.f(), "Handling write error with status OK.", new Object[0]);
                    if (qv5.a(x47Var) && !x47Var.a.equals(x47.b.ABORTED)) {
                        ru5 ru5VarPoll = sw5Var.i.poll();
                        sw5Var.g.b();
                        sw5Var.a.b(ru5VarPoll.a, x47Var);
                        sw5Var.c();
                    }
                } else {
                    bx5.c(!x47Var.f(), "Handling write error with status OK.", new Object[0]);
                    if (qv5.a(x47Var)) {
                        qx5.a(qx5.a.DEBUG, "RemoteStore", "RemoteStore error before completed handshake; resetting stream token %s: %s", vx5.e(sw5Var.g.r), x47Var);
                        ax5 ax5Var = sw5Var.g;
                        qi6 qi6Var = ax5.s;
                        Objects.requireNonNull(ax5Var);
                        Objects.requireNonNull(qi6Var);
                        ax5Var.r = qi6Var;
                        fs5 fs5Var = sw5Var.b;
                        fs5Var.a.h("Set stream token", new as5(fs5Var, qi6Var));
                    }
                }
            }
            if (sw5Var.i()) {
                bx5.c(sw5Var.i(), "startWriteStream() called when shouldStartWriteStream() is false.", new Object[0]);
                sw5Var.g.g();
            }
        }
    }

    public interface c {
        void a(int i, x47 x47Var);

        void b(int i, x47 x47Var);

        void c(nw5 nw5Var);

        ln5<bu5> d(int i);

        void e(wq5 wq5Var);

        void f(su5 su5Var);
    }

    public sw5(c cVar, fs5 fs5Var, qv5 qv5Var, final ex5 ex5Var, pv5 pv5Var) {
        this.a = cVar;
        this.b = fs5Var;
        this.d = new mw5(ex5Var, new pw5(cVar));
        a aVar = new a();
        Objects.requireNonNull(qv5Var);
        this.f = new zw5(qv5Var.c, qv5Var.b, qv5Var.a, aVar);
        this.g = new ax5(qv5Var.c, qv5Var.b, qv5Var.a, new b());
        kx5<pv5.a> kx5Var = new kx5(this, ex5Var) { // from class: qw5
            public final sw5 a;
            public final ex5 b;

            {
                this.a = this;
                this.b = ex5Var;
            }

            @Override // defpackage.kx5
            public void accept(Object obj) {
                final sw5 sw5Var = this.a;
                this.b.a(new cx5(new Runnable(sw5Var) { // from class: rw5
                    public final sw5 e;

                    {
                        this.e = sw5Var;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        sw5 sw5Var2 = this.e;
                        if (sw5Var2.e) {
                            qx5.a(qx5.a.DEBUG, "RemoteStore", "Restarting streams for network reachability change.", new Object[0]);
                            sw5Var2.e();
                        }
                    }
                }));
            }
        };
        ov5 ov5Var = (ov5) pv5Var;
        synchronized (ov5Var.c) {
            ov5Var.c.add(kx5Var);
        }
    }

    public final boolean a() {
        return this.e && this.i.size() < 10;
    }

    public void b() {
        this.e = true;
        ax5 ax5Var = this.g;
        qi6 qi6VarJ = this.b.b.j();
        Objects.requireNonNull(ax5Var);
        Objects.requireNonNull(qi6VarJ);
        ax5Var.r = qi6VarJ;
        if (h()) {
            j();
        } else {
            this.d.c(wq5.UNKNOWN);
        }
        c();
    }

    public void c() {
        int i = this.i.isEmpty() ? -1 : this.i.getLast().a;
        while (true) {
            if (!a()) {
                break;
            }
            ru5 ru5VarF = this.b.b.f(i);
            if (ru5VarF != null) {
                bx5.c(a(), "addToWritePipeline called when pipeline is full", new Object[0]);
                this.i.add(ru5VarF);
                if (this.g.c()) {
                    ax5 ax5Var = this.g;
                    if (ax5Var.q) {
                        ax5Var.j(ru5VarF.d);
                    }
                }
                i = ru5VarF.a;
            } else if (this.i.size() == 0) {
                this.g.e();
            }
        }
        if (i()) {
            bx5.c(i(), "startWriteStream() called when shouldStartWriteStream() is false.", new Object[0]);
            this.g.g();
        }
    }

    public void d(ut5 ut5Var) {
        Integer numValueOf = Integer.valueOf(ut5Var.b);
        if (this.c.containsKey(numValueOf)) {
            return;
        }
        this.c.put(numValueOf, ut5Var);
        if (h()) {
            j();
        } else if (this.f.c()) {
            g(ut5Var);
        }
    }

    public final void e() {
        this.e = false;
        tw5 tw5Var = tw5.Initial;
        zw5 zw5Var = this.f;
        if (zw5Var.d()) {
            zw5Var.a(tw5Var, x47.f);
        }
        ax5 ax5Var = this.g;
        if (ax5Var.d()) {
            ax5Var.a(tw5Var, x47.f);
        }
        if (!this.i.isEmpty()) {
            qx5.a(qx5.a.DEBUG, "RemoteStore", "Stopping write stream with %d pending writes", Integer.valueOf(this.i.size()));
            this.i.clear();
        }
        this.h = null;
        this.d.c(wq5.UNKNOWN);
        this.g.b();
        this.f.b();
        b();
    }

    public final void f(int i) {
        this.h.a(i).a++;
        zw5 zw5Var = this.f;
        bx5.c(zw5Var.c(), "Unwatching targets requires an open stream", new Object[0]);
        uc6.b bVarH = uc6.H();
        String str = zw5Var.p.b;
        bVarH.o();
        uc6.D((uc6) bVarH.f, str);
        bVarH.o();
        uc6.F((uc6) bVarH.f, i);
        zw5Var.i(bVarH.l());
    }

    public final void g(ut5 ut5Var) {
        String str;
        this.h.a(ut5Var.b).a++;
        zw5 zw5Var = this.f;
        bx5.c(zw5Var.c(), "Watching queries requires an open stream", new Object[0]);
        uc6.b bVarH = uc6.H();
        String str2 = zw5Var.p.b;
        bVarH.o();
        uc6.D((uc6) bVarH.f, str2);
        ow5 ow5Var = zw5Var.p;
        Objects.requireNonNull(ow5Var);
        zc6.b bVarG = zc6.G();
        dr5 dr5Var = ut5Var.a;
        if (dr5Var.c()) {
            zc6.c cVarH = ow5Var.h(dr5Var);
            bVarG.o();
            zc6.D((zc6) bVarG.f, cVarH);
        } else {
            zc6.d dVarM = ow5Var.m(dr5Var);
            bVarG.o();
            zc6.C((zc6) bVarG.f, dVarM);
        }
        int i = ut5Var.b;
        bVarG.o();
        zc6.F((zc6) bVarG.f, i);
        qi6 qi6Var = ut5Var.g;
        bVarG.o();
        zc6.E((zc6) bVarG.f, qi6Var);
        zc6 zc6VarL = bVarG.l();
        bVarH.o();
        uc6.E((uc6) bVarH.f, zc6VarL);
        Objects.requireNonNull(zw5Var.p);
        vs5 vs5Var = ut5Var.d;
        int iOrdinal = vs5Var.ordinal();
        HashMap map = null;
        if (iOrdinal == 0) {
            str = null;
        } else if (iOrdinal == 1) {
            str = "existence-filter-mismatch";
        } else {
            if (iOrdinal != 2) {
                bx5.a("Unrecognized query purpose: %s", vs5Var);
                throw null;
            }
            str = "limbo-document";
        }
        if (str != null) {
            map = new HashMap(1);
            map.put("goog-listen-tags", str);
        }
        if (map != null) {
            bVarH.o();
            ((uj6) uc6.C((uc6) bVarH.f)).putAll(map);
        }
        zw5Var.i(bVarH.l());
    }

    public final boolean h() {
        return (!this.e || this.f.d() || this.c.isEmpty()) ? false : true;
    }

    public final boolean i() {
        return (!this.e || this.g.d() || this.i.isEmpty()) ? false : true;
    }

    public final void j() {
        bx5.c(h(), "startWatchStream() called when shouldStartWatchStream() is false.", new Object[0]);
        this.h = new yw5(this);
        this.f.g();
        final mw5 mw5Var = this.d;
        if (mw5Var.b == 0) {
            mw5Var.b(wq5.UNKNOWN);
            bx5.c(mw5Var.c == null, "onlineStateTimer shouldn't be started yet", new Object[0]);
            mw5Var.c = mw5Var.e.b(ex5.d.ONLINE_STATE_TIMEOUT, 10000L, new Runnable(mw5Var) { // from class: lw5
                public final mw5 e;

                {
                    this.e = mw5Var;
                }

                @Override // java.lang.Runnable
                public void run() {
                    mw5 mw5Var2 = this.e;
                    mw5Var2.c = null;
                    bx5.c(mw5Var2.a == wq5.UNKNOWN, "Timer should be canceled if we transitioned to a different state.", new Object[0]);
                    mw5Var2.a(String.format(Locale.ENGLISH, "Backend didn't respond within %d seconds\n", 10));
                    mw5Var2.b(wq5.OFFLINE);
                }
            });
        }
    }

    public void k(int i) {
        bx5.c(this.c.remove(Integer.valueOf(i)) != null, "stopListening called on target no currently watched: %d", Integer.valueOf(i));
        if (this.f.c()) {
            f(i);
        }
        if (this.c.isEmpty()) {
            if (this.f.c()) {
                this.f.e();
            } else if (this.e) {
                this.d.c(wq5.UNKNOWN);
            }
        }
    }
}
