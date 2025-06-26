package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class se7<T, R> extends he7<T, R> {
    public final uc7<? super T, ? extends ec7<? extends R>> g;
    public final boolean h;
    public final int i;

    public static final class a<T, R> extends AtomicInteger implements pb7<T>, y38 {
        public final x38<? super R> e;
        public final boolean f;
        public final int g;
        public final uc7<? super T, ? extends ec7<? extends R>> l;
        public y38 n;
        public volatile boolean o;
        public final AtomicLong h = new AtomicLong();
        public final hc7 i = new hc7();
        public final si7 k = new si7();
        public final AtomicInteger j = new AtomicInteger(1);
        public final AtomicReference<uh7<R>> m = new AtomicReference<>();

        /* renamed from: se7$a$a, reason: collision with other inner class name */
        public final class C0038a extends AtomicReference<ic7> implements cc7<R>, ic7 {
            public C0038a() {
            }

            @Override // defpackage.cc7
            public void b(Throwable th) {
                a aVar = a.this;
                aVar.i.c(this);
                if (!vi7.a(aVar.k, th)) {
                    n56.z1(th);
                    return;
                }
                if (!aVar.f) {
                    aVar.n.cancel();
                    aVar.i.k();
                } else if (aVar.g != Integer.MAX_VALUE) {
                    aVar.n.l(1L);
                }
                aVar.j.decrementAndGet();
                aVar.g();
            }

            @Override // defpackage.cc7
            public void c(ic7 ic7Var) {
                yc7.w(this, ic7Var);
            }

            @Override // defpackage.ic7
            public void k() {
                yc7.i(this);
            }

            /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
            @Override // defpackage.cc7
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onSuccess(R r8) {
                /*
                    r7 = this;
                    se7$a r0 = se7.a.this
                    hc7 r1 = r0.i
                    r1.c(r7)
                    int r1 = r0.get()
                    if (r1 != 0) goto L7c
                    r1 = 0
                    r2 = 1
                    boolean r3 = r0.compareAndSet(r1, r2)
                    if (r3 == 0) goto L7c
                    java.util.concurrent.atomic.AtomicInteger r3 = r0.j
                    int r3 = r3.decrementAndGet()
                    if (r3 != 0) goto L1e
                    r1 = 1
                L1e:
                    java.util.concurrent.atomic.AtomicLong r2 = r0.h
                    long r2 = r2.get()
                    r4 = 0
                    int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                    if (r6 == 0) goto L69
                    x38<? super R> r2 = r0.e
                    r2.d(r8)
                    java.util.concurrent.atomic.AtomicReference<uh7<R>> r8 = r0.m
                    java.lang.Object r8 = r8.get()
                    uh7 r8 = (defpackage.uh7) r8
                    if (r1 == 0) goto L55
                    if (r8 == 0) goto L41
                    boolean r8 = r8.isEmpty()
                    if (r8 == 0) goto L55
                L41:
                    si7 r8 = r0.k
                    java.lang.Throwable r8 = defpackage.vi7.b(r8)
                    if (r8 == 0) goto L4f
                    x38<? super R> r0 = r0.e
                    r0.b(r8)
                    goto L94
                L4f:
                    x38<? super R> r8 = r0.e
                    r8.a()
                    goto L94
                L55:
                    java.util.concurrent.atomic.AtomicLong r8 = r0.h
                    r1 = 1
                    defpackage.n56.E1(r8, r1)
                    int r8 = r0.g
                    r3 = 2147483647(0x7fffffff, float:NaN)
                    if (r8 == r3) goto L72
                    y38 r8 = r0.n
                    r8.l(r1)
                    goto L72
                L69:
                    uh7 r1 = r0.i()
                    monitor-enter(r1)
                    r1.offer(r8)     // Catch: java.lang.Throwable -> L79
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L79
                L72:
                    int r8 = r0.decrementAndGet()
                    if (r8 != 0) goto L91
                    goto L94
                L79:
                    r8 = move-exception
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L79
                    throw r8
                L7c:
                    uh7 r1 = r0.i()
                    monitor-enter(r1)
                    r1.offer(r8)     // Catch: java.lang.Throwable -> L95
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L95
                    java.util.concurrent.atomic.AtomicInteger r8 = r0.j
                    r8.decrementAndGet()
                    int r8 = r0.getAndIncrement()
                    if (r8 == 0) goto L91
                    goto L94
                L91:
                    r0.h()
                L94:
                    return
                L95:
                    r8 = move-exception
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L95
                    throw r8
                */
                throw new UnsupportedOperationException("Method not decompiled: se7.a.C0038a.onSuccess(java.lang.Object):void");
            }
        }

        public a(x38<? super R> x38Var, uc7<? super T, ? extends ec7<? extends R>> uc7Var, boolean z, int i) {
            this.e = x38Var;
            this.l = uc7Var;
            this.f = z;
            this.g = i;
        }

        @Override // defpackage.x38
        public void a() {
            this.j.decrementAndGet();
            g();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            this.j.decrementAndGet();
            if (!vi7.a(this.k, th)) {
                n56.z1(th);
                return;
            }
            if (!this.f) {
                this.i.k();
            }
            g();
        }

        public void c() {
            uh7<R> uh7Var = this.m.get();
            if (uh7Var != null) {
                uh7Var.clear();
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            this.o = true;
            this.n.cancel();
            this.i.k();
        }

        @Override // defpackage.x38
        public void d(T t) {
            try {
                ec7<? extends R> ec7VarApply = this.l.apply(t);
                Objects.requireNonNull(ec7VarApply, "The mapper returned a null SingleSource");
                ec7<? extends R> ec7Var = ec7VarApply;
                this.j.getAndIncrement();
                C0038a c0038a = new C0038a();
                if (this.o || !this.i.b(c0038a)) {
                    return;
                }
                ec7Var.a(c0038a);
            } catch (Throwable th) {
                n56.r2(th);
                this.n.cancel();
                b(th);
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.n, y38Var)) {
                this.n = y38Var;
                this.e.e(this);
                int i = this.g;
                if (i == Integer.MAX_VALUE) {
                    y38Var.l(Long.MAX_VALUE);
                } else {
                    y38Var.l(i);
                }
            }
        }

        public void g() {
            if (getAndIncrement() == 0) {
                h();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
        
            if (r10 != r6) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x007b, code lost:
        
            if (r17.o == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x007d, code lost:
        
            c();
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0080, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0083, code lost:
        
            if (r17.f != false) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x008d, code lost:
        
            if (r17.k.get() == null) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x008f, code lost:
        
            r2 = defpackage.vi7.b(r17.k);
            c();
            r1.b(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00a0, code lost:
        
            if (r2.get() != 0) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00a2, code lost:
        
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a4, code lost:
        
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a5, code lost:
        
            r7 = r3.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00ab, code lost:
        
            if (r7 == null) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00b1, code lost:
        
            if (r7.isEmpty() == false) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00b3, code lost:
        
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b4, code lost:
        
            if (r6 == false) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00b6, code lost:
        
            if (r12 == false) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00b8, code lost:
        
            r2 = defpackage.vi7.b(r17.k);
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00be, code lost:
        
            if (r2 == null) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00c0, code lost:
        
            r1.b(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00c4, code lost:
        
            r1.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00c7, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00ca, code lost:
        
            if (r10 == 0) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00cc, code lost:
        
            defpackage.n56.E1(r17.h, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00d6, code lost:
        
            if (r17.g == Integer.MAX_VALUE) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00d8, code lost:
        
            r17.n.l(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00dd, code lost:
        
            r5 = addAndGet(-r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void h() {
            /*
                Method dump skipped, instructions count: 229
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: se7.a.h():void");
        }

        public uh7<R> i() {
            uh7<R> uh7Var;
            do {
                uh7<R> uh7Var2 = this.m.get();
                if (uh7Var2 != null) {
                    return uh7Var2;
                }
                uh7Var = new uh7<>(mb7.e);
            } while (!this.m.compareAndSet(null, uh7Var));
            return uh7Var;
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.e(this.h, j);
                g();
            }
        }
    }

    public se7(mb7<T> mb7Var, uc7<? super T, ? extends ec7<? extends R>> uc7Var, boolean z, int i) {
        super(mb7Var);
        this.g = uc7Var;
        this.h = z;
        this.i = i;
    }

    @Override // defpackage.mb7
    public void t(x38<? super R> x38Var) {
        this.f.s(new a(x38Var, this.g, this.h, this.i));
    }
}
