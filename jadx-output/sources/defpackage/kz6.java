package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class kz6 {
    public final iz6 a;
    public Executor b;
    public Executor c;
    public final Map<Integer, String> e = Collections.synchronizedMap(new HashMap());
    public final Map<String, ReentrantLock> f = new WeakHashMap();
    public final AtomicBoolean g = new AtomicBoolean(false);
    public final AtomicBoolean h = new AtomicBoolean(false);
    public final AtomicBoolean i = new AtomicBoolean(false);
    public final Object j = new Object();
    public Executor d = Executors.newCachedThreadPool(new ez6(5, "uil-pool-d-"));

    public kz6(iz6 iz6Var) {
        this.a = iz6Var;
        this.b = iz6Var.b;
        this.c = iz6Var.c;
    }

    public void a(g07 g07Var) {
        this.e.remove(Integer.valueOf(g07Var.n()));
    }

    public final void b() {
        if (!this.a.d && ((ExecutorService) this.b).isShutdown()) {
            iz6 iz6Var = this.a;
            this.b = n56.J(iz6Var.f, iz6Var.g, iz6Var.h);
        }
        if (this.a.e || !((ExecutorService) this.c).isShutdown()) {
            return;
        }
        iz6 iz6Var2 = this.a;
        this.c = n56.J(iz6Var2.f, iz6Var2.g, iz6Var2.h);
    }
}
