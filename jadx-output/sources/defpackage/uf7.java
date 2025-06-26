package defpackage;

import defpackage.zb7;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class uf7<T> extends he7<T, T> {
    public final zb7 g;
    public final boolean h;

    public static final class a<T> extends AtomicReference<Thread> implements pb7<T>, y38, Runnable {
        public final x38<? super T> e;
        public final zb7.b f;
        public final AtomicReference<y38> g = new AtomicReference<>();
        public final AtomicLong h = new AtomicLong();
        public final boolean i;
        public w38<T> j;

        /* renamed from: uf7$a$a, reason: collision with other inner class name */
        public static final class RunnableC0050a implements Runnable {
            public final y38 e;
            public final long f;

            public RunnableC0050a(y38 y38Var, long j) {
                this.e = y38Var;
                this.f = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.e.l(this.f);
            }
        }

        public a(x38<? super T> x38Var, zb7.b bVar, w38<T> w38Var, boolean z) {
            this.e = x38Var;
            this.f = bVar;
            this.j = w38Var;
            this.i = !z;
        }

        @Override // defpackage.x38
        public void a() {
            this.e.a();
            this.f.k();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            this.e.b(th);
            this.f.k();
        }

        public void c(long j, y38 y38Var) {
            if (this.i || Thread.currentThread() == get()) {
                y38Var.l(j);
            } else {
                this.f.b(new RunnableC0050a(y38Var, j));
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            pi7.i(this.g);
            this.f.k();
        }

        @Override // defpackage.x38
        public void d(T t) {
            this.e.d(t);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.x(this.g, y38Var)) {
                long andSet = this.h.getAndSet(0L);
                if (andSet != 0) {
                    c(andSet, y38Var);
                }
            }
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                y38 y38Var = this.g.get();
                if (y38Var != null) {
                    c(j, y38Var);
                    return;
                }
                n56.e(this.h, j);
                y38 y38Var2 = this.g.get();
                if (y38Var2 != null) {
                    long andSet = this.h.getAndSet(0L);
                    if (andSet != 0) {
                        c(andSet, y38Var2);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            lazySet(Thread.currentThread());
            w38<T> w38Var = this.j;
            this.j = null;
            w38Var.i(this);
        }
    }

    public uf7(mb7<T> mb7Var, zb7 zb7Var, boolean z) {
        super(mb7Var);
        this.g = zb7Var;
        this.h = z;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        zb7.b bVarA = this.g.a();
        a aVar = new a(x38Var, bVarA, this.f, this.h);
        x38Var.e(aVar);
        bVarA.b(aVar);
    }
}
