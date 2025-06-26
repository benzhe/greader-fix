package defpackage;

import defpackage.m78;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class n78 {
    public static final CopyOnWriteArrayList<n78> a = new CopyOnWriteArrayList<>();
    public static final ConcurrentMap<String, n78> b = new ConcurrentHashMap(512, 0.75f, 2);

    static {
        if (m78.a.getAndSet(true)) {
            throw new IllegalStateException("Already initialized");
        }
        AtomicReference<m78> atomicReference = m78.b;
        atomicReference.compareAndSet(null, new m78.a());
        atomicReference.get().a();
    }

    public static k78 a(String str, boolean z) {
        kt7.o(str, "zoneId");
        ConcurrentMap<String, n78> concurrentMap = b;
        n78 n78Var = concurrentMap.get(str);
        if (n78Var != null) {
            return n78Var.b(str, z);
        }
        if (concurrentMap.isEmpty()) {
            throw new l78("No time-zone data files registered");
        }
        throw new l78(jo.n("Unknown time-zone ID: ", str));
    }

    public static void d(n78 n78Var) {
        kt7.o(n78Var, "provider");
        for (String str : n78Var.c()) {
            kt7.o(str, "zoneId");
            if (b.putIfAbsent(str, n78Var) != null) {
                throw new l78("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + n78Var);
            }
        }
        a.add(n78Var);
    }

    public abstract k78 b(String str, boolean z);

    public abstract Set<String> c();
}
