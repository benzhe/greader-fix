package defpackage;

import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class kf7<T> extends mb7<T> {
    public final pc7<T> f;
    public final int g;
    public final TimeUnit h;
    public a i;

    public static final class a extends AtomicReference<ic7> implements Runnable, tc7<ic7> {
        public final kf7<?> e;
        public long f;
        public boolean g;
        public boolean h;

        public a(kf7<?> kf7Var) {
            this.e = kf7Var;
        }

        @Override // defpackage.tc7
        public void accept(ic7 ic7Var) throws Exception {
            ic7 ic7Var2 = ic7Var;
            yc7.t(this, ic7Var2);
            synchronized (this.e) {
                if (this.h) {
                    ((bd7) this.e.f).g(ic7Var2);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.y(this);
        }
    }

    public static final class b<T> extends AtomicBoolean implements pb7<T>, y38 {
        public final x38<? super T> e;
        public final kf7<T> f;
        public final a g;
        public y38 h;

        public b(x38<? super T> x38Var, kf7<T> kf7Var, a aVar) {
            this.e = x38Var;
            this.f = kf7Var;
            this.g = aVar;
        }

        @Override // defpackage.x38
        public void a() {
            if (compareAndSet(false, true)) {
                this.f.x(this.g);
                this.e.a();
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (!compareAndSet(false, true)) {
                n56.z1(th);
            } else {
                this.f.x(this.g);
                this.e.b(th);
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            this.h.cancel();
            if (compareAndSet(false, true)) {
                kf7<T> kf7Var = this.f;
                a aVar = this.g;
                synchronized (kf7Var) {
                    a aVar2 = kf7Var.i;
                    if (aVar2 != null && aVar2 == aVar) {
                        long j = aVar.f - 1;
                        aVar.f = j;
                        if (j == 0 && aVar.g) {
                            kf7Var.y(aVar);
                        }
                    }
                }
            }
        }

        @Override // defpackage.x38
        public void d(T t) {
            this.e.d(t);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.h, y38Var)) {
                this.h = y38Var;
                this.e.e(this);
            }
        }

        @Override // defpackage.y38
        public void l(long j) {
            this.h.l(j);
        }
    }

    public kf7(pc7<T> pc7Var) {
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        this.f = pc7Var;
        this.g = 1;
        this.h = timeUnit;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        a aVar;
        boolean z;
        synchronized (this) {
            aVar = this.i;
            if (aVar == null) {
                aVar = new a(this);
                this.i = aVar;
            }
            long j = aVar.f;
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            long j2 = j + 1;
            aVar.f = j2;
            z = true;
            if (aVar.g || j2 != this.g) {
                z = false;
            } else {
                aVar.g = true;
            }
        }
        this.f.s(new b(x38Var, this, aVar));
        if (z) {
            this.f.x(aVar);
        }
    }

    public void w(a aVar) {
        pc7<T> pc7Var = this.f;
        if (pc7Var instanceof ic7) {
            ((ic7) pc7Var).k();
        } else if (pc7Var instanceof bd7) {
            ((bd7) pc7Var).g(aVar.get());
        }
    }

    public void x(a aVar) {
        synchronized (this) {
            if (this.f instanceof if7) {
                a aVar2 = this.i;
                if (aVar2 != null && aVar2 == aVar) {
                    this.i = null;
                    Objects.requireNonNull(aVar);
                }
                long j = aVar.f - 1;
                aVar.f = j;
                if (j == 0) {
                    w(aVar);
                }
            } else {
                a aVar3 = this.i;
                if (aVar3 != null && aVar3 == aVar) {
                    Objects.requireNonNull(aVar);
                    long j2 = aVar.f - 1;
                    aVar.f = j2;
                    if (j2 == 0) {
                        this.i = null;
                        w(aVar);
                    }
                }
            }
        }
    }

    public void y(a aVar) {
        synchronized (this) {
            if (aVar.f == 0 && aVar == this.i) {
                this.i = null;
                ic7 ic7Var = aVar.get();
                yc7.i(aVar);
                pc7<T> pc7Var = this.f;
                if (pc7Var instanceof ic7) {
                    ((ic7) pc7Var).k();
                } else if (pc7Var instanceof bd7) {
                    if (ic7Var == null) {
                        aVar.h = true;
                    } else {
                        ((bd7) pc7Var).g(ic7Var);
                    }
                }
            }
        }
    }
}
