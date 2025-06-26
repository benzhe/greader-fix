package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class b80 {
    public final AtomicInteger a;
    public final Set<j40<?>> b;
    public final PriorityBlockingQueue<j40<?>> c;
    public final PriorityBlockingQueue<j40<?>> d;
    public final hg3 e;
    public final fp3 f;
    public final jl3 g;
    public final ss3[] h;
    public zh3 i;
    public final List<da0> j;
    public final List<e70> k;

    public b80(hg3 hg3Var, fp3 fp3Var) {
        jl3 jl3Var = new jl3(new Handler(Looper.getMainLooper()));
        this.a = new AtomicInteger();
        this.b = new HashSet();
        this.c = new PriorityBlockingQueue<>();
        this.d = new PriorityBlockingQueue<>();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.e = hg3Var;
        this.f = fp3Var;
        this.h = new ss3[4];
        this.g = jl3Var;
    }

    public final void a() {
        zh3 zh3Var = this.i;
        if (zh3Var != null) {
            zh3Var.i = true;
            zh3Var.interrupt();
        }
        for (ss3 ss3Var : this.h) {
            if (ss3Var != null) {
                ss3Var.i = true;
                ss3Var.interrupt();
            }
        }
        zh3 zh3Var2 = new zh3(this.c, this.d, this.e, this.g);
        this.i = zh3Var2;
        zh3Var2.start();
        for (int i = 0; i < this.h.length; i++) {
            ss3 ss3Var2 = new ss3(this.d, this.f, this.e, this.g);
            this.h[i] = ss3Var2;
            ss3Var2.start();
        }
    }

    public final void b(j40<?> j40Var, int i) {
        synchronized (this.k) {
            Iterator<e70> it = this.k.iterator();
            while (it.hasNext()) {
                it.next().a(j40Var, i);
            }
        }
    }

    public final <T> j40<T> c(j40<T> j40Var) {
        j40Var.zza(this);
        synchronized (this.b) {
            this.b.add(j40Var);
        }
        j40Var.zze(this.a.incrementAndGet());
        j40Var.zzc("add-to-queue");
        b(j40Var, 0);
        if (j40Var.zzh()) {
            this.c.add(j40Var);
        } else {
            this.d.add(j40Var);
        }
        return j40Var;
    }
}
