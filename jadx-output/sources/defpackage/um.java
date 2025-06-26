package defpackage;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public abstract class um<V> implements ie5<V> {
    public static final boolean h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger i = Logger.getLogger(um.class.getName());
    public static final b j;
    public static final Object k;
    public volatile Object e;
    public volatile e f;
    public volatile i g;

    public static abstract class b {
        public b(a aVar) {
        }

        public abstract boolean a(um<?> umVar, e eVar, e eVar2);

        public abstract boolean b(um<?> umVar, Object obj, Object obj2);

        public abstract boolean c(um<?> umVar, i iVar, i iVar2);

        public abstract void d(i iVar, i iVar2);

        public abstract void e(i iVar, Thread thread);
    }

    public static final class c {
        public static final c c;
        public static final c d;
        public final boolean a;
        public final Throwable b;

        static {
            if (um.h) {
                d = null;
                c = null;
            } else {
                d = new c(false, null);
                c = new c(true, null);
            }
        }

        public c(boolean z, Throwable th) {
            this.a = z;
            this.b = th;
        }
    }

    public static final class d {
        public static final d b = new d(new a("Failure occurred while trying to finish a future."));
        public final Throwable a;

        public static class a extends Throwable {
            public a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public d(Throwable th) {
            boolean z = um.h;
            Objects.requireNonNull(th);
            this.a = th;
        }
    }

    public static final class e {
        public static final e d = new e(null, null);
        public final Runnable a;
        public final Executor b;
        public e c;

        public e(Runnable runnable, Executor executor) {
            this.a = runnable;
            this.b = executor;
        }
    }

    public static final class f extends b {
        public final AtomicReferenceFieldUpdater<i, Thread> a;
        public final AtomicReferenceFieldUpdater<i, i> b;
        public final AtomicReferenceFieldUpdater<um, i> c;
        public final AtomicReferenceFieldUpdater<um, e> d;
        public final AtomicReferenceFieldUpdater<um, Object> e;

        public f(AtomicReferenceFieldUpdater<i, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<i, i> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<um, i> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<um, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<um, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // um.b
        public boolean a(um<?> umVar, e eVar, e eVar2) {
            return this.d.compareAndSet(umVar, eVar, eVar2);
        }

        @Override // um.b
        public boolean b(um<?> umVar, Object obj, Object obj2) {
            return this.e.compareAndSet(umVar, obj, obj2);
        }

        @Override // um.b
        public boolean c(um<?> umVar, i iVar, i iVar2) {
            return this.c.compareAndSet(umVar, iVar, iVar2);
        }

        @Override // um.b
        public void d(i iVar, i iVar2) {
            this.b.lazySet(iVar, iVar2);
        }

        @Override // um.b
        public void e(i iVar, Thread thread) {
            this.a.lazySet(iVar, thread);
        }
    }

    public static final class g<V> implements Runnable {
        public final um<V> e;
        public final ie5<? extends V> f;

        public g(um<V> umVar, ie5<? extends V> ie5Var) {
            this.e = umVar;
            this.f = ie5Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.e.e != this) {
                return;
            }
            if (um.j.b(this.e, this, um.e(this.f))) {
                um.b(this.e);
            }
        }
    }

    public static final class h extends b {
        public h() {
            super(null);
        }

        @Override // um.b
        public boolean a(um<?> umVar, e eVar, e eVar2) {
            synchronized (umVar) {
                if (umVar.f != eVar) {
                    return false;
                }
                umVar.f = eVar2;
                return true;
            }
        }

        @Override // um.b
        public boolean b(um<?> umVar, Object obj, Object obj2) {
            synchronized (umVar) {
                if (umVar.e != obj) {
                    return false;
                }
                umVar.e = obj2;
                return true;
            }
        }

        @Override // um.b
        public boolean c(um<?> umVar, i iVar, i iVar2) {
            synchronized (umVar) {
                if (umVar.g != iVar) {
                    return false;
                }
                umVar.g = iVar2;
                return true;
            }
        }

        @Override // um.b
        public void d(i iVar, i iVar2) {
            iVar.b = iVar2;
        }

        @Override // um.b
        public void e(i iVar, Thread thread) {
            iVar.a = thread;
        }
    }

    public static final class i {
        public static final i c = new i(false);
        public volatile Thread a;
        public volatile i b;

        public i(boolean z) {
        }

        public i() {
            um.j.e(this, Thread.currentThread());
        }
    }

    static {
        b hVar;
        try {
            hVar = new f(AtomicReferenceFieldUpdater.newUpdater(i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(i.class, i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(um.class, i.class, "g"), AtomicReferenceFieldUpdater.newUpdater(um.class, e.class, "f"), AtomicReferenceFieldUpdater.newUpdater(um.class, Object.class, "e"));
            th = null;
        } catch (Throwable th) {
            th = th;
            hVar = new h();
        }
        j = hVar;
        if (th != null) {
            i.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        k = new Object();
    }

    public static void b(um<?> umVar) {
        e eVar;
        e eVar2;
        e eVar3 = null;
        while (true) {
            i iVar = umVar.g;
            if (j.c(umVar, iVar, i.c)) {
                while (iVar != null) {
                    Thread thread = iVar.a;
                    if (thread != null) {
                        iVar.a = null;
                        LockSupport.unpark(thread);
                    }
                    iVar = iVar.b;
                }
                do {
                    eVar = umVar.f;
                } while (!j.a(umVar, eVar, e.d));
                while (true) {
                    eVar2 = eVar3;
                    eVar3 = eVar;
                    if (eVar3 == null) {
                        break;
                    }
                    eVar = eVar3.c;
                    eVar3.c = eVar2;
                }
                while (eVar2 != null) {
                    eVar3 = eVar2.c;
                    Runnable runnable = eVar2.a;
                    if (runnable instanceof g) {
                        g gVar = (g) runnable;
                        umVar = gVar.e;
                        if (umVar.e == gVar) {
                            if (j.b(umVar, gVar, e(gVar.f))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        c(runnable, eVar2.b);
                    }
                    eVar2 = eVar3;
                }
                return;
            }
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            i.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    public static Object e(ie5<?> ie5Var) {
        if (ie5Var instanceof um) {
            Object obj = ((um) ie5Var).e;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            return cVar.a ? cVar.b != null ? new c(false, cVar.b) : c.d : obj;
        }
        boolean zIsCancelled = ie5Var.isCancelled();
        if ((!h) && zIsCancelled) {
            return c.d;
        }
        try {
            Object objF = f(ie5Var);
            return objF == null ? k : objF;
        } catch (CancellationException e2) {
            if (zIsCancelled) {
                return new c(false, e2);
            }
            return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + ie5Var, e2));
        } catch (ExecutionException e3) {
            return new d(e3.getCause());
        } catch (Throwable th) {
            return new d(th);
        }
    }

    public static <V> V f(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public final void a(StringBuilder sb) {
        try {
            Object objF = f(this);
            sb.append("SUCCESS, result=[");
            sb.append(objF == this ? "this future" : String.valueOf(objF));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.e;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = h ? new c(z, new CancellationException("Future.cancel() was called.")) : z ? c.c : c.d;
        boolean z2 = false;
        um<V> umVar = this;
        while (true) {
            if (j.b(umVar, obj, cVar)) {
                b(umVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                ie5<? extends V> ie5Var = ((g) obj).f;
                if (!(ie5Var instanceof um)) {
                    ie5Var.cancel(z);
                    return true;
                }
                umVar = (um) ie5Var;
                obj = umVar.e;
                if (!(obj == null) && !(obj instanceof g)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = umVar.e;
                if (!(obj instanceof g)) {
                    return z2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V d(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            Throwable th = ((c) obj).b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).a);
        }
        if (obj == k) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String g() {
        Object obj = this.e;
        if (obj instanceof g) {
            StringBuilder sbZ = jo.z("setFuture=[");
            ie5<? extends V> ie5Var = ((g) obj).f;
            return jo.s(sbZ, ie5Var == this ? "this future" : String.valueOf(ie5Var), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        StringBuilder sbZ2 = jo.z("remaining delay=[");
        sbZ2.append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
        sbZ2.append(" ms]");
        return sbZ2.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.e;
        if ((obj != null) && (!(obj instanceof g))) {
            return d(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            i iVar = this.g;
            if (iVar != i.c) {
                i iVar2 = new i();
                do {
                    b bVar = j;
                    bVar.d(iVar2, iVar);
                    if (bVar.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                h(iVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.e;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return d(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        h(iVar2);
                    } else {
                        iVar = this.g;
                    }
                } while (iVar != i.c);
            }
            return d(this.e);
        }
        while (nanos > 0) {
            Object obj3 = this.e;
            if ((obj3 != null) && (!(obj3 instanceof g))) {
                return d(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strN = "Waited " + j2 + StringUtils.SPACE + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strN2 = jo.n(strN, " (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strN3 = strN2 + jConvert + StringUtils.SPACE + lowerCase;
                if (z) {
                    strN3 = jo.n(strN3, ",");
                }
                strN2 = jo.n(strN3, StringUtils.SPACE);
            }
            if (z) {
                strN2 = strN2 + nanos2 + " nanoseconds ";
            }
            strN = jo.n(strN2, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(jo.n(strN, " but future completed as timeout expired"));
        }
        throw new TimeoutException(jo.o(strN, " for ", string));
    }

    public final void h(i iVar) {
        iVar.a = null;
        while (true) {
            i iVar2 = this.g;
            if (iVar2 == i.c) {
                return;
            }
            i iVar3 = null;
            while (iVar2 != null) {
                i iVar4 = iVar2.b;
                if (iVar2.a != null) {
                    iVar3 = iVar2;
                } else if (iVar3 != null) {
                    iVar3.b = iVar4;
                    if (iVar3.a == null) {
                        break;
                    }
                } else if (!j.c(this, iVar2, iVar4)) {
                    break;
                }
                iVar2 = iVar4;
            }
            return;
        }
    }

    @Override // defpackage.ie5
    public final void i(Runnable runnable, Executor executor) {
        Objects.requireNonNull(executor);
        e eVar = this.f;
        if (eVar != e.d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.c = eVar;
                if (j.a(this, eVar, eVar2)) {
                    return;
                } else {
                    eVar = this.f;
                }
            } while (eVar != e.d);
        }
        c(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.e instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof g)) & (this.e != null);
    }

    public String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.e instanceof c) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                string = g();
            } catch (RuntimeException e2) {
                StringBuilder sbZ = jo.z("Exception thrown from implementation: ");
                sbZ.append(e2.getClass());
                string = sbZ.toString();
            }
            if (string != null && !string.isEmpty()) {
                jo.H(sb, "PENDING, info=[", string, "]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.e;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return d(obj2);
            }
            i iVar = this.g;
            if (iVar != i.c) {
                i iVar2 = new i();
                do {
                    b bVar = j;
                    bVar.d(iVar2, iVar);
                    if (bVar.c(this, iVar, iVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.e;
                            } else {
                                h(iVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return d(obj);
                    }
                    iVar = this.g;
                } while (iVar != i.c);
            }
            return d(this.e);
        }
        throw new InterruptedException();
    }
}
