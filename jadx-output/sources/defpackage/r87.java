package defpackage;

import defpackage.c97;
import defpackage.e37;
import defpackage.i47;
import defpackage.s87;
import defpackage.w67;
import defpackage.z57;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;

/* loaded from: classes2.dex */
public abstract class r87<ReqT> implements y57 {
    public static final i47.f<String> w;
    public static final i47.f<String> x;
    public static final x47 y;
    public static Random z;
    public final j47<ReqT, ?> a;
    public final Executor b;
    public final ScheduledExecutorService c;
    public final i47 d;
    public final s87.a e;
    public final w67.a f;
    public s87 g;
    public w67 h;
    public boolean i;
    public final q k;
    public final long l;
    public final long m;
    public final x n;
    public long r;
    public z57 s;
    public r t;
    public r u;
    public long v;
    public final Object j = new Object();
    public final c77 o = new c77();
    public volatile u p = new u(new ArrayList(8), Collections.emptyList(), null, null, false, false, false, 0);
    public final AtomicBoolean q = new AtomicBoolean();

    public class a extends e37.a {
        public final /* synthetic */ e37 a;

        public a(r87 r87Var, e37 e37Var) {
            this.a = e37Var;
        }

        @Override // e37.a
        public e37 a(e37.b bVar, i47 i47Var) {
            return this.a;
        }
    }

    public class b implements o {
        public final /* synthetic */ String a;

        public b(r87 r87Var, String str) {
            this.a = str;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.g(this.a);
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ Collection e;
        public final /* synthetic */ w f;
        public final /* synthetic */ Future g;
        public final /* synthetic */ Future h;

        public c(Collection collection, w wVar, Future future, Future future2) {
            this.e = collection;
            this.f = wVar;
            this.g = future;
            this.h = future2;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (w wVar : this.e) {
                if (wVar != this.f) {
                    wVar.a.f(r87.y);
                }
            }
            Future future = this.g;
            if (future != null) {
                future.cancel(false);
            }
            Future future2 = this.h;
            if (future2 != null) {
                future2.cancel(false);
            }
            r87.this.w();
        }
    }

    public class d implements o {
        public final /* synthetic */ g37 a;

        public d(r87 r87Var, g37 g37Var) {
            this.a = g37Var;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.a(this.a);
        }
    }

    public class e implements o {
        public final /* synthetic */ m37 a;

        public e(r87 r87Var, m37 m37Var) {
            this.a = m37Var;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.j(this.a);
        }
    }

    public class f implements o {
        public final /* synthetic */ o37 a;

        public f(r87 r87Var, o37 o37Var) {
            this.a = o37Var;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.e(this.a);
        }
    }

    public class g implements o {
        public g(r87 r87Var) {
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.flush();
        }
    }

    public class h implements o {
        public final /* synthetic */ boolean a;

        public h(r87 r87Var, boolean z) {
            this.a = z;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.n(this.a);
        }
    }

    public class i implements o {
        public i(r87 r87Var) {
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.i();
        }
    }

    public class j implements o {
        public final /* synthetic */ int a;

        public j(r87 r87Var, int i) {
            this.a = i;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.c(this.a);
        }
    }

    public class k implements o {
        public final /* synthetic */ int a;

        public k(r87 r87Var, int i) {
            this.a = i;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.d(this.a);
        }
    }

    public class l implements o {
        public final /* synthetic */ int a;

        public l(r87 r87Var, int i) {
            this.a = i;
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.b(this.a);
        }
    }

    public class m implements o {
        public final /* synthetic */ Object a;

        public m(Object obj) {
            this.a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r87.o
        public void a(w wVar) {
            wVar.a.l(r87.this.a.c(this.a));
        }
    }

    public class n implements o {
        public n() {
        }

        @Override // r87.o
        public void a(w wVar) {
            wVar.a.k(new v(wVar));
        }
    }

    public interface o {
        void a(w wVar);
    }

    public class p extends e37 {
        public final w a;
        public long b;

        public p(w wVar) {
            this.a = wVar;
        }

