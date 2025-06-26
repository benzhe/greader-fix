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
public class su2<V> extends qw2 implements aw2<V> {
    public static final boolean h;
    public static final Logger i;
    public static final c j;
    public static final Object k;
    private volatile Object e;
    private volatile f f;
    private volatile l g;

    public static final class b {
        public static final b c;
        public static final b d;
        public final boolean a;
        public final Throwable b;

        static {
            if (su2.h) {
                d = null;
                c = null;
            } else {
                d = new b(false, null);
                c = new b(true, null);
            }
        }

        public b(boolean z, Throwable th) {
            this.a = z;
            this.b = th;
        }
    }

    public static abstract class c {
        public c(a aVar) {
        }

        public abstract void a(l lVar, l lVar2);

        public abstract void b(l lVar, Thread thread);

        public abstract boolean c(su2<?> su2Var, f fVar, f fVar2);

        public abstract boolean d(su2<?> su2Var, l lVar, l lVar2);

        public abstract boolean e(su2<?> su2Var, Object obj, Object obj2);
    }

    public static final class d {
        public static final d b = new d(new a("Failure occurred while trying to finish a future."));
        public final Throwable a;

        public class a extends Throwable {
            public a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public d(Throwable th) {
            Objects.requireNonNull(th);
            this.a = th;
        }
    }

    public static final class e extends c {
        public final AtomicReferenceFieldUpdater<l, Thread> a;
        public final AtomicReferenceFieldUpdater<l, l> b;
        public final AtomicReferenceFieldUpdater<su2, l> c;
        public final AtomicReferenceFieldUpdater<su2, f> d;
        public final AtomicReferenceFieldUpdater<su2, Object> e;

        public e(AtomicReferenceFieldUpdater<l, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<l, l> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<su2, l> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<su2, f> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<su2, Object> atomicReferenceFieldUpdater5) {
            super(null);
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // su2.c
        public final void a(l lVar, l lVar2) {
            this.b.lazySet(lVar, lVar2);
        }

        @Override // su2.c
        public final void b(l lVar, Thread thread) {
            this.a.lazySet(lVar, thread);
        }

        @Override // su2.c
        public final boolean c(su2<?> su2Var, f fVar, f fVar2) {
            return this.d.compareAndSet(su2Var, fVar, fVar2);
        }

        @Override // su2.c
        public final boolean d(su2<?> su2Var, l lVar, l lVar2) {
            return this.c.compareAndSet(su2Var, lVar, lVar2);
        }

        @Override // su2.c
        public final boolean e(su2<?> su2Var, Object obj, Object obj2) {
            return this.e.compareAndSet(su2Var, obj, obj2);
        }
    }

    public static final class f {
        public static final f d = new f(null, null);
        public final Runnable a;
        public final Executor b;
        public f c;

        public f(Runnable runnable, Executor executor) {
            this.a = runnable;
            this.b = executor;
        }
    }

    public static final class g extends c {
        public g(a aVar) {
            super(null);
        }

        @Override // su2.c
        public final void a(l lVar, l lVar2) {
            lVar.b = lVar2;
        }

        @Override // su2.c
        public final void b(l lVar, Thread thread) {
            lVar.a = thread;
        }

        @Override // su2.c
        public final boolean c(su2<?> su2Var, f fVar, f fVar2) {
            synchronized (su2Var) {
                if (((su2) su2Var).f != fVar) {
                    return false;
                }
                ((su2) su2Var).f = fVar2;
                return true;
            }
        }

        @Override // su2.c
        public final boolean d(su2<?> su2Var, l lVar, l lVar2) {
            synchronized (su2Var) {
                if (((su2) su2Var).g != lVar) {
                    return false;
                }
                ((su2) su2Var).g = lVar2;
                return true;
            }
        }

        @Override // su2.c
        public final boolean e(su2<?> su2Var, Object obj, Object obj2) {
            synchronized (su2Var) {
                if (((su2) su2Var).e != obj) {
                    return false;
                }
                ((su2) su2Var).e = obj2;
                return true;
            }
        }
    }

