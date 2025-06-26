package defpackage;

import defpackage.su2;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class av2<OutputT> extends su2.i<OutputT> {
    public static final a n;
    public static final Logger o = Logger.getLogger(av2.class.getName());
    private volatile Set<Throwable> l = null;
    private volatile int m;

    public static abstract class a {
        public a(bv2 bv2Var) {
        }

        public abstract void a(av2 av2Var, Set<Throwable> set, Set<Throwable> set2);

        public abstract int b(av2 av2Var);
    }

    public static final class b extends a {
        public b(bv2 bv2Var) {
            super(null);
        }

        @Override // av2.a
        public final void a(av2 av2Var, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (av2Var) {
                if (av2Var.l == null) {
                    av2Var.l = set2;
                }
            }
        }

        @Override // av2.a
        public final int b(av2 av2Var) {
            int iZ;
            synchronized (av2Var) {
                iZ = av2.z(av2Var);
            }
            return iZ;
        }
    }

    public static final class c extends a {
        public final AtomicReferenceFieldUpdater<av2, Set<Throwable>> a;
        public final AtomicIntegerFieldUpdater<av2> b;

        public c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super(null);
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicIntegerFieldUpdater;
        }

        @Override // av2.a
        public final void a(av2 av2Var, Set<Throwable> set, Set<Throwable> set2) {
            this.a.compareAndSet(av2Var, null, set2);
        }

        @Override // av2.a
        public final int b(av2 av2Var) {
            return this.b.decrementAndGet(av2Var);
        }
    }

    static {
        Throwable th;
        a bVar;
        try {
            bVar = new c(AtomicReferenceFieldUpdater.newUpdater(av2.class, Set.class, "l"), AtomicIntegerFieldUpdater.newUpdater(av2.class, "m"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            bVar = new b(null);
        }
        n = bVar;
        if (th != null) {
            o.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public av2(int i) {
        this.m = i;
    }

    public static /* synthetic */ int z(av2 av2Var) {
        int i = av2Var.m - 1;
        av2Var.m = i;
        return i;
    }

    public final Set<Throwable> A() {
        Set<Throwable> set = this.l;
        if (set != null) {
            return set;
        }
        Set<Throwable> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        C(setNewSetFromMap);
        n.a(this, null, setNewSetFromMap);
        return this.l;
    }

    public final void B() {
        this.l = null;
    }

    public abstract void C(Set<Throwable> set);
}