        @Override // defpackage.a57
        public void a(long j) {
            if (r87.this.p.f != null) {
                return;
            }
            synchronized (r87.this.j) {
                if (r87.this.p.f == null) {
                    w wVar = this.a;
                    if (!wVar.b) {
                        long j2 = this.b + j;
                        this.b = j2;
                        r87 r87Var = r87.this;
                        long j3 = r87Var.r;
                        if (j2 <= j3) {
                            return;
                        }
                        if (j2 > r87Var.l) {
                            wVar.c = true;
                        } else {
                            long jAddAndGet = r87Var.k.a.addAndGet(j2 - j3);
                            r87 r87Var2 = r87.this;
                            r87Var2.r = this.b;
                            if (jAddAndGet > r87Var2.m) {
                                this.a.c = true;
                            }
                        }
                        w wVar2 = this.a;
                        Runnable runnableP = wVar2.c ? r87.this.p(wVar2) : null;
                        if (runnableP != null) {
                            ((c) runnableP).run();
                        }
                    }
                }
            }
        }
    }

    public static final class q {
        public final AtomicLong a = new AtomicLong();
    }

    public static final class r {
        public final Object a;
        public Future<?> b;
        public boolean c;

        public r(Object obj) {
            this.a = obj;
        }

        public Future<?> a() {
            this.c = true;
            return this.b;
        }

        public void b(Future<?> future) {
            synchronized (this.a) {
                if (!this.c) {
                    this.b = future;
                }
            }
        }
    }

    public final class s implements Runnable {
        public final r e;

        public class a implements Runnable {
            public a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x005a A[Catch: all -> 0x00a0, TryCatch #0 {, blocks: (B:4:0x0013, B:19:0x006d, B:7:0x001f, B:9:0x0035, B:11:0x003d, B:16:0x004b, B:17:0x005a), top: B:30:0x0013 }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r8 = this;
                    r87$s r0 = r87.s.this
                    r87 r0 = defpackage.r87.this
                    r87$u r1 = r0.p
                    int r1 = r1.e
                    r87$w r0 = r0.q(r1)
                    r87$s r1 = r87.s.this
                    r87 r1 = defpackage.r87.this
                    java.lang.Object r1 = r1.j
                    monitor-enter(r1)
                    r87$s r2 = r87.s.this     // Catch: java.lang.Throwable -> La0
                    r87$r r3 = r2.e     // Catch: java.lang.Throwable -> La0
                    boolean r3 = r3.c     // Catch: java.lang.Throwable -> La0
                    r4 = 1
                    r5 = 0
                    r6 = 0
                    if (r3 == 0) goto L1f
                    goto L6d
                L1f:
                    r87 r2 = defpackage.r87.this     // Catch: java.lang.Throwable -> La0
                    r87$u r3 = r2.p     // Catch: java.lang.Throwable -> La0
                    r87$u r3 = r3.a(r0)     // Catch: java.lang.Throwable -> La0
                    r2.p = r3     // Catch: java.lang.Throwable -> La0
                    r87$s r2 = r87.s.this     // Catch: java.lang.Throwable -> La0
                    r87 r2 = defpackage.r87.this     // Catch: java.lang.Throwable -> La0
                    r87$u r3 = r2.p     // Catch: java.lang.Throwable -> La0
                    boolean r2 = r2.u(r3)     // Catch: java.lang.Throwable -> La0
                    if (r2 == 0) goto L5a
                    r87$s r2 = r87.s.this     // Catch: java.lang.Throwable -> La0
                    r87 r2 = defpackage.r87.this     // Catch: java.lang.Throwable -> La0
                    r87$x r2 = r2.n     // Catch: java.lang.Throwable -> La0
                    if (r2 == 0) goto L4b
                    java.util.concurrent.atomic.AtomicInteger r3 = r2.d     // Catch: java.lang.Throwable -> La0
                    int r3 = r3.get()     // Catch: java.lang.Throwable -> La0
                    int r2 = r2.b     // Catch: java.lang.Throwable -> La0
                    if (r3 <= r2) goto L48
                    goto L49
                L48:
                    r4 = 0
                L49:
                    if (r4 == 0) goto L5a
                L4b:
                    r87$s r2 = r87.s.this     // Catch: java.lang.Throwable -> La0
                    r87 r2 = defpackage.r87.this     // Catch: java.lang.Throwable -> La0
                    r87$r r3 = new r87$r     // Catch: java.lang.Throwable -> La0
                    java.lang.Object r4 = r2.j     // Catch: java.lang.Throwable -> La0
                    r3.<init>(r4)     // Catch: java.lang.Throwable -> La0
                    r2.u = r3     // Catch: java.lang.Throwable -> La0
                    r5 = r3
                    goto L6c
                L5a:
                    r87$s r2 = r87.s.this     // Catch: java.lang.Throwable -> La0
                    r87 r2 = defpackage.r87.this     // Catch: java.lang.Throwable -> La0
                    r87$u r3 = r2.p     // Catch: java.lang.Throwable -> La0
                    r87$u r3 = r3.b()     // Catch: java.lang.Throwable -> La0
                    r2.p = r3     // Catch: java.lang.Throwable -> La0
                    r87$s r2 = r87.s.this     // Catch: java.lang.Throwable -> La0
                    r87 r2 = defpackage.r87.this     // Catch: java.lang.Throwable -> La0
                    r2.u = r5     // Catch: java.lang.Throwable -> La0
                L6c:
                    r4 = 0
                L6d:
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> La0
                    if (r4 == 0) goto L7e
                    y57 r0 = r0.a
                    x47 r1 = defpackage.x47.g
                    java.lang.String r2 = "Unneeded hedging"
                    x47 r1 = r1.h(r2)
                    r0.f(r1)
                    return
                L7e:
                    if (r5 == 0) goto L98
                    r87$s r1 = r87.s.this
                    r87 r1 = defpackage.r87.this
                    java.util.concurrent.ScheduledExecutorService r2 = r1.c
                    r87$s r3 = new r87$s
                    r3.<init>(r5)
                    w67 r1 = r1.h
                    long r6 = r1.b
                    java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.NANOSECONDS
                    java.util.concurrent.ScheduledFuture r1 = r2.schedule(r3, r6, r1)
                    r5.b(r1)
                L98:
                    r87$s r1 = r87.s.this
                    r87 r1 = defpackage.r87.this
                    r1.s(r0)
                    return
                La0:
                    r0 = move-exception
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> La0
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: r87.s.a.run():void");
            }
        }

