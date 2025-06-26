package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class cf7<T> extends he7<T, T> {
    public final int g;
    public final boolean h;
    public final boolean i;
    public final qc7 j;

    public static final class a<T> extends ji7<T> implements pb7<T> {
        public final x38<? super T> e;
        public final md7<T> f;
        public final boolean g;
        public final qc7 h;
        public y38 i;
        public volatile boolean j;
        public volatile boolean k;
        public Throwable l;
        public final AtomicLong m = new AtomicLong();
        public boolean n;

        public a(x38<? super T> x38Var, int i, boolean z, boolean z2, qc7 qc7Var) {
            this.e = x38Var;
            this.h = qc7Var;
            this.g = z2;
            this.f = z ? new uh7<>(i) : new th7<>(i);
        }

        @Override // defpackage.x38
        public void a() {
            this.k = true;
            if (this.n) {
                this.e.a();
            } else {
                h();
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            this.l = th;
            this.k = true;
            if (this.n) {
                this.e.b(th);
            } else {
                h();
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            if (this.j) {
                return;
            }
            this.j = true;
            this.i.cancel();
            if (this.n || getAndIncrement() != 0) {
                return;
            }
            this.f.clear();
        }

        @Override // defpackage.nd7
        public void clear() {
            this.f.clear();
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.f.offer(t)) {
                if (this.n) {
                    this.e.d(null);
                    return;
                } else {
                    h();
                    return;
                }
            }
            this.i.cancel();
            lc7 lc7Var = new lc7("Buffer is full");
            try {
                this.h.run();
            } catch (Throwable th) {
                n56.r2(th);
                lc7Var.initCause(th);
            }
            b(lc7Var);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.i, y38Var)) {
                this.i = y38Var;
                this.e.e(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }

        public boolean g(boolean z, boolean z2, x38<? super T> x38Var) {
            if (this.j) {
                this.f.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.g) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.l;
                if (th != null) {
                    x38Var.b(th);
                } else {
                    x38Var.a();
                }
                return true;
            }
            Throwable th2 = this.l;
            if (th2 != null) {
                this.f.clear();
                x38Var.b(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            x38Var.a();
            return true;
        }

        public void h() {
            if (getAndIncrement() == 0) {
                md7<T> md7Var = this.f;
                x38<? super T> x38Var = this.e;
                int iAddAndGet = 1;
                while (!g(this.k, md7Var.isEmpty(), x38Var)) {
                    long j = this.m.get();
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.k;
                        T tPoll = md7Var.poll();
                        boolean z2 = tPoll == null;
                        if (g(z, z2, x38Var)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        x38Var.d(tPoll);
                        j2++;
                    }
                    if (j2 == j && g(this.k, md7Var.isEmpty(), x38Var)) {
                        return;
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        this.m.addAndGet(-j2);
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.n = true;
            return 2;
        }

        @Override // defpackage.nd7
        public boolean isEmpty() {
            return this.f.isEmpty();
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (this.n || !pi7.y(j)) {
                return;
            }
            n56.e(this.m, j);
            h();
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            return this.f.poll();
        }
    }

    public cf7(mb7<T> mb7Var, int i, boolean z, boolean z2, qc7 qc7Var) {
        super(mb7Var);
        this.g = i;
        this.h = z;
        this.i = z2;
        this.j = qc7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.s(new a(x38Var, this.g, this.h, this.i, this.j));
    }
}
