package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class eg5 extends pf5 implements tn5 {
    public static final /* synthetic */ int g = 0;
    public final List<s96<xf5>> d;
    public final mg5 e;
    public final Map<sf5<?>, s96<?>> a = new HashMap();
    public final Map<Class<?>, s96<?>> b = new HashMap();
    public final Map<Class<?>, pg5<?>> c = new HashMap();
    public final AtomicReference<Boolean> f = new AtomicReference<>();

    public eg5(Executor executor, Iterable<s96<xf5>> iterable, Collection<sf5<?>> collection) {
        mg5 mg5Var = new mg5(executor);
        this.e = mg5Var;
        ArrayList arrayList = new ArrayList();
        arrayList.add(sf5.c(mg5Var, mg5.class, no5.class, mo5.class));
        arrayList.add(sf5.c(this, tn5.class, new Class[0]));
        for (sf5<?> sf5Var : collection) {
            if (sf5Var != null) {
                arrayList.add(sf5Var);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<s96<xf5>> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next());
        }
        this.d = arrayList2;
        ArrayList arrayList3 = new ArrayList();
        synchronized (this) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                try {
                    xf5 xf5Var = (xf5) ((s96) it2.next()).get();
                    if (xf5Var != null) {
                        arrayList.addAll(xf5Var.getComponents());
                        it2.remove();
                    }
                } catch (ng5 e) {
                    it2.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            if (this.a.isEmpty()) {
                c50.L(arrayList);
            } else {
                ArrayList arrayList4 = new ArrayList(this.a.keySet());
                arrayList4.addAll(arrayList);
                c50.L(arrayList4);
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                final sf5<?> sf5Var2 = (sf5) it3.next();
                this.a.put(sf5Var2, new og5(new s96(this, sf5Var2) { // from class: yf5
                    public final eg5 a;
                    public final sf5 b;

                    {
                        this.a = this;
                        this.b = sf5Var2;
                    }

                    @Override // defpackage.s96
                    public Object get() {
                        eg5 eg5Var = this.a;
                        sf5 sf5Var3 = this.b;
                        int i = eg5.g;
                        return sf5Var3.e.a(new ug5(sf5Var3, eg5Var));
                    }
                }));
            }
            arrayList3.addAll(h(arrayList));
            arrayList3.addAll(i());
            g();
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            ((Runnable) it4.next()).run();
        }
        Boolean bool = this.f.get();
        if (bool != null) {
            e(this.a, bool.booleanValue());
        }
    }

    @Override // defpackage.tf5
    public synchronized <T> s96<T> b(Class<T> cls) {
        Objects.requireNonNull(cls, "Null interface requested.");
        return (s96) this.b.get(cls);
    }

    @Override // defpackage.tf5
    public synchronized <T> s96<Set<T>> c(Class<T> cls) {
        pg5<?> pg5Var = this.c.get(cls);
        if (pg5Var != null) {
            return pg5Var;
        }
        return new s96() { // from class: cg5
            @Override // defpackage.s96
            public Object get() {
                return Collections.emptySet();
            }
        };
    }

    public final void e(Map<sf5<?>, s96<?>> map, boolean z) {
        Queue<ko5<?>> queue;
        Set<Map.Entry<lo5<Object>, Executor>> setEmptySet;
        for (Map.Entry<sf5<?>, s96<?>> entry : map.entrySet()) {
            sf5<?> key = entry.getKey();
            s96<?> value = entry.getValue();
            int i = key.c;
            if (!(i == 1)) {
                if (!(i == 2) || !z) {
                }
            }
            value.get();
        }
        mg5 mg5Var = this.e;
        synchronized (mg5Var) {
            queue = mg5Var.b;
            if (queue != null) {
                mg5Var.b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (final ko5<?> ko5Var : queue) {
                Objects.requireNonNull(ko5Var);
                synchronized (mg5Var) {
                    Queue<ko5<?>> queue2 = mg5Var.b;
                    if (queue2 != null) {
                        queue2.add(ko5Var);
                    } else {
                        synchronized (mg5Var) {
                            ConcurrentHashMap<lo5<Object>, Executor> concurrentHashMap = mg5Var.a.get(null);
                            setEmptySet = concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
                        }
                        for (final Map.Entry<lo5<Object>, Executor> entry2 : setEmptySet) {
                            entry2.getValue().execute(new Runnable(entry2, ko5Var) { // from class: lg5
                                public final Map.Entry e;
                                public final ko5 f;

                                {
                                    this.e = entry2;
                                    this.f = ko5Var;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    Map.Entry entry3 = this.e;
                                    ((lo5) entry3.getKey()).a(this.f);
                                }
                            });
                        }
                    }
                }
            }
        }
    }

    public void f(boolean z) {
        HashMap map;
        if (this.f.compareAndSet(null, Boolean.valueOf(z))) {
            synchronized (this) {
                map = new HashMap(this.a);
            }
            e(map, z);
        }
    }

    public final void g() {
        for (sf5<?> sf5Var : this.a.keySet()) {
            for (ig5 ig5Var : sf5Var.b) {
                if (ig5Var.a() && !this.c.containsKey(ig5Var.a)) {
                    this.c.put(ig5Var.a, new pg5<>(Collections.emptySet()));
                } else if (this.b.containsKey(ig5Var.a)) {
                    continue;
                } else {
                    if (ig5Var.b == 1) {
                        throw new qg5(String.format("Unsatisfied dependency for component %s: %s", sf5Var, ig5Var.a));
                    }
                    if (!ig5Var.a()) {
                        this.b.put(ig5Var.a, new tg5(rg5.a, sg5.a));
                    }
                }
            }
        }
    }

    public final List<Runnable> h(List<sf5<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (sf5<?> sf5Var : list) {
            if (sf5Var.b()) {
                final s96<?> s96Var = this.a.get(sf5Var);
                for (Class<? super Object> cls : sf5Var.a) {
                    if (this.b.containsKey(cls)) {
                        final tg5 tg5Var = (tg5) this.b.get(cls);
                        arrayList.add(new Runnable(tg5Var, s96Var) { // from class: ag5
                            public final tg5 e;
                            public final s96 f;

                            {
                                this.e = tg5Var;
                                this.f = s96Var;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                Object obj;
                                tg5 tg5Var2 = this.e;
                                s96<T> s96Var2 = this.f;
                                int i = eg5.g;
                                if (tg5Var2.b != sg5.a) {
                                    throw new IllegalStateException("provide() can be called only once.");
                                }
                                synchronized (tg5Var2) {
                                    obj = tg5Var2.a;
                                    tg5Var2.a = null;
                                    tg5Var2.b = s96Var2;
                                }
                                Objects.requireNonNull((rg5) obj);
                            }
                        });
                    } else {
                        this.b.put(cls, s96Var);
                    }
                }
            }
        }
        return arrayList;
    }

    public final List<Runnable> i() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry<sf5<?>, s96<?>> entry : this.a.entrySet()) {
            sf5<?> key = entry.getKey();
            if (!key.b()) {
                s96<?> value = entry.getValue();
                for (Class<? super Object> cls : key.a) {
                    if (!map.containsKey(cls)) {
                        map.put(cls, new HashSet());
                    }
                    ((Set) map.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.c.containsKey(entry2.getKey())) {
                final pg5<?> pg5Var = this.c.get(entry2.getKey());
                for (final s96 s96Var : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable(pg5Var, s96Var) { // from class: bg5
                        public final pg5 e;
                        public final s96 f;

                        {
                            this.e = pg5Var;
                            this.f = s96Var;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            pg5 pg5Var2 = this.e;
                            s96 s96Var2 = this.f;
                            int i = eg5.g;
                            synchronized (pg5Var2) {
                                if (pg5Var2.b == null) {
                                    pg5Var2.a.add(s96Var2);
                                } else {
                                    pg5Var2.b.add(s96Var2.get());
                                }
                            }
                        }
                    });
                }
            } else {
                this.c.put((Class) entry2.getKey(), new pg5<>((Set) ((Collection) entry2.getValue())));
            }
        }
        return arrayList;
    }
}
