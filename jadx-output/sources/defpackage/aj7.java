package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class aj7<T> extends yi7<T> {
    public final uh7<T> f;
    public final AtomicReference<Runnable> g;
    public final boolean h;
    public volatile boolean i;
    public Throwable j;
    public final AtomicReference<x38<? super T>> k;
    public volatile boolean l;
    public final AtomicBoolean m;
    public final ji7<T> n;
    public final AtomicLong o;
    public boolean p;

    public final class a extends ji7<T> {
        public a() {
        }

        @Override // defpackage.y38
        public void cancel() {
            if (aj7.this.l) {
                return;
            }
            aj7.this.l = true;
            aj7.this.x();
            aj7.this.k.lazySet(null);
            if (aj7.this.n.getAndIncrement() == 0) {
                aj7.this.k.lazySet(null);
                aj7 aj7Var = aj7.this;
                if (aj7Var.p) {
                    return;
                }
                aj7Var.f.clear();
            }
        }

        @Override // defpackage.nd7
        public void clear() {
            aj7.this.f.clear();
        }

        @Override // defpackage.jd7
        public int i(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            aj7.this.p = true;
            return 2;
        }

        @Override // defpackage.nd7
        public boolean isEmpty() {
            return aj7.this.f.isEmpty();
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.e(aj7.this.o, j);
                aj7.this.y();
            }
        }

        @Override // defpackage.nd7
        public T poll() {
            return aj7.this.f.poll();
        }
    }

    public aj7(int i) {
        ed7.a(i, "capacityHint");
        this.f = new uh7<>(i);
        this.g = new AtomicReference<>(null);
        this.h = true;
        this.k = new AtomicReference<>();
        this.m = new AtomicBoolean();
        this.n = new a();
        this.o = new AtomicLong();
    }

    @Override // defpackage.x38
    public void a() {
        if (this.i || this.l) {
            return;
        }
        this.i = true;
        x();
        y();
    }

    @Override // defpackage.x38
    public void b(Throwable th) {
        Objects.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.i || this.l) {
            n56.z1(th);
            return;
        }
        this.j = th;
        this.i = true;
        x();
        y();
    }

    @Override // defpackage.x38
    public void d(T t) {
        Objects.requireNonNull(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.i || this.l) {
            return;
        }
        this.f.offer(t);
        y();
    }

    @Override // defpackage.pb7, defpackage.x38
    public void e(y38 y38Var) {
        if (this.i || this.l) {
            y38Var.cancel();
        } else {
            y38Var.l(Long.MAX_VALUE);
        }
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        if (this.m.get() || !this.m.compareAndSet(false, true)) {
            IllegalStateException illegalStateException = new IllegalStateException("This processor allows only a single Subscriber");
            x38Var.e(mi7.INSTANCE);
            x38Var.b(illegalStateException);
        } else {
            x38Var.e(this.n);
            this.k.set(x38Var);
            if (this.l) {
                this.k.lazySet(null);
            } else {
                y();
            }
        }
    }

    public boolean w(boolean z, boolean z2, boolean z3, x38<? super T> x38Var, uh7<T> uh7Var) {
        if (this.l) {
            uh7Var.clear();
            this.k.lazySet(null);
            return true;
        }
        if (!z2) {
            return false;
        }
        if (z && this.j != null) {
            uh7Var.clear();
            this.k.lazySet(null);
            x38Var.b(this.j);
            return true;
        }
        if (!z3) {
            return false;
        }
        Throwable th = this.j;
        this.k.lazySet(null);
        if (th != null) {
            x38Var.b(th);
        } else {
            x38Var.a();
        }
        return true;
    }

    public void x() {
        Runnable andSet = this.g.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    public void y() {
        long j;
        if (this.n.getAndIncrement() != 0) {
            return;
        }
        int iAddAndGet = 1;
        x38<? super T> x38Var = this.k.get();
        int iAddAndGet2 = 1;
        while (x38Var == null) {
            iAddAndGet2 = this.n.addAndGet(-iAddAndGet2);
            if (iAddAndGet2 == 0) {
                return;
            }
            x38Var = this.k.get();
            iAddAndGet = 1;
        }
        if (this.p) {
            uh7<T> uh7Var = this.f;
            int i = (this.h ? 1 : 0) ^ iAddAndGet;
            while (!this.l) {
                boolean z = this.i;
                if (i != 0 && z && this.j != null) {
                    uh7Var.clear();
                    this.k.lazySet(null);
                    x38Var.b(this.j);
                    return;
                }
                x38Var.d(null);
                if (z) {
                    this.k.lazySet(null);
                    Throwable th = this.j;
                    if (th != null) {
                        x38Var.b(th);
                        return;
                    } else {
                        x38Var.a();
                        return;
                    }
                }
                iAddAndGet = this.n.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            this.k.lazySet(null);
            return;
        }
        uh7<T> uh7Var2 = this.f;
        boolean z2 = !this.h;
        int iAddAndGet3 = 1;
        do {
            long j2 = this.o.get();
            long j3 = 0;
            while (true) {
                if (j2 == j3) {
                    j = j3;
                    break;
                }
                boolean z3 = this.i;
                T tPoll = uh7Var2.poll();
                boolean z4 = tPoll == null;
                j = j3;
                if (w(z2, z3, z4, x38Var, uh7Var2)) {
                    return;
                }
                if (z4) {
                    break;
                }
                x38Var.d(tPoll);
                j3 = j + 1;
            }
            if (j2 == j3 && w(z2, this.i, uh7Var2.isEmpty(), x38Var, uh7Var2)) {
                return;
            }
            if (j != 0 && j2 != Long.MAX_VALUE) {
                this.o.addAndGet(-j);
            }
            iAddAndGet3 = this.n.addAndGet(-iAddAndGet3);
        } while (iAddAndGet3 != 0);
    }
}
