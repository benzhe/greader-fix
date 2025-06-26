package defpackage;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
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
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class ge5<V> extends ke5 implements ie5<V> {
    public static final boolean h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger i = Logger.getLogger(ge5.class.getName());
    public static final b j;
    public static final Object k;
    private volatile Object e;
    private volatile e f;
    private volatile j g;

    public static abstract class b {
        public b(a aVar) {
        }

        public abstract boolean a(ge5<?> ge5Var, e eVar, e eVar2);

        public abstract boolean b(ge5<?> ge5Var, Object obj, Object obj2);

        public abstract boolean c(ge5<?> ge5Var, j jVar, j jVar2);

        public abstract void d(j jVar, j jVar2);

        public abstract void e(j jVar, Thread thread);
    }

    public static final class c {
        public static final c c;
        public static final c d;
        public final boolean a;
        public final Throwable b;

        static {
            if (ge5.h) {
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

        static {
            Objects.requireNonNull(new a("Failure occurred while trying to finish a future."));
        }

        public d(Throwable th) {
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
        public final AtomicReferenceFieldUpdater<j, Thread> a;
        public final AtomicReferenceFieldUpdater<j, j> b;
        public final AtomicReferenceFieldUpdater<ge5, j> c;
        public final AtomicReferenceFieldUpdater<ge5, e> d;
        public final AtomicReferenceFieldUpdater<ge5, Object> e;

        public f(AtomicReferenceFieldUpdater<j, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<j, j> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<ge5, j> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<ge5, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<ge5, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // ge5.b
        public boolean a(ge5<?> ge5Var, e eVar, e eVar2) {
            return this.d.compareAndSet(ge5Var, eVar, eVar2);
        }

        @Override // ge5.b
        public boolean b(ge5<?> ge5Var, Object obj, Object obj2) {
            return this.e.compareAndSet(ge5Var, obj, obj2);
        }

        @Override // ge5.b
        public boolean c(ge5<?> ge5Var, j jVar, j jVar2) {
            return this.c.compareAndSet(ge5Var, jVar, jVar2);
        }

        @Override // ge5.b
        public void d(j jVar, j jVar2) {
            this.b.lazySet(jVar, jVar2);
        }

        @Override // ge5.b
        public void e(j jVar, Thread thread) {
            this.a.lazySet(jVar, thread);
        }
    }

    public static final class g<V> implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }

    public static final class h extends b {
        public h(a aVar) {
            super(null);
        }

        @Override // ge5.b
        public boolean a(ge5<?> ge5Var, e eVar, e eVar2) {
            synchronized (ge5Var) {
                if (((ge5) ge5Var).f != eVar) {
                    return false;
                }
                ((ge5) ge5Var).f = eVar2;
                return true;
            }
        }

        @Override // ge5.b
        public boolean b(ge5<?> ge5Var, Object obj, Object obj2) {
            synchronized (ge5Var) {
                if (((ge5) ge5Var).e != obj) {
                    return false;
                }
                ((ge5) ge5Var).e = obj2;
                return true;
            }
        }

        @Override // ge5.b
        public boolean c(ge5<?> ge5Var, j jVar, j jVar2) {
            synchronized (ge5Var) {
                if (((ge5) ge5Var).g != jVar) {
                    return false;
                }
                ((ge5) ge5Var).g = jVar2;
                return true;
            }
        }

        @Override // ge5.b
        public void d(j jVar, j jVar2) {
            jVar.b = jVar2;
        }

        @Override // ge5.b
        public void e(j jVar, Thread thread) {
            jVar.a = thread;
        }
    }

    public static final class i extends b {
        public static final Unsafe a;
        public static final long b;
        public static final long c;
        public static final long d;
        public static final long e;
        public static final long f;

        public static class a implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                c = unsafe.objectFieldOffset(ge5.class.getDeclaredField("g"));
                b = unsafe.objectFieldOffset(ge5.class.getDeclaredField("f"));
                d = unsafe.objectFieldOffset(ge5.class.getDeclaredField("e"));
                e = unsafe.objectFieldOffset(j.class.getDeclaredField("a"));
                f = unsafe.objectFieldOffset(j.class.getDeclaredField("b"));
                a = unsafe;
            } catch (Exception e3) {
                rd5.c(e3);
                throw new RuntimeException(e3);
            }
        }

        public i(a aVar) {
            super(null);
        }

        @Override // ge5.b
        public boolean a(ge5<?> ge5Var, e eVar, e eVar2) {
            return a.compareAndSwapObject(ge5Var, b, eVar, eVar2);
        }

        @Override // ge5.b
        public boolean b(ge5<?> ge5Var, Object obj, Object obj2) {
            return a.compareAndSwapObject(ge5Var, d, obj, obj2);
        }

        @Override // ge5.b
        public boolean c(ge5<?> ge5Var, j jVar, j jVar2) {
            return a.compareAndSwapObject(ge5Var, c, jVar, jVar2);
        }

        @Override // ge5.b
        public void d(j jVar, j jVar2) {
            a.putObject(jVar, f, jVar2);
        }

        @Override // ge5.b
        public void e(j jVar, Thread thread) {
            a.putObject(jVar, e, thread);
        }
    }

    public static final class j {
        public static final j c = new j(false);
        public volatile Thread a;
        public volatile j b;

        public j(boolean z) {
        }

        public j() {
            ge5.j.e(this, Thread.currentThread());
        }
    }

    static {
        b hVar;
        Throwable th = null;
        try {
            hVar = new i(null);
            th = null;
        } catch (Throwable th2) {
            th = th2;
            try {
                hVar = new f(AtomicReferenceFieldUpdater.newUpdater(j.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(j.class, j.class, "b"), AtomicReferenceFieldUpdater.newUpdater(ge5.class, j.class, "g"), AtomicReferenceFieldUpdater.newUpdater(ge5.class, e.class, "f"), AtomicReferenceFieldUpdater.newUpdater(ge5.class, Object.class, "e"));
            } catch (Throwable th3) {
                hVar = new h(null);
                th = th3;
            }
        }
        j = hVar;
        if (th != null) {
            Logger logger = i;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th);
        }
        k = new Object();
    }

    public static void h(ge5<?> ge5Var) {
        j jVar;
        e eVar;
        do {
            jVar = ((ge5) ge5Var).g;
        } while (!j.c(ge5Var, jVar, j.c));
        while (jVar != null) {
            Thread thread = jVar.a;
            if (thread != null) {
                jVar.a = null;
                LockSupport.unpark(thread);
            }
            jVar = jVar.b;
        }
        do {
            eVar = ((ge5) ge5Var).f;
        } while (!j.a(ge5Var, eVar, e.d));
        e eVar2 = null;
        while (eVar != null) {
            e eVar3 = eVar.c;
            eVar.c = eVar2;
            eVar2 = eVar;
            eVar = eVar3;
        }
        while (eVar2 != null) {
            e eVar4 = eVar2.c;
            Runnable runnable = eVar2.a;
            if (runnable instanceof g) {
                Objects.requireNonNull((g) runnable);
                throw null;
            }
            j(runnable, eVar2.b);
            eVar2 = eVar4;
        }
    }

    public static void j(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            i.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    public static <V> V l(Future<V> future) throws ExecutionException {
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

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Object obj = this.e;
        if ((obj == null) | (obj instanceof g)) {
            c cVar = h ? new c(z, new CancellationException("Future.cancel() was called.")) : z ? c.c : c.d;
            while (!j.b(this, obj, cVar)) {
                obj = this.e;
                if (!(obj instanceof g)) {
                }
            }
            if (z) {
                m();
            }
            h(this);
            if (!(obj instanceof g)) {
                return true;
            }
            Objects.requireNonNull((g) obj);
            throw null;
        }
        return false;
    }

    public final void g(StringBuilder sb) {
        try {
            Object objL = l(this);
            sb.append("SUCCESS, result=[");
            sb.append(objL == this ? "this future" : String.valueOf(objL));
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
    public V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.e;
        if ((obj != null) && (!(obj instanceof g))) {
            return k(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            j jVar = this.g;
            if (jVar != j.c) {
                j jVar2 = new j();
                do {
                    b bVar = j;
                    bVar.d(jVar2, jVar);
                    if (bVar.c(this, jVar, jVar2)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                o(jVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.e;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return k(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        o(jVar2);
                    } else {
                        jVar = this.g;
                    }
                } while (jVar != j.c);
            }
            return k(this.e);
        }
        while (nanos > 0) {
            Object obj3 = this.e;
            if ((obj3 != null) && (!(obj3 instanceof g))) {
                return k(obj3);
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

    @Override // defpackage.ie5
    public void i(Runnable runnable, Executor executor) {
        e eVar;
        c50.A(runnable, "Runnable was null.");
        c50.A(executor, "Executor was null.");
        if (!isDone() && (eVar = this.f) != e.d) {
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
        j(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.e instanceof c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof g)) & (this.e != null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V k(Object obj) throws ExecutionException {
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

    public void m() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String n() {
        Object obj = this.e;
        if (obj instanceof g) {
            Objects.requireNonNull((g) obj);
            return "setFuture=[null]";
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        StringBuilder sbZ = jo.z("remaining delay=[");
        sbZ.append(((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS));
        sbZ.append(" ms]");
        return sbZ.toString();
    }

    public final void o(j jVar) {
        jVar.a = null;
        while (true) {
            j jVar2 = this.g;
            if (jVar2 == j.c) {
                return;
            }
            j jVar3 = null;
            while (jVar2 != null) {
                j jVar4 = jVar2.b;
                if (jVar2.a != null) {
                    jVar3 = jVar2;
                } else if (jVar3 != null) {
                    jVar3.b = jVar4;
                    if (jVar3.a == null) {
                        break;
                    }
                } else if (!j.c(this, jVar2, jVar4)) {
                    break;
                }
                jVar2 = jVar4;
            }
            return;
        }
    }

    public String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.e instanceof c) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            g(sb);
        } else {
            try {
                string = n();
            } catch (RuntimeException e2) {
                StringBuilder sbZ = jo.z("Exception thrown from implementation: ");
                sbZ.append(e2.getClass());
                string = sbZ.toString();
            }
            if (string != null && !string.isEmpty()) {
                jo.H(sb, "PENDING, info=[", string, "]");
            } else if (isDone()) {
                g(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.e;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return k(obj2);
            }
            j jVar = this.g;
            if (jVar != j.c) {
                j jVar2 = new j();
                do {
                    b bVar = j;
                    bVar.d(jVar2, jVar);
                    if (bVar.c(this, jVar, jVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.e;
                            } else {
                                o(jVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return k(obj);
                    }
                    jVar = this.g;
                } while (jVar != j.c);
            }
            return k(this.e);
        }
        throw new InterruptedException();
    }
}
