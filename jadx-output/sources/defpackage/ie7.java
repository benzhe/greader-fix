package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class ie7<T, R> extends he7<T, R> {
    public final uc7<? super T, ? extends w38<? extends R>> g;
    public final int h;
    public final ui7 i;

    public static abstract class a<T, R> extends AtomicInteger implements pb7<T>, e<R>, y38 {
        public final uc7<? super T, ? extends w38<? extends R>> f;
        public final int g;
        public final int h;
        public y38 i;
        public int j;
        public nd7<T> k;
        public volatile boolean l;
        public volatile boolean m;
        public volatile boolean o;
        public int p;
        public final d<R> e = new d<>(this);
        public final si7 n = new si7();

        public a(uc7<? super T, ? extends w38<? extends R>> uc7Var, int i) {
            this.f = uc7Var;
            this.g = i;
            this.h = i - (i >> 2);
        }

        @Override // defpackage.x38
        public final void a() {
            this.l = true;
            h();
        }

        @Override // defpackage.x38
        public final void d(T t) {
            if (this.p == 2 || this.k.offer(t)) {
                h();
            } else {
                this.i.cancel();
                b(new IllegalStateException("Queue full?!"));
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public final void e(y38 y38Var) {
            if (pi7.C(this.i, y38Var)) {
                this.i = y38Var;
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(7);
                    if (i == 1) {
                        this.p = i;
                        this.k = kd7Var;
                        this.l = true;
                        i();
                        h();
                        return;
                    }
                    if (i == 2) {
                        this.p = i;
                        this.k = kd7Var;
                        i();
                        y38Var.l(this.g);
                        return;
                    }
                }
                this.k = new th7(this.g);
                i();
                y38Var.l(this.g);
            }
        }

        public abstract void h();

        public abstract void i();
    }

    public static final class b<T, R> extends a<T, R> {
        public final x38<? super R> q;
        public final boolean r;

        public b(x38<? super R> x38Var, uc7<? super T, ? extends w38<? extends R>> uc7Var, int i, boolean z) {
            super(uc7Var, i);
            this.q = x38Var;
            this.r = z;
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (!vi7.a(this.n, th)) {
                n56.z1(th);
            } else {
                this.l = true;
                h();
            }
        }

        @Override // ie7.e
        public void c(R r) {
            this.q.d(r);
        }

        @Override // defpackage.y38
        public void cancel() {
            if (this.m) {
                return;
            }
            this.m = true;
            this.e.cancel();
            this.i.cancel();
        }

        @Override // ie7.e
        public void g(Throwable th) {
            if (!vi7.a(this.n, th)) {
                n56.z1(th);
                return;
            }
            if (!this.r) {
                this.i.cancel();
                this.l = true;
            }
            this.o = false;
            h();
        }

        @Override // ie7.a
        public void h() {
            Object objCall;
            if (getAndIncrement() == 0) {
                while (!this.m) {
                    if (!this.o) {
                        boolean z = this.l;
                        if (z && !this.r && this.n.get() != null) {
                            this.q.b(vi7.b(this.n));
                            return;
                        }
                        try {
                            T tPoll = this.k.poll();
                            boolean z2 = tPoll == null;
                            if (z && z2) {
                                Throwable thB = vi7.b(this.n);
                                if (thB != null) {
                                    this.q.b(thB);
                                    return;
                                } else {
                                    this.q.a();
                                    return;
                                }
                            }
                            if (!z2) {
                                try {
                                    w38<? extends R> w38VarApply = this.f.apply(tPoll);
                                    Objects.requireNonNull(w38VarApply, "The mapper returned a null Publisher");
                                    w38<? extends R> w38Var = w38VarApply;
                                    if (this.p != 1) {
                                        int i = this.j + 1;
                                        if (i == this.h) {
                                            this.j = 0;
                                            this.i.l(i);
                                        } else {
                                            this.j = i;
                                        }
                                    }
                                    if (w38Var instanceof Callable) {
                                        try {
                                            objCall = ((Callable) w38Var).call();
                                        } catch (Throwable th) {
                                            n56.r2(th);
                                            vi7.a(this.n, th);
                                            if (!this.r) {
                                                this.i.cancel();
                                                this.q.b(vi7.b(this.n));
                                                return;
                                            }
                                            objCall = null;
                                        }
                                        if (objCall == null) {
                                            continue;
                                        } else if (this.e.l) {
                                            this.q.d(objCall);
                                        } else {
                                            this.o = true;
                                            this.e.i(new f(objCall, this.e));
                                        }
                                    } else {
                                        this.o = true;
                                        w38Var.i(this.e);
                                    }
                                } catch (Throwable th2) {
                                    n56.r2(th2);
                                    this.i.cancel();
                                    vi7.a(this.n, th2);
                                    this.q.b(vi7.b(this.n));
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            n56.r2(th3);
                            this.i.cancel();
                            vi7.a(this.n, th3);
                            this.q.b(vi7.b(this.n));
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // ie7.a
        public void i() {
            this.q.e(this);
        }

        @Override // defpackage.y38
        public void l(long j) {
            this.e.l(j);
        }
    }

    public static final class c<T, R> extends a<T, R> {
        public final x38<? super R> q;
        public final AtomicInteger r;

        public c(x38<? super R> x38Var, uc7<? super T, ? extends w38<? extends R>> uc7Var, int i) {
            super(uc7Var, i);
            this.q = x38Var;
            this.r = new AtomicInteger();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (!vi7.a(this.n, th)) {
                n56.z1(th);
                return;
            }
            this.e.cancel();
            if (getAndIncrement() == 0) {
                this.q.b(vi7.b(this.n));
            }
        }

        @Override // ie7.e
        public void c(R r) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.q.d(r);
                if (compareAndSet(1, 0)) {
                    return;
                }
                this.q.b(vi7.b(this.n));
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            if (this.m) {
                return;
            }
            this.m = true;
            this.e.cancel();
            this.i.cancel();
        }

        @Override // ie7.e
        public void g(Throwable th) {
            if (!vi7.a(this.n, th)) {
                n56.z1(th);
                return;
            }
            this.i.cancel();
            if (getAndIncrement() == 0) {
                this.q.b(vi7.b(this.n));
            }
        }

        @Override // ie7.a
        public void h() {
            if (this.r.getAndIncrement() == 0) {
                while (!this.m) {
                    if (!this.o) {
                        boolean z = this.l;
                        try {
                            T tPoll = this.k.poll();
                            boolean z2 = tPoll == null;
                            if (z && z2) {
                                this.q.a();
                                return;
                            }
                            if (!z2) {
                                try {
                                    w38<? extends R> w38VarApply = this.f.apply(tPoll);
                                    Objects.requireNonNull(w38VarApply, "The mapper returned a null Publisher");
                                    w38<? extends R> w38Var = w38VarApply;
                                    if (this.p != 1) {
                                        int i = this.j + 1;
                                        if (i == this.h) {
                                            this.j = 0;
                                            this.i.l(i);
                                        } else {
                                            this.j = i;
                                        }
                                    }
                                    if (w38Var instanceof Callable) {
                                        try {
                                            Object objCall = ((Callable) w38Var).call();
                                            if (objCall == null) {
                                                continue;
                                            } else if (!this.e.l) {
                                                this.o = true;
                                                this.e.i(new f(objCall, this.e));
                                            } else if (get() == 0 && compareAndSet(0, 1)) {
                                                this.q.d(objCall);
                                                if (!compareAndSet(1, 0)) {
                                                    this.q.b(vi7.b(this.n));
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            n56.r2(th);
                                            this.i.cancel();
                                            vi7.a(this.n, th);
                                            this.q.b(vi7.b(this.n));
                                            return;
                                        }
                                    } else {
                                        this.o = true;
                                        w38Var.i(this.e);
                                    }
                                } catch (Throwable th2) {
                                    n56.r2(th2);
                                    this.i.cancel();
                                    vi7.a(this.n, th2);
                                    this.q.b(vi7.b(this.n));
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            n56.r2(th3);
                            this.i.cancel();
                            vi7.a(this.n, th3);
                            this.q.b(vi7.b(this.n));
                            return;
                        }
                    }
                    if (this.r.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // ie7.a
        public void i() {
            this.q.e(this);
        }

        @Override // defpackage.y38
        public void l(long j) {
            this.e.l(j);
        }
    }

    public static final class d<R> extends oi7 implements pb7<R> {
        public final e<R> m;
        public long n;

        public d(e<R> eVar) {
            super(false);
            this.m = eVar;
        }

        @Override // defpackage.x38
        public void a() {
            long j = this.n;
            if (j != 0) {
                this.n = 0L;
                h(j);
            }
            a aVar = (a) this.m;
            aVar.o = false;
            aVar.h();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            long j = this.n;
            if (j != 0) {
                this.n = 0L;
                h(j);
            }
            this.m.g(th);
        }

        @Override // defpackage.x38
        public void d(R r) {
            this.n++;
            this.m.c(r);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            i(y38Var);
        }
    }

    public interface e<T> {
        void c(T t);

        void g(Throwable th);
    }

    public static final class f<T> extends AtomicBoolean implements y38 {
        public final x38<? super T> e;
        public final T f;

        public f(T t, x38<? super T> x38Var) {
            this.f = t;
            this.e = x38Var;
        }

        @Override // defpackage.y38
        public void cancel() {
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (j <= 0 || !compareAndSet(false, true)) {
                return;
            }
            x38<? super T> x38Var = this.e;
            x38Var.d(this.f);
            x38Var.a();
        }
    }

    public ie7(mb7<T> mb7Var, uc7<? super T, ? extends w38<? extends R>> uc7Var, int i, ui7 ui7Var) {
        super(mb7Var);
        this.g = uc7Var;
        this.h = i;
        this.i = ui7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super R> x38Var) {
        if (n56.z2(this.f, x38Var, this.g)) {
            return;
        }
        mb7<T> mb7Var = this.f;
        uc7<? super T, ? extends w38<? extends R>> uc7Var = this.g;
        int i = this.h;
        int iOrdinal = this.i.ordinal();
        mb7Var.i(iOrdinal != 1 ? iOrdinal != 2 ? new c<>(x38Var, uc7Var, i) : new b<>(x38Var, uc7Var, i, true) : new b<>(x38Var, uc7Var, i, false));
    }
}
