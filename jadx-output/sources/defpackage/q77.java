package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.b57;
import defpackage.c47;
import defpackage.c87;
import defpackage.d97;
import defpackage.e67;
import defpackage.l47;
import defpackage.l67;
import defpackage.m57;
import defpackage.n57;
import defpackage.q57;
import defpackage.r87;
import defpackage.t57;
import defpackage.w37;
import defpackage.z27;
import java.lang.Thread;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
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
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import m57.b;
import q87.c;

/* loaded from: classes2.dex */
public final class q77 extends f47 implements x37<Object> {
    public static final Logger c0 = Logger.getLogger(q77.class.getName());
    public static final Pattern d0 = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");
    public static final x47 e0;
    public static final x47 f0;
    public static final x47 g0;
    public static final t h0;
    public boolean A;
    public final Set<d77> B;
    public final Set<i87> C;
    public final h67 D;
    public final v E;
    public final AtomicBoolean F;
    public boolean G;
    public volatile boolean H;
    public volatile boolean I;
    public final CountDownLatch J;
    public final q57.a K;
    public final q57 L;
    public final s57 M;
    public final z27 N;
    public final v37 O;
    public q P;
    public t Q;
    public boolean R;
    public final boolean S;
    public final r87.q T;
    public final long U;
    public final long V;
    public final c87.a W;
    public final b77<Object> X;
    public b57.c Y;
    public n57 Z;
    public final y37 a;
    public final t57.c a0;
    public final String b;
    public final q87 b0;
    public final l47.c c;
    public final l47.a d;
    public final m57 e;
    public final b67 f;
    public final r g;
    public final Executor h;
    public final h87<? extends Executor> i;
    public final h87<? extends Executor> j;
    public final k k;
    public final k l;
    public final d97 m;
    public final b57 n;
    public final o37 o;
    public final h37 p;
    public final qd5<pd5> q;
    public final long r;
    public final e67 s;
    public final v87 t;
    public final n57.a u;
    public final y27 v;
    public l47 w;
    public boolean x;
    public n y;
    public volatile c47.i z;