        public s(r rVar) {
            this.e = rVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            r87.this.b.execute(new a());
        }
    }

    public static final class t {
        public final boolean a;
        public final boolean b;
        public final long c;
        public final Integer d;

        public t(boolean z, boolean z2, long j, Integer num) {
            this.a = z;
            this.b = z2;
            this.c = j;
            this.d = num;
        }
    }

    public static final class u {
        public final boolean a;
        public final List<o> b;
        public final Collection<w> c;
        public final Collection<w> d;
        public final int e;
        public final w f;
        public final boolean g;
        public final boolean h;

        public u(List<o> list, Collection<w> collection, Collection<w> collection2, w wVar, boolean z, boolean z2, boolean z3, int i) {
            this.b = list;
            c50.A(collection, "drainedSubstreams");
            this.c = collection;
            this.f = wVar;
            this.d = collection2;
            this.g = z;
            this.a = z2;
            this.h = z3;
            this.e = i;
            c50.G(!z2 || list == null, "passThrough should imply buffer is null");
            c50.G((z2 && wVar == null) ? false : true, "passThrough should imply winningSubstream != null");
            c50.G(!z2 || (collection.size() == 1 && collection.contains(wVar)) || (collection.size() == 0 && wVar.b), "passThrough should imply winningSubstream is drained");
            c50.G((z && wVar == null) ? false : true, "cancelled should imply committed");
        }