    public static final class h<V> implements Runnable {
        public final su2<V> e;
        public final aw2<? extends V> f;

        public h(su2<V> su2Var, aw2<? extends V> aw2Var) {
            this.e = su2Var;
            this.f = aw2Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((su2) this.e).e != this) {
                return;
            }
            if (su2.j.e(this.e, this, su2.c(this.f))) {
                su2.q(this.e);
            }
        }
    }

    public static abstract class i<V> extends su2<V> implements j<V> {
        @Override // defpackage.su2, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }
    }

    public interface j<V> extends aw2<V> {
    }

    public static final class k extends c {
        public static final Unsafe a;
        public static final long b;
        public static final long c;
        public static final long d;
        public static final long e;
        public static final long f;

        public class a implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            public /* synthetic */ Unsafe run() throws Exception {
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
                c = unsafe.objectFieldOffset(su2.class.getDeclaredField("g"));
                b = unsafe.objectFieldOffset(su2.class.getDeclaredField("f"));
                d = unsafe.objectFieldOffset(su2.class.getDeclaredField("e"));
                e = unsafe.objectFieldOffset(l.class.getDeclaredField("a"));
                f = unsafe.objectFieldOffset(l.class.getDeclaredField("b"));
                a = unsafe;
            } catch (Exception e3) {
                Object obj = ht2.a;
                if (e3 instanceof RuntimeException) {
                    throw ((RuntimeException) e3);
                }
                if (!(e3 instanceof Error)) {
                    throw new RuntimeException(e3);
                }
                throw ((Error) e3);
            }
        }

        public k(a aVar) {
            super(null);
        }

        @Override // su2.c
        public final void a(l lVar, l lVar2) {
            a.putObject(lVar, f, lVar2);
        }

        @Override // su2.c
        public final void b(l lVar, Thread thread) {
            a.putObject(lVar, e, thread);
        }

        @Override // su2.c
        public final boolean c(su2<?> su2Var, f fVar, f fVar2) {
            return a.compareAndSwapObject(su2Var, b, fVar, fVar2);
        }

        @Override // su2.c
        public final boolean d(su2<?> su2Var, l lVar, l lVar2) {
            return a.compareAndSwapObject(su2Var, c, lVar, lVar2);
        }

        @Override // su2.c
        public final boolean e(su2<?> su2Var, Object obj, Object obj2) {
            return a.compareAndSwapObject(su2Var, d, obj, obj2);
        }
    }

    public static final class l {
        public static final l c = new l(false);
        public volatile Thread a;
        public volatile l b;

        public l(boolean z) {
        }

