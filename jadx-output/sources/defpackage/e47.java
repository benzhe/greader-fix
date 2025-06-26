package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class e47 {
    public static final Logger c = Logger.getLogger(e47.class.getName());
    public static e47 d;
    public static final Iterable<Class<?>> e;
    public final LinkedHashSet<d47> a = new LinkedHashSet<>();
    public final LinkedHashMap<String, d47> b = new LinkedHashMap<>();

    public static final class a implements w47<d47> {
        @Override // defpackage.w47
        public boolean a(d47 d47Var) {
            return d47Var.d();
        }

        @Override // defpackage.w47
        public int b(d47 d47Var) {
            return d47Var.c();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(Class.forName("k87"));
        } catch (ClassNotFoundException e2) {
            c.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e2);
        }
        try {
            arrayList.add(Class.forName("bb7"));
        } catch (ClassNotFoundException e3) {
            c.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e3);
        }
        e = Collections.unmodifiableList(arrayList);
    }

    public synchronized d47 a(String str) {
        LinkedHashMap<String, d47> linkedHashMap;
        linkedHashMap = this.b;
        c50.A(str, "policy");
        return linkedHashMap.get(str);
    }

    public final synchronized void b() {
        this.b.clear();
        Iterator<d47> it = this.a.iterator();
        while (it.hasNext()) {
            d47 next = it.next();
            String strB = next.b();
            d47 d47Var = this.b.get(strB);
            if (d47Var == null || d47Var.c() < next.c()) {
                this.b.put(strB, next);
            }
        }
    }
}