        public u a(w wVar) {
            Collection collectionUnmodifiableCollection;
            c50.G(!this.h, "hedging frozen");
            c50.G(this.f == null, "already committed");
            if (this.d == null) {
                collectionUnmodifiableCollection = Collections.singleton(wVar);
            } else {
                ArrayList arrayList = new ArrayList(this.d);
                arrayList.add(wVar);
                collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
            return new u(this.b, this.c, collectionUnmodifiableCollection, this.f, this.g, this.a, this.h, this.e + 1);
        }

        public u b() {
            return this.h ? this : new u(this.b, this.c, this.d, this.f, this.g, this.a, true, this.e);
        }

        public u c(w wVar) {
            ArrayList arrayList = new ArrayList(this.d);
            arrayList.remove(wVar);
            return new u(this.b, this.c, Collections.unmodifiableCollection(arrayList), this.f, this.g, this.a, this.h, this.e);
        }

        public u d(w wVar, w wVar2) {
            ArrayList arrayList = new ArrayList(this.d);
            arrayList.remove(wVar);
            arrayList.add(wVar2);
            return new u(this.b, this.c, Collections.unmodifiableCollection(arrayList), this.f, this.g, this.a, this.h, this.e);
        }

        public u e(w wVar) {
            wVar.b = true;
            if (!this.c.contains(wVar)) {
                return this;
            }
            ArrayList arrayList = new ArrayList(this.c);
            arrayList.remove(wVar);
            return new u(this.b, Collections.unmodifiableCollection(arrayList), this.d, this.f, this.g, this.a, this.h, this.e);
        }

        public u f(w wVar) {
            Collection collectionUnmodifiableCollection;
            c50.G(!this.a, "Already passThrough");
            if (wVar.b) {
                collectionUnmodifiableCollection = this.c;
            } else if (this.c.isEmpty()) {
                collectionUnmodifiableCollection = Collections.singletonList(wVar);
            } else {
                ArrayList arrayList = new ArrayList(this.c);
                arrayList.add(wVar);
                collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
            Collection collection = collectionUnmodifiableCollection;
            w wVar2 = this.f;
            boolean z = wVar2 != null;
            List<o> list = this.b;
            if (z) {
                c50.G(wVar2 == wVar, "Another RPC attempt has already committed");
                list = null;
            }
            return new u(list, collection, this.d, this.f, this.g, z, this.h, this.e);
        }
    }

    public final class v implements z57 {
        public final w a;

        public class a implements Runnable {
            public final /* synthetic */ w e;

            public a(w wVar) {
                this.e = wVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                r87 r87Var = r87.this;
                w wVar = this.e;
                i47.f<String> fVar = r87.w;
                r87Var.s(wVar);
            }
        }

        public class b implements Runnable {

            public class a implements Runnable {
                public a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    v vVar = v.this;
                    r87 r87Var = r87.this;
                    int i = vVar.a.d + 1;
                    i47.f<String> fVar = r87.w;
                    r87.this.s(r87Var.q(i));
                }
            }

            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                r87.this.b.execute(new a());
            }
        }

        public v(w wVar) {
            this.a = wVar;
        }

        @Override // defpackage.c97
        public void a(c97.a aVar) {
            u uVar = r87.this.p;
            c50.G(uVar.f != null, "Headers should be received prior to messages.");
            if (uVar.f != this.a) {
                return;
            }
            r87.this.s.a(aVar);
        }

        @Override // defpackage.z57
        public void b(x47 x47Var, i47 i47Var) throws NumberFormatException {
            e(x47Var, z57.a.PROCESSED, i47Var);
        }

        @Override // defpackage.z57
        public void c(i47 i47Var) {
            int i;
            int i2;
            r87.m(r87.this, this.a);
            if (r87.this.p.f == this.a) {
                r87.this.s.c(i47Var);
                x xVar = r87.this.n;
                if (xVar != null) {
                    do {
                        i = xVar.d.get();
                        i2 = xVar.a;
                        if (i == i2) {
                            return;
                        }
                    } while (!xVar.d.compareAndSet(i, Math.min(xVar.c + i, i2)));
                }
            }
        }

        @Override // defpackage.c97
        public void d() {
            if (r87.this.p.c.contains(this.a)) {
                r87.this.s.d();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:94:0x01cb  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01ce  */
        @Override // defpackage.z57
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void e(defpackage.x47 r18, z57.a r19, defpackage.i47 r20) throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 600
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: r87.v.e(x47, z57$a, i47):void");
        }
    }

    public static final class w {
        public y57 a;
        public boolean b;
        public boolean c;
        public final int d;

        public w(int i) {
            this.d = i;
        }
    }

    public static final class x {
        public final int a;
        public final int b;
        public final int c;
        public final AtomicInteger d;

        public x(float f, float f2) {
            AtomicInteger atomicInteger = new AtomicInteger();
            this.d = atomicInteger;
            this.c = (int) (f2 * 1000.0f);
            int i = (int) (f * 1000.0f);
            this.a = i;
            this.b = i / 2;
            atomicInteger.set(i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof x)) {
                return false;
            }
            x xVar = (x) obj;
            return this.a == xVar.a && this.c == xVar.c;
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{Integer.valueOf(this.a), Integer.valueOf(this.c)});
        }
    }

    static {
        i47.d<String> dVar = i47.c;
        w = i47.f.a("grpc-previous-rpc-attempts", dVar);
        x = i47.f.a("grpc-retry-pushback-ms", dVar);
        y = x47.g.h("Stream thrown away because RetriableStream committed");
        z = new Random();
    }

