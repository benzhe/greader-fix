package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class je7<T> extends mb7<T> {
    public final ob7<T> f;
    public final gb7 g;

    public static abstract class a<T> extends AtomicLong implements nb7<T>, y38 {
        public final x38<? super T> e;
        public final cd7 f = new cd7();

        public a(x38<? super T> x38Var) {
            this.e = x38Var;
        }

        @Override // defpackage.nb7
        public void a() {
            b();
        }

        public void b() {
            if (e()) {
                return;
            }
            try {
                this.e.a();
            } finally {
                yc7.i(this.f);
            }
        }

        public boolean c(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (e()) {
                return false;
            }
            try {
                this.e.b(th);
                yc7.i(this.f);
                return true;
            } catch (Throwable th2) {
                yc7.i(this.f);
                throw th2;
            }
        }

        @Override // defpackage.y38
        public final void cancel() {
            yc7.i(this.f);
            g();
        }

        public final boolean e() {
            return this.f.a();
        }

        public void f() {
        }

        public void g() {
        }

        public boolean h(Throwable th) {
            return c(th);
        }

        @Override // defpackage.y38
        public final void l(long j) {
            if (pi7.y(j)) {
                n56.e(this, j);
                f();
            }
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }
    }

    public static final class b<T> extends a<T> {
        public final uh7<T> g;
        public Throwable h;
        public volatile boolean i;
        public final AtomicInteger j;

        public b(x38<? super T> x38Var, int i) {
            super(x38Var);
            this.g = new uh7<>(i);
            this.j = new AtomicInteger();
        }

        @Override // je7.a, defpackage.nb7
        public void a() {
            this.i = true;
            i();
        }

        @Override // defpackage.nb7
        public void d(T t) {
            if (this.i || e()) {
                return;
            }
            if (t != null) {
                this.g.offer(t);
                i();
            } else {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                if (h(nullPointerException)) {
                    return;
                }
                n56.z1(nullPointerException);
            }
        }

        @Override // je7.a
        public void f() {
            i();
        }

        @Override // je7.a
        public void g() {
            if (this.j.getAndIncrement() == 0) {
                this.g.clear();
            }
        }

        @Override // je7.a
        public boolean h(Throwable th) {
            if (this.i || e()) {
                return false;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.h = th;
            this.i = true;
            i();
            return true;
        }

        public void i() {
            if (this.j.getAndIncrement() != 0) {
                return;
            }
            x38<? super T> x38Var = this.e;
            uh7<T> uh7Var = this.g;
            int iAddAndGet = 1;
            do {
                long j = get();
                long j2 = 0;
                while (j2 != j) {
                    if (e()) {
                        uh7Var.clear();
                        return;
                    }
                    boolean z = this.i;
                    T tPoll = uh7Var.poll();
                    boolean z2 = tPoll == null;
                    if (z && z2) {
                        Throwable th = this.h;
                        if (th != null) {
                            c(th);
                            return;
                        } else {
                            b();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    x38Var.d(tPoll);
                    j2++;
                }
                if (j2 == j) {
                    if (e()) {
                        uh7Var.clear();
                        return;
                    }
                    boolean z3 = this.i;
                    boolean zIsEmpty = uh7Var.isEmpty();
                    if (z3 && zIsEmpty) {
                        Throwable th2 = this.h;
                        if (th2 != null) {
                            c(th2);
                            return;
                        } else {
                            b();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    n56.E1(this, j2);
                }
                iAddAndGet = this.j.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }
    }

    public static final class c<T> extends g<T> {
        public c(x38<? super T> x38Var) {
            super(x38Var);
        }

        @Override // je7.g
        public void i() {
        }
    }

    public static final class d<T> extends g<T> {
        public d(x38<? super T> x38Var) {
            super(x38Var);
        }

        @Override // je7.g
        public void i() {
            lc7 lc7Var = new lc7("create: could not emit value due to lack of requests");
            if (h(lc7Var)) {
                return;
            }
            n56.z1(lc7Var);
        }
    }

    public static final class e<T> extends a<T> {
        public final AtomicReference<T> g;
        public Throwable h;
        public volatile boolean i;
        public final AtomicInteger j;

        public e(x38<? super T> x38Var) {
            super(x38Var);
            this.g = new AtomicReference<>();
            this.j = new AtomicInteger();
        }

        @Override // je7.a, defpackage.nb7
        public void a() {
            this.i = true;
            i();
        }

        @Override // defpackage.nb7
        public void d(T t) {
            if (this.i || e()) {
                return;
            }
            if (t != null) {
                this.g.set(t);
                i();
            } else {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                if (h(nullPointerException)) {
                    return;
                }
                n56.z1(nullPointerException);
            }
        }

        @Override // je7.a
        public void f() {
            i();
        }

        @Override // je7.a
        public void g() {
            if (this.j.getAndIncrement() == 0) {
                this.g.lazySet(null);
            }
        }

        @Override // je7.a
        public boolean h(Throwable th) {
            if (this.i || e()) {
                return false;
            }
            if (th == null) {
                NullPointerException nullPointerException = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                if (!h(nullPointerException)) {
                    n56.z1(nullPointerException);
                }
            }
            this.h = th;
            this.i = true;
            i();
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x004f, code lost:
        
            if (r9 != r5) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0055, code lost:
        
            if (e() == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0057, code lost:
        
            r2.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x005b, code lost:
        
            r5 = r17.i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
        
            if (r2.get() != null) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0063, code lost:
        
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0064, code lost:
        
            if (r5 == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0066, code lost:
        
            if (r11 == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0068, code lost:
        
            r1 = r17.h;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x006a, code lost:
        
            if (r1 == null) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x006c, code lost:
        
            c(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0070, code lost:
        
            b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0073, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0076, code lost:
        
            if (r9 == 0) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0078, code lost:
        
            defpackage.n56.E1(r17, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x007b, code lost:
        
            r4 = r17.j.addAndGet(-r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void i() {
            /*
                r17 = this;
                r0 = r17
                java.util.concurrent.atomic.AtomicInteger r1 = r0.j
                int r1 = r1.getAndIncrement()
                if (r1 == 0) goto Lb
                return
            Lb:
                x38<? super T> r1 = r0.e
                java.util.concurrent.atomic.AtomicReference<T> r2 = r0.g
                r3 = 1
                r4 = 1
            L11:
                long r5 = r17.get()
                r7 = 0
                r9 = r7
            L18:
                r11 = 0
                r12 = 0
                int r13 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
                if (r13 == 0) goto L4f
                boolean r14 = r17.e()
                if (r14 == 0) goto L28
                r2.lazySet(r12)
                return
            L28:
                boolean r14 = r0.i
                java.lang.Object r15 = r2.getAndSet(r12)
                if (r15 != 0) goto L33
                r16 = 1
                goto L35
            L33:
                r16 = 0
            L35:
                if (r14 == 0) goto L45
                if (r16 == 0) goto L45
                java.lang.Throwable r1 = r0.h
                if (r1 == 0) goto L41
                r0.c(r1)
                goto L44
            L41:
                r17.b()
            L44:
                return
            L45:
                if (r16 == 0) goto L48
                goto L4f
            L48:
                r1.d(r15)
                r11 = 1
                long r9 = r9 + r11
                goto L18
            L4f:
                if (r13 != 0) goto L74
                boolean r5 = r17.e()
                if (r5 == 0) goto L5b
                r2.lazySet(r12)
                return
            L5b:
                boolean r5 = r0.i
                java.lang.Object r6 = r2.get()
                if (r6 != 0) goto L64
                r11 = 1
            L64:
                if (r5 == 0) goto L74
                if (r11 == 0) goto L74
                java.lang.Throwable r1 = r0.h
                if (r1 == 0) goto L70
                r0.c(r1)
                goto L73
            L70:
                r17.b()
            L73:
                return
            L74:
                int r5 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
                if (r5 == 0) goto L7b
                defpackage.n56.E1(r0, r9)
            L7b:
                java.util.concurrent.atomic.AtomicInteger r5 = r0.j
                int r4 = -r4
                int r4 = r5.addAndGet(r4)
                if (r4 != 0) goto L11
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: je7.e.i():void");
        }
    }

    public static final class f<T> extends a<T> {
        public f(x38<? super T> x38Var) {
            super(x38Var);
        }

        @Override // defpackage.nb7
        public void d(T t) {
            long j;
            if (e()) {
                return;
            }
            if (t == null) {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                if (h(nullPointerException)) {
                    return;
                }
                n56.z1(nullPointerException);
                return;
            }
            this.e.d(t);
            do {
                j = get();
                if (j == 0) {
                    return;
                }
            } while (!compareAndSet(j, j - 1));
        }
    }

    public static abstract class g<T> extends a<T> {
        public g(x38<? super T> x38Var) {
            super(x38Var);
        }

        @Override // defpackage.nb7
        public final void d(T t) {
            if (e()) {
                return;
            }
            if (t == null) {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                if (h(nullPointerException)) {
                    return;
                }
                n56.z1(nullPointerException);
                return;
            }
            if (get() == 0) {
                i();
            } else {
                this.e.d(t);
                n56.E1(this, 1L);
            }
        }

        public abstract void i();
    }

    public je7(ob7<T> ob7Var, gb7 gb7Var) {
        this.f = ob7Var;
        this.g = gb7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        int iOrdinal = this.g.ordinal();
        a bVar = iOrdinal != 0 ? iOrdinal != 1 ? iOrdinal != 3 ? iOrdinal != 4 ? new b(x38Var, mb7.e) : new e(x38Var) : new c(x38Var) : new d(x38Var) : new f(x38Var);
        x38Var.e(bVar);
        try {
            this.f.a(bVar);
        } catch (Throwable th) {
            n56.r2(th);
            if (bVar.h(th)) {
                return;
            }
            n56.z1(th);
        }
    }
}