        public l() {
            su2.j.b(this, Thread.currentThread());
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        c gVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        h = z;
        i = Logger.getLogger(su2.class.getName());
        try {
            gVar = new k(null);
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            try {
                th2 = th3;
                gVar = new e(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(su2.class, l.class, "g"), AtomicReferenceFieldUpdater.newUpdater(su2.class, f.class, "f"), AtomicReferenceFieldUpdater.newUpdater(su2.class, Object.class, "e"));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                th2 = th3;
                gVar = new g(null);
            }
        }
        j = gVar;
        if (th != null) {
            Logger logger = i;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        k = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object c(aw2<?> aw2Var) {
        Throwable thA;
        if (aw2Var instanceof j) {
            Object obj = ((su2) aw2Var).e;
            if (!(obj instanceof b)) {
                return obj;
            }
            b bVar = (b) obj;
            return bVar.a ? bVar.b != null ? new b(false, bVar.b) : b.d : obj;
        }
        if ((aw2Var instanceof qw2) && (thA = ((qw2) aw2Var).a()) != null) {
            return new d(thA);
        }
        boolean zIsCancelled = aw2Var.isCancelled();
        if ((!h) && zIsCancelled) {
            return b.d;
        }
        try {
            Object objD = d(aw2Var);
            if (!zIsCancelled) {
                return objD == null ? k : objD;
            }
            String strValueOf = String.valueOf(aw2Var);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(strValueOf);
            return new b(false, new IllegalArgumentException(sb.toString()));
        } catch (CancellationException e2) {
            if (zIsCancelled) {
                return new b(false, e2);
            }
            String strValueOf2 = String.valueOf(aw2Var);
            return new d(new IllegalArgumentException(jo.O(strValueOf2.length() + 77, "get() threw CancellationException, despite reporting isCancelled() == false: ", strValueOf2), e2));
        } catch (ExecutionException e3) {
            if (!zIsCancelled) {
                return new d(e3.getCause());
            }
            String strValueOf3 = String.valueOf(aw2Var);
            return new b(false, new IllegalArgumentException(jo.O(strValueOf3.length() + 84, "get() did not throw CancellationException, despite reporting isCancelled() == true: ", strValueOf3), e3));
        } catch (Throwable th) {
            return new d(th);
        }
    }

    public static <V> V d(Future<V> future) throws ExecutionException {
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

    public static void q(su2<?> su2Var) {
        f fVar;
        f fVar2;
        f fVar3 = null;
        while (true) {
            l lVar = ((su2) su2Var).g;
            if (j.d(su2Var, lVar, l.c)) {
                while (lVar != null) {
                    Thread thread = lVar.a;
                    if (thread != null) {
                        lVar.a = null;
                        LockSupport.unpark(thread);
                    }
                    lVar = lVar.b;
                }
                su2Var.b();
                do {
                    fVar = ((su2) su2Var).f;
                } while (!j.c(su2Var, fVar, f.d));
                while (true) {
                    fVar2 = fVar3;
                    fVar3 = fVar;
                    if (fVar3 == null) {
                        break;
                    }
                    fVar = fVar3.c;
                    fVar3.c = fVar2;
                }
                while (fVar2 != null) {
                    fVar3 = fVar2.c;
                    Runnable runnable = fVar2.a;
                    if (runnable instanceof h) {
                        h hVar = (h) runnable;
                        su2Var = hVar.e;
                        if (((su2) su2Var).e == hVar) {
                            if (!j.e(su2Var, hVar, c(hVar.f))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        r(runnable, fVar2.b);
                    }
                    fVar2 = fVar3;
                }
                return;
            }
        }
    }

    public static void r(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = i;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", jo.d(strValueOf2.length() + strValueOf.length() + 57, "RuntimeException while executing runnable ", strValueOf, " with executor ", strValueOf2), (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static V t(Object obj) throws ExecutionException {
        if (obj instanceof b) {
            Throwable th = ((b) obj).b;
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

    @Override // defpackage.qw2
    public final Throwable a() {
        if (!(this instanceof j)) {
            return null;
        }
        Object obj = this.e;
        if (obj instanceof d) {
            return ((d) obj).a;
        }
        return null;
    }

    public void b() {
    }

    public boolean cancel(boolean z) {
        Object obj = this.e;
        if (!(obj == null) && !(obj instanceof h)) {
            return false;
        }
        b bVar = h ? new b(z, new CancellationException("Future.cancel() was called.")) : z ? b.c : b.d;
        boolean z2 = false;
        su2<V> su2Var = this;
        while (true) {
            if (j.e(su2Var, obj, bVar)) {
                if (z) {
                    su2Var.e();
                }
                q(su2Var);
                if (!(obj instanceof h)) {
                    return true;
                }
                aw2<? extends V> aw2Var = ((h) obj).f;
                if (!(aw2Var instanceof j)) {
                    aw2Var.cancel(z);
                    return true;
                }
                su2Var = (su2) aw2Var;
                obj = su2Var.e;
                if (!(obj == null) && !(obj instanceof h)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = su2Var.e;
                if (!(obj instanceof h)) {
                    return z2;
                }
            }
        }
    }

    public void e() {
    }

    public final void f(Future<?> future) {
        if ((future != null) && (this.e instanceof b)) {
            future.cancel(l());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String g() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }

    public V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.e;
        if ((obj != null) && (!(obj instanceof h))) {
            return (V) t(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            l lVar = this.g;
            if (lVar != l.c) {
                l lVar2 = new l();
                do {
                    c cVar = j;
                    cVar.a(lVar2, lVar);
                    if (cVar.d(this, lVar, lVar2)) {
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                p(lVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.e;
                            if ((obj2 != null) && (!(obj2 instanceof h))) {
                                return (V) t(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        p(lVar2);
                    } else {
                        lVar = this.g;
                    }
                } while (lVar != l.c);
            }
            return (V) t(this.e);
        }
        while (nanos > 0) {
            Object obj3 = this.e;
            if ((obj3 != null) && (!(obj3 instanceof h))) {
                return (V) t(obj3);
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
        String lowerCase2 = timeUnit.toString().toLowerCase(locale);
        StringBuilder sb = new StringBuilder(jo.x(lowerCase2, 28));
        sb.append("Waited ");
        sb.append(j2);
        sb.append(StringUtils.SPACE);
        sb.append(lowerCase2);
        String string3 = sb.toString();
        if (nanos + 1000 < 0) {
            String strConcat = String.valueOf(string3).concat(" (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strValueOf = String.valueOf(strConcat);
                StringBuilder sb2 = new StringBuilder(jo.x(lowerCase, strValueOf.length() + 21));
                sb2.append(strValueOf);
                sb2.append(jConvert);
                sb2.append(StringUtils.SPACE);
                sb2.append(lowerCase);
                String string4 = sb2.toString();
                if (z) {
                    string4 = String.valueOf(string4).concat(",");
                }
                strConcat = String.valueOf(string4).concat(StringUtils.SPACE);
            }
            if (z) {
                String strValueOf2 = String.valueOf(strConcat);
                StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 33);
                sb3.append(strValueOf2);
                sb3.append(nanos2);
                sb3.append(" nanoseconds ");
                strConcat = sb3.toString();
            }
            string3 = String.valueOf(strConcat).concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(String.valueOf(string3).concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(jo.c(jo.x(string, jo.x(string3, 5)), string3, " for ", string));
    }

    public boolean h(V v) {
        if (v == null) {
            v = (V) k;
        }
        if (!j.e(this, null, v)) {
            return false;
        }
        q(this);
        return true;
    }

    public void i(Runnable runnable, Executor executor) {
        f fVar;
        c50.y(runnable, "Runnable was null.");
        c50.y(executor, "Executor was null.");
        if (!isDone() && (fVar = this.f) != f.d) {
            f fVar2 = new f(runnable, executor);
            do {
                fVar2.c = fVar;
                if (j.c(this, fVar, fVar2)) {
                    return;
                } else {
                    fVar = this.f;
                }
            } while (fVar != f.d);
        }
        r(runnable, executor);
    }

    public boolean isCancelled() {
        return this.e instanceof b;
    }

    public boolean isDone() {
        return (!(r0 instanceof h)) & (this.e != null);
    }

    public boolean j(Throwable th) {
        Objects.requireNonNull(th);
        if (!j.e(this, null, new d(th))) {
            return false;
        }
        q(this);
        return true;
    }

    public final boolean k(aw2<? extends V> aw2Var) {
        d dVar;
        Objects.requireNonNull(aw2Var);
        Object obj = this.e;
        if (obj == null) {
            if (aw2Var.isDone()) {
                if (!j.e(this, null, c(aw2Var))) {
                    return false;
                }
                q(this);
                return true;
            }
            h hVar = new h(this, aw2Var);
            if (j.e(this, null, hVar)) {
                try {
                    aw2Var.i(hVar, lv2.INSTANCE);
                } catch (Throwable th) {
                    try {
                        dVar = new d(th);
                    } catch (Throwable unused) {
                        dVar = d.b;
                    }
                    j.e(this, hVar, dVar);
                }
                return true;
            }
            obj = this.e;
        }
        if (obj instanceof b) {
            aw2Var.cancel(((b) obj).a);
        }
        return false;
    }

    public final boolean l() {
        Object obj = this.e;
        return (obj instanceof b) && ((b) obj).a;
    }

    public final void p(l lVar) {
        lVar.a = null;
        while (true) {
            l lVar2 = this.g;
            if (lVar2 == l.c) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.b;
                if (lVar2.a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.b = lVar4;
                    if (lVar3.a == null) {
                        break;
                    }
                } else if (j.d(this, lVar2, lVar4)) {
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    public final void s(StringBuilder sb) {
        try {
            Object objD = d(this);
            sb.append("SUCCESS, result=[");
            if (objD == null) {
                sb.append("null");
            } else if (objD == this) {
                sb.append("this future");
            } else {
                sb.append(objD.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objD)));
            }
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

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.String r2 = "com.google.common.util.concurrent."
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L21
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            goto L2c
        L21:
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
        L2c:
            r1 = 64
            r0.append(r1)
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            java.lang.String r1 = "[status="
            r0.append(r1)
            boolean r1 = r6.isCancelled()
            java.lang.String r2 = "]"
            if (r1 == 0) goto L50
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto Ld4
        L50:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L5b
            r6.s(r0)
            goto Ld4
        L5b:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.Object r3 = r6.e
            boolean r4 = r3 instanceof su2.h
            java.lang.String r5 = "Exception thrown from implementation: "
            if (r4 == 0) goto L92
            java.lang.String r4 = ", setFuture=["
            r0.append(r4)
            su2$h r3 = (su2.h) r3
            aw2<? extends V> r3 = r3.f
            if (r3 != r6) goto L7d
            java.lang.String r3 = "this future"
            r0.append(r3)     // Catch: java.lang.StackOverflowError -> L81 java.lang.RuntimeException -> L83
            goto L8e
        L7d:
            r0.append(r3)     // Catch: java.lang.StackOverflowError -> L81 java.lang.RuntimeException -> L83
            goto L8e
        L81:
            r3 = move-exception
            goto L84
        L83:
            r3 = move-exception
        L84:
            r0.append(r5)
            java.lang.Class r3 = r3.getClass()
            r0.append(r3)
        L8e:
            r0.append(r2)
            goto Lc4
        L92:
            java.lang.String r3 = r6.g()     // Catch: java.lang.StackOverflowError -> La8 java.lang.RuntimeException -> Laa
            int r4 = defpackage.at2.a     // Catch: java.lang.StackOverflowError -> La8 java.lang.RuntimeException -> Laa
            if (r3 == 0) goto La3
            boolean r4 = r3.isEmpty()     // Catch: java.lang.StackOverflowError -> La8 java.lang.RuntimeException -> Laa
            if (r4 == 0) goto La1
            goto La3
        La1:
            r4 = 0
            goto La4
        La3:
            r4 = 1
        La4:
            if (r4 == 0) goto Lbd
            r3 = 0
            goto Lbd
        La8:
            r3 = move-exception
            goto Lab
        Laa:
            r3 = move-exception
        Lab:
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r4 = r3.length()
            int r4 = r4 + 38
            java.lang.String r3 = defpackage.jo.O(r4, r5, r3)
        Lbd:
            if (r3 == 0) goto Lc4
            java.lang.String r4 = ", info=["
            defpackage.jo.H(r0, r4, r3, r2)
        Lc4:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto Ld4
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.s(r0)
        Ld4:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.su2.toString():java.lang.String");
    }

    public V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.e;
            if ((obj2 != null) & (!(obj2 instanceof h))) {
                return (V) t(obj2);
            }
            l lVar = this.g;
            if (lVar != l.c) {
                l lVar2 = new l();
                do {
                    c cVar = j;
                    cVar.a(lVar2, lVar);
                    if (cVar.d(this, lVar, lVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.e;
                            } else {
                                p(lVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof h))));
                        return (V) t(obj);
                    }
                    lVar = this.g;
                } while (lVar != l.c);
            }
            return (V) t(this.e);
        }
        throw new InterruptedException();
    }
}