    public r87(j47<ReqT, ?> j47Var, i47 i47Var, q qVar, long j2, long j3, Executor executor, ScheduledExecutorService scheduledExecutorService, s87.a aVar, w67.a aVar2, x xVar) {
        this.a = j47Var;
        this.k = qVar;
        this.l = j2;
        this.m = j3;
        this.b = executor;
        this.c = scheduledExecutorService;
        this.d = i47Var;
        c50.A(aVar, "retryPolicyProvider");
        this.e = aVar;
        c50.A(aVar2, "hedgingPolicyProvider");
        this.f = aVar2;
        this.n = xVar;
    }

    public static void m(r87 r87Var, w wVar) {
        Runnable runnableP = r87Var.p(wVar);
        if (runnableP != null) {
            ((c) runnableP).run();
        }
    }

    public static void o(r87 r87Var, Integer num) {
        Objects.requireNonNull(r87Var);
        if (num == null) {
            return;
        }
        if (num.intValue() < 0) {
            r87Var.t();
            return;
        }
        synchronized (r87Var.j) {
            r rVar = r87Var.u;
            if (rVar != null) {
                Future<?> futureA = rVar.a();
                r rVar2 = new r(r87Var.j);
                r87Var.u = rVar2;
                if (futureA != null) {
                    futureA.cancel(false);
                }
                rVar2.b(r87Var.c.schedule(new s(rVar2), num.intValue(), TimeUnit.MILLISECONDS));
            }
        }
    }

    @Override // defpackage.b97
    public final void a(g37 g37Var) {
        r(new d(this, g37Var));
    }

    @Override // defpackage.b97
    public final void b(int i2) {
        u uVar = this.p;
        if (uVar.a) {
            uVar.f.a.b(i2);
        } else {
            r(new l(this, i2));
        }
    }

    @Override // defpackage.y57
    public final void c(int i2) {
        r(new j(this, i2));
    }

    @Override // defpackage.y57
    public final void d(int i2) {
        r(new k(this, i2));
    }

    @Override // defpackage.y57
    public final void e(o37 o37Var) {
        r(new f(this, o37Var));
    }

    @Override // defpackage.y57
    public final void f(x47 x47Var) {
        w wVar = new w(0);
        wVar.a = new g87();
        Runnable runnableP = p(wVar);
        if (runnableP != null) {
            this.s.b(x47Var, new i47());
            ((c) runnableP).run();
            return;
        }
        this.p.f.a.f(x47Var);
        synchronized (this.j) {
            u uVar = this.p;
            this.p = new u(uVar.b, uVar.c, uVar.d, uVar.f, true, uVar.a, uVar.h, uVar.e);
        }
    }

    @Override // defpackage.b97
    public final void flush() {
        u uVar = this.p;
        if (uVar.a) {
            uVar.f.a.flush();
        } else {
            r(new g(this));
        }
    }

    @Override // defpackage.y57
    public final void g(String str) {
        r(new b(this, str));
    }

    @Override // defpackage.y57
    public void h(c77 c77Var) {
        u uVar;
        synchronized (this.j) {
            c77Var.b("closed", this.o);
            uVar = this.p;
        }
        if (uVar.f != null) {
            c77 c77Var2 = new c77();
            uVar.f.a.h(c77Var2);
            c77Var.b("committed", c77Var2);
            return;
        }
        c77 c77Var3 = new c77();
        for (w wVar : uVar.c) {
            c77 c77Var4 = new c77();
            wVar.a.h(c77Var4);
            c77Var3.a.add(String.valueOf(c77Var4));
        }
        c77Var.b(AbstractCircuitBreaker.PROPERTY_NAME, c77Var3);
    }

    @Override // defpackage.y57
    public final void i() {
        r(new i(this));
    }

    @Override // defpackage.y57
    public final void j(m37 m37Var) {
        r(new e(this, m37Var));
    }

    @Override // defpackage.y57
    public final void k(z57 z57Var) {
        this.s = z57Var;
        x47 x47VarX = x();
        if (x47VarX != null) {
            f(x47VarX);
            return;
        }
        synchronized (this.j) {
            this.p.b.add(new n());
        }
        w wVarQ = q(0);
        c50.G(this.h == null, "hedgingPolicy has been initialized unexpectedly");
        w67 w67Var = this.f.get();
        this.h = w67Var;
        if (!w67.d.equals(w67Var)) {
            this.i = true;
            this.g = s87.f;
            r rVar = null;
            synchronized (this.j) {
                this.p = this.p.a(wVarQ);
                if (u(this.p)) {
                    x xVar = this.n;
                    if (xVar != null) {
                        if (xVar.d.get() > xVar.b) {
                        }
                    }
                    rVar = new r(this.j);
                    this.u = rVar;
                }
            }
            if (rVar != null) {
                rVar.b(this.c.schedule(new s(rVar), this.h.b, TimeUnit.NANOSECONDS));
            }
        }
        s(wVarQ);
    }