    public class a implements Thread.UncaughtExceptionHandler {
        public a() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            Logger logger = q77.c0;
            Level level = Level.SEVERE;
            StringBuilder sbZ = jo.z("[");
            sbZ.append(q77.this.a);
            sbZ.append("] Uncaught exception in the SynchronizationContext. Panic!");
            logger.log(level, sbZ.toString(), th);
            q77 q77Var = q77.this;
            if (q77Var.A) {
                return;
            }
            q77Var.A = true;
            q77Var.r(true);
            q77Var.w(false);
            s77 s77Var = new s77(q77Var, th);
            q77Var.z = s77Var;
            q77Var.D.i(s77Var);
            q77Var.N.a(z27.a.ERROR, "PANIC! Entering TRANSIENT_FAILURE");
            q77Var.s.a(i37.TRANSIENT_FAILURE);
        }
    }

    public final class b implements q57.a {
        public final /* synthetic */ d97 a;

        public b(q77 q77Var, d97 d97Var) {
            this.a = d97Var;
        }

        @Override // q57.a
        public q57 a() {
            return new q57(this.a);
        }
    }

    public final class c implements Runnable {
        public final /* synthetic */ Runnable e;
        public final /* synthetic */ i37 f;

        public c(Runnable runnable, i37 i37Var) {
            this.e = runnable;
            this.f = i37Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            q77 q77Var = q77.this;
            e67 e67Var = q77Var.s;
            Runnable runnable = this.e;
            Executor executor = q77Var.h;
            i37 i37Var = this.f;
            Objects.requireNonNull(e67Var);
            c50.A(runnable, "callback");
            c50.A(executor, "executor");
            c50.A(i37Var, "source");
            e67.a aVar = new e67.a(runnable, executor);
            if (e67Var.b != i37Var) {
                aVar.b.execute(aVar.a);
            } else {
                e67Var.a.add(aVar);
            }
        }
    }

    public final class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q77.this.F.get()) {
                return;
            }
            q77 q77Var = q77.this;
            if (q77Var.y == null) {
                return;
            }
            q77Var.r(false);
            q77.q(q77.this);
        }
    }

    public final class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q77.this.s();
            if (q77.this.z != null) {
                Objects.requireNonNull(q77.this.z);
            }
            n nVar = q77.this.y;
            if (nVar != null) {
                nVar.a.b.c();
            }
        }
    }

    public final class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (q77.this.F.get()) {
                return;
            }
            q77 q77Var = q77.this;
            b57.c cVar = q77Var.Y;
            if (cVar != null) {
                b57.b bVar = cVar.a;
                if ((bVar.g || bVar.f) ? false : true) {
                    c50.G(q77Var.x, "name resolver must be started");
                    q77.this.u();
                }
            }
            for (d77 d77Var : q77.this.B) {
                b57 b57Var = d77Var.k;
                f77 f77Var = new f77(d77Var);
                Queue<Runnable> queue = b57Var.f;
                c50.A(f77Var, "runnable is null");
                queue.add(f77Var);
                b57Var.a();
            }
            Iterator<i87> it = q77.this.C.iterator();
            if (it.hasNext()) {
                Objects.requireNonNull(it.next());
                throw null;
            }
        }
    }

    public class g implements Executor {
        public g() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            Executor executor;
            k kVar = q77.this.l;
            synchronized (kVar) {
                if (kVar.b == null) {
                    Executor executorA = kVar.a.a();
                    c50.z(executorA, "%s.getObject()", kVar.b);
                    kVar.b = executorA;
                }
                executor = kVar.b;
            }
            executor.execute(runnable);
        }
    }

    public final class h implements t57.c {

        public final class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                q77.this.s();
            }
        }

        public h(a aVar) {
        }

        public a67 a(c47.f fVar) {
            c47.i iVar = q77.this.z;
            if (q77.this.F.get()) {
                return q77.this.D;
            }
            if (iVar != null) {
                a67 a67VarE = u67.e(iVar.a(fVar), ((l87) fVar).a.b());
                return a67VarE != null ? a67VarE : q77.this.D;
            }
            b57 b57Var = q77.this.n;
            a aVar = new a();
            Queue<Runnable> queue = b57Var.f;
            c50.A(aVar, "runnable is null");
            queue.add(aVar);
            b57Var.a();
            return q77.this.D;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q77 q77Var = q77.this;
            q77Var.Y = null;
            q77Var.n.d();
            if (q77Var.x) {
                q77Var.w.b();
            }
        }
    }

    public final class j implements c87.a {
        public j(a aVar) {
        }

        @Override // c87.a
        public void a(x47 x47Var) {
            c50.G(q77.this.F.get(), "Channel must have been shut down");
        }

        @Override // c87.a
        public void b() {
        }

        @Override // c87.a
        public void c() {
            c50.G(q77.this.F.get(), "Channel must have been shut down");
            q77.this.H = true;
            q77.this.w(false);
            q77.n(q77.this);
            q77.p(q77.this);
        }

        @Override // c87.a
        public void d(boolean z) {
            q77 q77Var = q77.this;
            q77Var.X.c(q77Var.D, z);
        }
    }

    public static final class k {
        public final h87<? extends Executor> a;
        public Executor b;

        public k(h87<? extends Executor> h87Var) {
            c50.A(h87Var, "executorPool");
            this.a = h87Var;
        }

        public synchronized void a() {
            Executor executor = this.b;
            if (executor != null) {
                this.b = this.a.b(executor);
            }
        }
    }

    public final class l extends b77<Object> {
        public l(a aVar) {
        }

        @Override // defpackage.b77
        public void a() {
            q77.this.s();
        }

        @Override // defpackage.b77
        public void b() {
            if (q77.this.F.get()) {
                return;
            }
            q77.this.v();
        }
    }

    public class m implements Runnable {
        public m(a aVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            q77.q(q77.this);
        }
    }

    public class n extends c47.d {
        public m57.b a;

        public final class a implements Runnable {
            public final /* synthetic */ c47.i e;
            public final /* synthetic */ i37 f;

            public a(c47.i iVar, i37 i37Var) {
                this.e = iVar;
                this.f = i37Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                n nVar = n.this;
                q77 q77Var = q77.this;
                if (nVar != q77Var.y) {
                    return;
                }
                c47.i iVar = this.e;
                q77Var.z = iVar;
                q77Var.D.i(iVar);
                i37 i37Var = this.f;
                if (i37Var != i37.SHUTDOWN) {
                    q77.this.N.b(z27.a.INFO, "Entering {0} state with picker: {1}", i37Var, this.e);
                    q77.this.s.a(this.f);
                }
            }
        }

        public n(a aVar) {
        }

        @Override // c47.d
        public c47.h a(c47.b bVar) {
            q77.this.n.d();
            c50.G(!q77.this.I, "Channel is terminated");
            return q77.this.new u(bVar, this);
        }

        @Override // c47.d
        public z27 b() {
            return q77.this.N;
        }

        @Override // c47.d
        public b57 c() {
            return q77.this.n;
        }

        @Override // c47.d
        public void d(i37 i37Var, c47.i iVar) {
            c50.A(i37Var, "newState");
            c50.A(iVar, "newPicker");
            q77.o(q77.this, "updateBalancingState()");
            b57 b57Var = q77.this.n;
            a aVar = new a(iVar, i37Var);
            Queue<Runnable> queue = b57Var.f;
            c50.A(aVar, "runnable is null");
            queue.add(aVar);
            b57Var.a();
        }
    }

    public final class o extends l47.e {
        public final n a;
        public final l47 b;

        public final class a implements Runnable {
            public final /* synthetic */ x47 e;

            public a(x47 x47Var) {
                this.e = x47Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                o.c(o.this, this.e);
            }
        }

        public final class b implements Runnable {
            public final /* synthetic */ l47.f e;

            public b(l47.f fVar) {
                this.e = fVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:60:0x01c1  */
            /* JADX WARN: Removed duplicated region for block: B:63:0x020a  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x0231  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x0254  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 683
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: q77.o.b.run():void");
            }
        }

        public o(n nVar, l47 l47Var) {
            c50.A(nVar, "helperImpl");
            this.a = nVar;
            c50.A(l47Var, "resolver");
            this.b = l47Var;
        }

        public static void c(o oVar, x47 x47Var) {
            Objects.requireNonNull(oVar);
            q77.c0.log(Level.WARNING, "[{0}] Failed to resolve name. status={1}", new Object[]{q77.this.a, x47Var});
            q77 q77Var = q77.this;
            q qVar = q77Var.P;
            q qVar2 = q.ERROR;
            if (qVar != qVar2) {
                q77Var.N.b(z27.a.WARNING, "Failed to resolve name: {0}", x47Var);
                q77.this.P = qVar2;
            }
            n nVar = oVar.a;
            if (nVar != q77.this.y) {
                return;
            }
            nVar.a.b.a(x47Var);
            oVar.d();
        }

        @Override // l47.e
        public void a(x47 x47Var) {
            c50.t(!x47Var.f(), "the error status must not be OK");
            b57 b57Var = q77.this.n;
            a aVar = new a(x47Var);
            Queue<Runnable> queue = b57Var.f;
            c50.A(aVar, "runnable is null");
            queue.add(aVar);
            b57Var.a();
        }

        @Override // l47.e
        public void b(l47.f fVar) {
            b57 b57Var = q77.this.n;
            b bVar = new b(fVar);
            Queue<Runnable> queue = b57Var.f;
            c50.A(bVar, "runnable is null");
            queue.add(bVar);
            b57Var.a();
        }

        public final void d() {
            q77 q77Var = q77.this;
            b57.c cVar = q77Var.Y;
            if (cVar != null) {
                b57.b bVar = cVar.a;
                if ((bVar.g || bVar.f) ? false : true) {
                    return;
                }
            }
            if (q77Var.Z == null) {
                Objects.requireNonNull((l67.a) q77Var.u);
                q77Var.Z = new l67();
            }
            long jA = ((l67) q77.this.Z).a();
            q77.this.N.b(z27.a.DEBUG, "Scheduling DNS resolution backoff for {0} ns", Long.valueOf(jA));
            q77 q77Var2 = q77.this;
            q77Var2.Y = q77Var2.n.c(q77Var2.new i(), jA, TimeUnit.NANOSECONDS, q77Var2.f.x0());
        }
    }

    public class p extends y27 {
        public final String a;

        public p(String str, a aVar) {
            c50.A(str, "authority");
            this.a = str;
        }

        @Override // defpackage.y27
        public String a() {
            return this.a;
        }

        @Override // defpackage.y27
        public <ReqT, RespT> a37<ReqT, RespT> h(j47<ReqT, RespT> j47Var, x27 x27Var) {
            q77 q77Var = q77.this;
            Objects.requireNonNull(q77Var);
            Executor executor = x27Var.b;
            Executor executor2 = executor == null ? q77Var.h : executor;
            q77 q77Var2 = q77.this;
            t57 t57Var = new t57(j47Var, executor2, x27Var, q77Var2.a0, q77Var2.I ? null : q77.this.f.x0(), q77.this.L, false);
            Objects.requireNonNull(q77.this);
            t57Var.p = false;
            q77 q77Var3 = q77.this;
            t57Var.q = q77Var3.o;
            t57Var.r = q77Var3.p;
            return t57Var;
        }
    }

    public enum q {
        NO_RESOLUTION,
        SUCCESS,
        ERROR
    }

    public static final class r implements ScheduledExecutorService {
        public final ScheduledExecutorService e;

        public r(ScheduledExecutorService scheduledExecutorService, a aVar) {
            c50.A(scheduledExecutorService, "delegate");
            this.e = scheduledExecutorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.e.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.e.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            return this.e.invokeAll(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
            return (T) this.e.invokeAny(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.e.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.e.isTerminated();
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            return this.e.schedule(callable, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.e.scheduleAtFixedRate(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.e.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            throw new UnsupportedOperationException("Restricted: shutdown() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            throw new UnsupportedOperationException("Restricted: shutdownNow() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            return this.e.submit(callable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
            return this.e.invokeAll(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (T) this.e.invokeAny(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.e.schedule(runnable, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            return this.e.submit(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t) {
            return this.e.submit(runnable, t);
        }
    }

    public static final class s extends l47.g {
        public final int a;
        public final int b;
        public final m57 c;
        public final z27 d;

        public s(boolean z, int i, int i2, m57 m57Var, z27 z27Var) {
            this.a = i;
            this.b = i2;
            c50.A(m57Var, "autoLoadBalancerFactory");
            this.c = m57Var;
            c50.A(z27Var, "channelLogger");
            this.d = z27Var;
        }

        @Override // l47.g
        public l47.b a(Map<String, ?> map) {
            Object obj;
            try {
                l47.b bVarB = this.c.b(map, this.d);
                if (bVarB == null) {
                    obj = null;
                } else {
                    x47 x47Var = bVarB.a;
                    if (x47Var != null) {
                        return new l47.b(x47Var);
                    }
                    obj = bVarB.b;
                }
                return new l47.b(b87.a(map, false, this.a, this.b, obj));
            } catch (RuntimeException e) {
                return new l47.b(x47.h.h("failed to parse service config").g(e));
            }
        }
    }

    public static final class t {
        public Map<String, ?> a;
        public b87 b;

        public t(Map<String, ?> map, b87 b87Var) {
            c50.A(map, "rawServiceConfig");
            this.a = map;
            c50.A(b87Var, "managedChannelServiceConfig");
            this.b = b87Var;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || t.class != obj.getClass()) {
                return false;
            }
            t tVar = (t) obj;
            return c50.T(this.a, tVar.a) && c50.T(this.b, tVar.b);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b});
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("rawServiceConfig", this.a);
            nd5VarK0.d("managedChannelServiceConfig", this.b);
            return nd5VarK0.toString();
        }
    }

    public final class u extends i57 {
        public final c47.b a;
        public final y37 b;
        public final r57 c;
        public final s57 d;
        public d77 e;
        public boolean f;
        public boolean g;
        public b57.c h;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b57.c cVar;
                u uVar = u.this;
                q77.this.n.d();
                if (uVar.e == null) {
                    uVar.g = true;
                    return;
                }
                if (!uVar.g) {
                    uVar.g = true;
                } else {
                    if (!q77.this.H || (cVar = uVar.h) == null) {
                        return;
                    }
                    cVar.a();
                    uVar.h = null;
                }
                if (q77.this.H) {
                    uVar.e.b(q77.f0);
                } else {
                    uVar.h = q77.this.n.c(new o77(new y77(uVar)), 5L, TimeUnit.SECONDS, q77.this.f.x0());
                }
            }
        }

        public u(c47.b bVar, n nVar) {
            c50.A(bVar, "args");
            this.a = bVar;
            c50.A(nVar, "helper");
            y37 y37VarB = y37.b("Subchannel", q77.this.a());
            this.b = y37VarB;
            long jA = q77.this.m.a();
            StringBuilder sbZ = jo.z("Subchannel for ");
            sbZ.append(bVar.a);
            s57 s57Var = new s57(y37VarB, 0, jA, sbZ.toString());
            this.d = s57Var;
            this.c = new r57(s57Var, q77.this.m);
        }

        @Override // c47.h
        public List<q37> a() {
            q77.o(q77.this, "Subchannel.getAllAddresses()");
            c50.G(this.f, "not started");
            return this.e.m;
        }

        @Override // c47.h
        public v27 b() {
            return this.a.b;
        }

        @Override // c47.h
        public Object c() {
            c50.G(this.f, "Subchannel is not started");
            return this.e;
        }

        @Override // c47.h
        public void d() {
            q77.o(q77.this, "Subchannel.requestConnection()");
            c50.G(this.f, "not started");
            this.e.a();
        }

        @Override // c47.h
        public void e() {
            q77.o(q77.this, "Subchannel.shutdown()");
            b57 b57Var = q77.this.n;
            a aVar = new a();
            Queue<Runnable> queue = b57Var.f;
            c50.A(aVar, "runnable is null");
            queue.add(aVar);
            b57Var.a();
        }

        @Override // c47.h
        public void f(c47.j jVar) {
            q77.this.n.d();
            c50.G(!this.f, "already started");
            c50.G(!this.g, "already shutdown");
            this.f = true;
            if (q77.this.H) {
                b57 b57Var = q77.this.n;
                w77 w77Var = new w77(this, jVar);
                Queue<Runnable> queue = b57Var.f;
                c50.A(w77Var, "runnable is null");
                queue.add(w77Var);
                b57Var.a();
                return;
            }
            List<q37> list = this.a.a;
            String strA = q77.this.a();
            q77 q77Var = q77.this;
            Objects.requireNonNull(q77Var);
            n57.a aVar = q77Var.u;
            b67 b67Var = q77Var.f;
            ScheduledExecutorService scheduledExecutorServiceX0 = b67Var.x0();
            q77 q77Var2 = q77.this;
            d77 d77Var = new d77(list, strA, null, aVar, b67Var, scheduledExecutorServiceX0, q77Var2.q, q77Var2.n, new x77(this, jVar), q77Var2.O, q77Var2.K.a(), this.d, this.b, this.c);
            q77 q77Var3 = q77.this;
            s57 s57Var = q77Var3.M;
            w37.a aVar2 = w37.a.CT_INFO;
            Long lValueOf = Long.valueOf(q77Var3.m.a());
            c50.A("Child Subchannel started", NSRSS20.DESCR);
            c50.A(aVar2, "severity");
            c50.A(lValueOf, "timestampNanos");
            c50.G(true, "at least one of channelRef and subchannelRef must be null");
            s57Var.b(new w37("Child Subchannel started", aVar2, lValueOf.longValue(), null, d77Var, null));
            this.e = d77Var;
            b57 b57Var2 = q77.this.n;
            z77 z77Var = new z77(this, d77Var);
            Queue<Runnable> queue2 = b57Var2.f;
            c50.A(z77Var, "runnable is null");
            queue2.add(z77Var);
            b57Var2.a();
        }

        @Override // c47.h
        public void g(List<q37> list) {
            q77.this.n.d();
            d77 d77Var = this.e;
            Objects.requireNonNull(d77Var);
            c50.A(list, "newAddressGroups");
            Iterator<q37> it = list.iterator();
            while (it.hasNext()) {
                c50.A(it.next(), "newAddressGroups contains null entry");
            }
            c50.t(!list.isEmpty(), "newAddressGroups is empty");
            b57 b57Var = d77Var.k;
            g77 g77Var = new g77(d77Var, list);
            Queue<Runnable> queue = b57Var.f;
            c50.A(g77Var, "runnable is null");
            queue.add(g77Var);
            b57Var.a();
        }

        public String toString() {
            return this.b.toString();
        }
    }

    public final class v {
        public final Object a = new Object();
        public Collection<y57> b = new HashSet();
        public x47 c;

        public v(a aVar) {
        }

        public void a(x47 x47Var) {
            synchronized (this.a) {
                if (this.c != null) {
                    return;
                }
                this.c = x47Var;
                boolean zIsEmpty = this.b.isEmpty();
                if (zIsEmpty) {
                    q77.this.D.b(x47Var);
                }
            }
        }
    }

    static {
        x47 x47Var = x47.n;
        e0 = x47Var.h("Channel shutdownNow invoked");
        f0 = x47Var.h("Channel shutdown invoked");
        g0 = x47Var.h("Subchannel shutdown invoked");
        h0 = new t(Collections.emptyMap(), new b87(new HashMap(), new HashMap(), null, null));
    }

    public q77(f57<?> f57Var, b67 b67Var, n57.a aVar, h87<? extends Executor> h87Var, qd5<pd5> qd5Var, List<b37> list, d97 d97Var) {
        b57 b57Var = new b57(new a());
        this.n = b57Var;
        this.s = new e67();
        this.B = new HashSet(16, 0.75f);
        this.C = new HashSet(1, 0.75f);
        this.E = new v(null);
        this.F = new AtomicBoolean(false);
        this.J = new CountDownLatch(1);
        this.P = q.NO_RESOLUTION;
        this.Q = h0;
        this.R = false;
        this.T = new r87.q();
        j jVar = new j(null);
        this.W = jVar;
        this.X = new l(null);
        this.a0 = new h(null);
        String str = f57Var.f;
        c50.A(str, "target");
        this.b = str;
        y37 y37VarB = y37.b("Channel", str);
        this.a = y37VarB;
        c50.A(d97Var, "timeProvider");
        this.m = d97Var;
        h87<? extends Executor> h87Var2 = f57Var.a;
        c50.A(h87Var2, "executorPool");
        this.i = h87Var2;
        Executor executorA = h87Var2.a();
        c50.A(executorA, "executor");
        Executor executor = executorA;
        this.h = executor;
        p57 p57Var = new p57(b67Var, executor);
        this.f = p57Var;
        r rVar = new r(p57Var.x0(), null);
        this.g = rVar;
        s57 s57Var = new s57(y37VarB, 0, ((d97.a) d97Var).a(), jo.o("Channel for '", str, "'"));
        this.M = s57Var;
        r57 r57Var = new r57(s57Var, d97Var);
        this.N = r57Var;
        l47.c cVar = f57Var.e;
        this.c = cVar;
        t47 t47Var = u67.k;
        m57 m57Var = new m57(f57Var.g);
        this.e = m57Var;
        h87<? extends Executor> h87Var3 = f57Var.b;
        c50.A(h87Var3, "offloadExecutorPool");
        this.l = new k(h87Var3);
        s sVar = new s(false, f57Var.k, f57Var.l, m57Var, r57Var);
        Integer numValueOf = Integer.valueOf(f57Var.e());
        Objects.requireNonNull(t47Var);
        l47.a aVar2 = new l47.a(numValueOf, t47Var, b57Var, sVar, rVar, r57Var, new g(), null);
        this.d = aVar2;
        this.w = t(str, cVar, aVar2);
        c50.A(h87Var, "balancerRpcExecutorPool");
        this.j = h87Var;
        this.k = new k(h87Var);
        h67 h67Var = new h67(executor, b57Var);
        this.D = h67Var;
        h67Var.d(jVar);
        this.u = aVar;
        v87 v87Var = new v87(false);
        this.t = v87Var;
        boolean z = f57Var.q;
        this.S = z;
        this.v = d37.a(d37.a(new p(this.w.a(), null), Arrays.asList(v87Var)), list);
        c50.A(qd5Var, "stopwatchSupplier");
        this.q = qd5Var;
        long j2 = f57Var.j;
        if (j2 == -1) {
            this.r = j2;
        } else {
            c50.n(j2 >= f57.z, "invalid idleTimeoutMillis %s", j2);
            this.r = f57Var.j;
        }
        this.b0 = new q87(new m(null), b57Var, p57Var.x0(), qd5Var.get());
        o37 o37Var = f57Var.h;
        c50.A(o37Var, "decompressorRegistry");
        this.o = o37Var;
        h37 h37Var = f57Var.i;
        c50.A(h37Var, "compressorRegistry");
        this.p = h37Var;
        this.V = f57Var.m;
        this.U = f57Var.n;
        b bVar = new b(this, d97Var);
        this.K = bVar;
        this.L = bVar.a();
        v37 v37Var = f57Var.p;
        Objects.requireNonNull(v37Var);
        this.O = v37Var;
        v37.a(v37Var.a, this);
        if (z) {
            return;
        }
        this.R = true;
        v87Var.a.set(this.Q.b);
        v87Var.c = true;
    }

    public static void n(q77 q77Var) {
        if (q77Var.G) {
            for (d77 d77Var : q77Var.B) {
                x47 x47Var = e0;
                d77Var.b(x47Var);
                b57 b57Var = d77Var.k;
                j77 j77Var = new j77(d77Var, x47Var);
                Queue<Runnable> queue = b57Var.f;
                c50.A(j77Var, "runnable is null");
                queue.add(j77Var);
                b57Var.a();
            }
            Iterator<i87> it = q77Var.C.iterator();
            if (it.hasNext()) {
                Objects.requireNonNull(it.next());
                throw null;
            }
        }
    }

    public static void o(q77 q77Var, String str) {
        Objects.requireNonNull(q77Var);
        try {
            q77Var.n.d();
        } catch (IllegalStateException e2) {
            c0.log(Level.WARNING, str + " should be called from SynchronizationContext. This warning will become an exception in a future release. See https://github.com/grpc/grpc-java/issues/5015 for more details", (Throwable) e2);
        }
    }

    public static void p(q77 q77Var) {
        if (!q77Var.I && q77Var.F.get() && q77Var.B.isEmpty() && q77Var.C.isEmpty()) {
            q77Var.N.a(z27.a.INFO, "Terminated");
            v37.b(q77Var.O.a, q77Var);
            q77Var.i.b(q77Var.h);
            q77Var.k.a();
            q77Var.l.a();
            q77Var.f.close();
            q77Var.I = true;
            q77Var.J.countDown();
        }
    }

    public static void q(q77 q77Var) {
        q77Var.w(true);
        q77Var.D.i(null);
        q77Var.N.a(z27.a.INFO, "Entering IDLE state");
        q77Var.s.a(i37.IDLE);
        if (true ^ q77Var.X.a.isEmpty()) {
            q77Var.s();
        }
    }

    public static l47 t(String str, l47.c cVar, l47.a aVar) {
        URI uri;
        l47 l47VarB;
        StringBuilder sb = new StringBuilder();
        try {
            uri = new URI(str);
        } catch (URISyntaxException e2) {
            sb.append(e2.getMessage());
            uri = null;
        }
        if (uri != null && (l47VarB = cVar.b(uri, aVar)) != null) {
            return l47VarB;
        }
        String str2 = "";
        if (!d0.matcher(str).matches()) {
            try {
                l47 l47VarB2 = cVar.b(new URI(cVar.a(), "", "/" + str, null), aVar);
                if (l47VarB2 != null) {
                    return l47VarB2;
                }
            } catch (URISyntaxException e3) {
                throw new IllegalArgumentException(e3);
            }
        }
        Object[] objArr = new Object[2];
        objArr[0] = str;
        if (sb.length() > 0) {
            str2 = " (" + ((Object) sb) + ")";
        }
        objArr[1] = str2;
        throw new IllegalArgumentException(String.format("cannot find a NameResolver for %s%s", objArr));
    }

    @Override // defpackage.y27
    public String a() {
        return this.v.a();
    }

    @Override // defpackage.x37
    public y37 e() {
        return this.a;
    }

    @Override // defpackage.y27
    public <ReqT, RespT> a37<ReqT, RespT> h(j47<ReqT, RespT> j47Var, x27 x27Var) {
        return this.v.h(j47Var, x27Var);
    }

    @Override // defpackage.f47
    public void i() {
        b57 b57Var = this.n;
        d dVar = new d();
        Queue<Runnable> queue = b57Var.f;
        c50.A(dVar, "runnable is null");
        queue.add(dVar);
        b57Var.a();
    }

    @Override // defpackage.f47
    public i37 j(boolean z) {
        i37 i37Var = this.s.b;
        if (i37Var == null) {
            throw new UnsupportedOperationException("Channel state API is not implemented");
        }
        if (z && i37Var == i37.IDLE) {
            b57 b57Var = this.n;
            e eVar = new e();
            Queue<Runnable> queue = b57Var.f;
            c50.A(eVar, "runnable is null");
            queue.add(eVar);
            b57Var.a();
        }
        return i37Var;
    }

    @Override // defpackage.f47
    public void k(i37 i37Var, Runnable runnable) {
        b57 b57Var = this.n;
        c cVar = new c(runnable, i37Var);
        Queue<Runnable> queue = b57Var.f;
        c50.A(cVar, "runnable is null");
        queue.add(cVar);
        b57Var.a();
    }

    @Override // defpackage.f47
    public void l() {
        b57 b57Var = this.n;
        f fVar = new f();
        Queue<Runnable> queue = b57Var.f;
        c50.A(fVar, "runnable is null");
        queue.add(fVar);
        b57Var.a();
    }

    @Override // defpackage.f47
    public f47 m() {
        ArrayList arrayList;
        z27 z27Var = this.N;
        z27.a aVar = z27.a.DEBUG;
        z27Var.a(aVar, "shutdownNow() called");
        this.N.a(aVar, "shutdown() called");
        if (this.F.compareAndSet(false, true)) {
            b57 b57Var = this.n;
            t77 t77Var = new t77(this);
            Queue<Runnable> queue = b57Var.f;
            c50.A(t77Var, "runnable is null");
            queue.add(t77Var);
            this.E.a(f0);
            b57 b57Var2 = this.n;
            r77 r77Var = new r77(this);
            Queue<Runnable> queue2 = b57Var2.f;
            c50.A(r77Var, "runnable is null");
            queue2.add(r77Var);
            b57Var2.a();
        }
        v vVar = this.E;
        x47 x47Var = e0;
        vVar.a(x47Var);
        synchronized (vVar.a) {
            arrayList = new ArrayList(vVar.b);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((y57) it.next()).f(x47Var);
        }
        q77.this.D.c(x47Var);
        b57 b57Var3 = this.n;
        u77 u77Var = new u77(this);
        Queue<Runnable> queue3 = b57Var3.f;
        c50.A(u77Var, "runnable is null");
        queue3.add(u77Var);
        b57Var3.a();
        return this;
    }

    public final void r(boolean z) {
        ScheduledFuture<?> scheduledFuture;
        q87 q87Var = this.b0;
        q87Var.f = false;
        if (!z || (scheduledFuture = q87Var.g) == null) {
            return;
        }
        scheduledFuture.cancel(false);
        q87Var.g = null;
    }

    public void s() {
        this.n.d();
        if (this.F.get() || this.A) {
            return;
        }
        if (!this.X.a.isEmpty()) {
            r(false);
        } else {
            v();
        }
        if (this.y != null) {
            return;
        }
        this.N.a(z27.a.INFO, "Exiting idle mode");
        n nVar = new n(null);
        m57 m57Var = this.e;
        Objects.requireNonNull(m57Var);
        nVar.a = m57Var.new b(nVar);
        this.y = nVar;
        this.w.d(new o(nVar, this.w));
        this.x = true;
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.b("logId", this.a.c);
        nd5VarK0.d("target", this.b);
        return nd5VarK0.toString();
    }

    public final void u() {
        this.n.d();
        this.n.d();
        b57.c cVar = this.Y;
        if (cVar != null) {
            cVar.a();
            this.Y = null;
            this.Z = null;
        }
        this.n.d();
        if (this.x) {
            this.w.b();
        }
    }

    public final void v() {
        long j2 = this.r;
        if (j2 == -1) {
            return;
        }
        q87 q87Var = this.b0;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Objects.requireNonNull(q87Var);
        long nanos = timeUnit.toNanos(j2);
        pd5 pd5Var = q87Var.d;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        long jA = pd5Var.a(timeUnit2) + nanos;
        q87Var.f = true;
        if (jA - q87Var.e < 0 || q87Var.g == null) {
            ScheduledFuture<?> scheduledFuture = q87Var.g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            q87Var.g = q87Var.a.schedule(q87Var.new c(null), nanos, timeUnit2);
        }
        q87Var.e = jA;
    }

    public final void w(boolean z) {
        this.n.d();
        if (z) {
            c50.G(this.x, "nameResolver is not started");
            c50.G(this.y != null, "lbHelper is null");
        }
        if (this.w != null) {
            this.n.d();
            b57.c cVar = this.Y;
            if (cVar != null) {
                cVar.a();
                this.Y = null;
                this.Z = null;
            }
            this.w.c();
            this.x = false;
            if (z) {
                this.w = t(this.b, this.c, this.d);
            } else {
                this.w = null;
            }
        }
        n nVar = this.y;
        if (nVar != null) {
            m57.b bVar = nVar.a;
            bVar.b.d();
            bVar.b = null;
            this.y = null;
        }
        this.z = null;
    }
}
