package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ff7<T> extends he7<T, T> {

    public static final class a<T> extends AtomicInteger implements pb7<T>, y38 {
        public final x38<? super T> e;
        public y38 f;
        public volatile boolean g;
        public Throwable h;
        public volatile boolean i;
        public final AtomicLong j = new AtomicLong();
        public final AtomicReference<T> k = new AtomicReference<>();

        public a(x38<? super T> x38Var) {
            this.e = x38Var;
        }

        @Override // defpackage.x38
        public void a() {
            this.g = true;
            g();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            this.h = th;
            this.g = true;
            g();
        }

        public boolean c(boolean z, boolean z2, x38<?> x38Var, AtomicReference<T> atomicReference) {
            if (this.i) {
                atomicReference.lazySet(null);
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.h;
            if (th != null) {
                atomicReference.lazySet(null);
                x38Var.b(th);
                return true;
            }
            if (!z2) {
                return false;
            }
            x38Var.a();
            return true;
        }

        @Override // defpackage.y38
        public void cancel() {
            if (this.i) {
                return;
            }
            this.i = true;
            this.f.cancel();
            if (getAndIncrement() == 0) {
                this.k.lazySet(null);
            }
        }

        @Override // defpackage.x38
        public void d(T t) {
            this.k.lazySet(t);
            g();
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.f, y38Var)) {
                this.f = y38Var;
                this.e.e(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
        
            if (r7 != r1.get()) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
        
            r9 = r13.g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
        
            if (r2.get() != null) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
        
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
        
            if (c(r9, r11, r0, r2) == false) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
        
            if (r7 == 0) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
        
            defpackage.n56.E1(r1, r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0057, code lost:
        
            r4 = addAndGet(-r4);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void g() {
            /*
                r13 = this;
                int r0 = r13.getAndIncrement()
                if (r0 == 0) goto L7
                return
            L7:
                x38<? super T> r0 = r13.e
                java.util.concurrent.atomic.AtomicLong r1 = r13.j
                java.util.concurrent.atomic.AtomicReference<T> r2 = r13.k
                r3 = 1
                r4 = 1
            Lf:
                r5 = 0
                r7 = r5
            L12:
                long r9 = r1.get()
                r11 = 0
                int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r12 == 0) goto L38
                boolean r9 = r13.g
                r10 = 0
                java.lang.Object r10 = r2.getAndSet(r10)
                if (r10 != 0) goto L26
                r12 = 1
                goto L27
            L26:
                r12 = 0
            L27:
                boolean r9 = r13.c(r9, r12, r0, r2)
                if (r9 == 0) goto L2e
                return
            L2e:
                if (r12 == 0) goto L31
                goto L38
            L31:
                r0.d(r10)
                r9 = 1
                long r7 = r7 + r9
                goto L12
            L38:
                long r9 = r1.get()
                int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
                if (r12 != 0) goto L50
                boolean r9 = r13.g
                java.lang.Object r10 = r2.get()
                if (r10 != 0) goto L49
                r11 = 1
            L49:
                boolean r9 = r13.c(r9, r11, r0, r2)
                if (r9 == 0) goto L50
                return
            L50:
                int r9 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
                if (r9 == 0) goto L57
                defpackage.n56.E1(r1, r7)
            L57:
                int r4 = -r4
                int r4 = r13.addAndGet(r4)
                if (r4 != 0) goto Lf
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ff7.a.g():void");
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.e(this.j, j);
                g();
            }
        }
    }

    public ff7(mb7<T> mb7Var) {
        super(mb7Var);
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.s(new a(x38Var));
    }
}