    @Override // defpackage.b97
    public final void l(InputStream inputStream) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    @Override // defpackage.y57
    public final void n(boolean z2) {
        r(new h(this, z2));
    }

    public final Runnable p(w wVar) {
        List<o> list;
        Collection collectionEmptyList;
        Future<?> future;
        Future<?> future2;
        synchronized (this.j) {
            if (this.p.f != null) {
                return null;
            }
            Collection<w> collection = this.p.c;
            u uVar = this.p;
            boolean z2 = false;
            c50.G(uVar.f == null, "Already committed");
            List<o> list2 = uVar.b;
            if (uVar.c.contains(wVar)) {
                list = null;
                collectionEmptyList = Collections.singleton(wVar);
                z2 = true;
            } else {
                list = list2;
                collectionEmptyList = Collections.emptyList();
            }
            this.p = new u(list, collectionEmptyList, uVar.d, wVar, uVar.g, z2, uVar.h, uVar.e);
            this.k.a.addAndGet(-this.r);
            r rVar = this.t;
            if (rVar != null) {
                Future<?> futureA = rVar.a();
                this.t = null;
                future = futureA;
            } else {
                future = null;
            }
            r rVar2 = this.u;
            if (rVar2 != null) {
                Future<?> futureA2 = rVar2.a();
                this.u = null;
                future2 = futureA2;
            } else {
                future2 = null;
            }
            return new c(collection, wVar, future, future2);
        }
    }

    public final w q(int i2) {
        w wVar = new w(i2);
        a aVar = new a(this, new p(wVar));
        i47 i47Var = this.d;
        i47 i47Var2 = new i47();
        i47Var2.f(i47Var);
        if (i2 > 0) {
            i47Var2.h(w, String.valueOf(i2));
        }
        wVar.a = v(aVar, i47Var2);
        return wVar;
    }

    public final void r(o oVar) {
        Collection<w> collection;
        synchronized (this.j) {
            if (!this.p.a) {
                this.p.b.add(oVar);
            }
            collection = this.p.c;
        }
        Iterator<w> it = collection.iterator();
        while (it.hasNext()) {
            oVar.a(it.next());
        }
    }

    public final void s(w wVar) {
        ArrayList<o> arrayList = null;
        int i2 = 0;
        while (true) {
            synchronized (this.j) {
                u uVar = this.p;
                w wVar2 = uVar.f;
                if (wVar2 != null && wVar2 != wVar) {
                    wVar.a.f(y);
                    return;
                }
                if (i2 == uVar.b.size()) {
                    this.p = uVar.f(wVar);
                    return;
                }
                if (wVar.b) {
                    return;
                }
                int iMin = Math.min(i2 + 128, uVar.b.size());
                if (arrayList == null) {
                    arrayList = new ArrayList(uVar.b.subList(i2, iMin));
                } else {
                    arrayList.clear();
                    arrayList.addAll(uVar.b.subList(i2, iMin));
                }
                for (o oVar : arrayList) {
                    u uVar2 = this.p;
                    w wVar3 = uVar2.f;
                    if (wVar3 == null || wVar3 == wVar) {
                        if (uVar2.g) {
                            c50.G(wVar3 == wVar, "substream should be CANCELLED_BECAUSE_COMMITTED already");
                            return;
                        }
                        oVar.a(wVar);
                    }
                }
                i2 = iMin;
            }
        }
    }

    public final void t() {
        Future<?> future;
        synchronized (this.j) {
            r rVar = this.u;
            future = null;
            if (rVar != null) {
                Future<?> futureA = rVar.a();
                this.u = null;
                future = futureA;
            }
            this.p = this.p.b();
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    public final boolean u(u uVar) {
        return uVar.f == null && uVar.e < this.h.a && !uVar.h;
    }

    public abstract y57 v(e37.a aVar, i47 i47Var);

    public abstract void w();

    public abstract x47 x();

    public final void y(ReqT reqt) {
        u uVar = this.p;
        if (uVar.a) {
            uVar.f.a.l(this.a.d.b(reqt));
        } else {
            r(new m(reqt));
        }
    }
}
