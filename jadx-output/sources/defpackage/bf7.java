package defpackage;

import defpackage.zb7;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class bf7<T> extends he7<T, T> {
    public final zb7 g;
    public final boolean h;
    public final int i;

    public static abstract class a<T> extends ji7<T> implements pb7<T>, Runnable {
        public final zb7.b e;
        public final boolean f;
        public final int g;
        public final int h;
        public final AtomicLong i = new AtomicLong();
        public y38 j;
        public nd7<T> k;
        public volatile boolean l;
        public volatile boolean m;
        public Throwable n;
        public int o;
        public long p;
        public boolean q;

        public a(zb7.b bVar, boolean z, int i) {
            this.e = bVar;
            this.f = z;
            this.g = i;
            this.h = i - (i >> 2);
        }

        @Override // defpackage.x38
        public final void a() {
            if (this.m) {
                return;
            }
            this.m = true;
            m();
        }

        @Override // defpackage.x38
        public final void b(Throwable th) {
            if (this.m) {
                n56.z1(th);
                return;
            }
            this.n = th;
            this.m = true;
            m();
        }

        @Override // defpackage.y38
        public final void cancel() {
            if (this.l) {
                return;
            }
            this.l = true;
            this.j.cancel();
            this.e.k();
            if (this.q || getAndIncrement() != 0) {
                return;
            }
            this.k.clear();
        }

        @Override // defpackage.nd7
        public final void clear() {
            this.k.clear();
        }

        @Override // defpackage.x38
        public final void d(T t) {
            if (this.m) {
                return;
            }
            if (this.o == 2) {
                m();
                return;
            }
            if (!this.k.offer(t)) {
                this.j.cancel();
                this.n = new lc7("Queue is full?!");
                this.m = true;
            }
            m();
        }

        public final boolean g(boolean z, boolean z2, x38<?> x38Var) {
            if (this.l) {
                this.k.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.f) {
                if (!z2) {
                    return false;
                }
                this.l = true;
                Throwable th = this.n;
                if (th != null) {
                    x38Var.b(th);
                } else {
                    x38Var.a();
                }
                this.e.k();
                return true;
            }
            Throwable th2 = this.n;
            if (th2 != null) {
                this.l = true;
                this.k.clear();
                x38Var.b(th2);
                this.e.k();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.l = true;
            x38Var.a();
            this.e.k();
            return true;
        }

        public abstract void h();

        @Override // defpackage.jd7
        public final int i(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.q = true;
            return 2;
        }

        @Override // defpackage.nd7
        public final boolean isEmpty() {
            return this.k.isEmpty();
        }

        public abstract void j();

        public abstract void k();

        @Override // defpackage.y38
        public final void l(long j) {
            if (pi7.y(j)) {
                n56.e(this.i, j);
                m();
            }
        }

        public final void m() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.e.b(this);
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.q) {
                j();
            } else if (this.o == 1) {
                k();
            } else {
                h();
            }
        }
    }

    public static final class b<T> extends a<T> {
        public final fd7<? super T> r;
        public long s;

        public b(fd7<? super T> fd7Var, zb7.b bVar, boolean z, int i) {
            super(bVar, z, i);
            this.r = fd7Var;
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.j, y38Var)) {
                this.j = y38Var;
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(7);
                    if (i == 1) {
                        this.o = 1;
                        this.k = kd7Var;
                        this.m = true;
                        this.r.e(this);
                        return;
                    }
                    if (i == 2) {
                        this.o = 2;
                        this.k = kd7Var;
                        this.r.e(this);
                        y38Var.l(this.g);
                        return;
                    }
                }
                this.k = new th7(this.g);
                this.r.e(this);
                y38Var.l(this.g);
            }
        }

        @Override // bf7.a
        public void h() {
            fd7<? super T> fd7Var = this.r;
            nd7<T> nd7Var = this.k;
            long j = this.p;
            long j2 = this.s;
            int iAddAndGet = 1;
            while (true) {
                long j3 = this.i.get();
                while (j != j3) {
                    boolean z = this.m;
                    try {
                        T tPoll = nd7Var.poll();
                        boolean z2 = tPoll == null;
                        if (g(z, z2, fd7Var)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        if (fd7Var.f(tPoll)) {
                            j++;
                        }
                        j2++;
                        if (j2 == this.h) {
                            this.j.l(j2);
                            j2 = 0;
                        }
                    } catch (Throwable th) {
                        n56.r2(th);
                        this.l = true;
                        this.j.cancel();
                        nd7Var.clear();
                        fd7Var.b(th);
                        this.e.k();
                        return;
                    }
                }
                if (j == j3 && g(this.m, nd7Var.isEmpty(), fd7Var)) {
                    return;
                }
                int i = get();
                if (iAddAndGet == i) {
                    this.p = j;
                    this.s = j2;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i;
                }
            }
        }

        @Override // bf7.a
        public void j() {
            int iAddAndGet = 1;
            while (!this.l) {
                boolean z = this.m;
                this.r.d(null);
                if (z) {
                    this.l = true;
                    Throwable th = this.n;
                    if (th != null) {
                        this.r.b(th);
                    } else {
                        this.r.a();
                    }
                    this.e.k();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // bf7.a
        public void k() {
            fd7<? super T> fd7Var = this.r;
            nd7<T> nd7Var = this.k;
            long j = this.p;
            int iAddAndGet = 1;
            while (true) {
                long j2 = this.i.get();
                while (j != j2) {
                    try {
                        T tPoll = nd7Var.poll();
                        if (this.l) {
                            return;
                        }
                        if (tPoll == null) {
                            this.l = true;
                            fd7Var.a();
                            this.e.k();
                            return;
                        } else if (fd7Var.f(tPoll)) {
                            j++;
                        }
                    } catch (Throwable th) {
                        n56.r2(th);
                        this.l = true;
                        this.j.cancel();
                        fd7Var.b(th);
                        this.e.k();
                        return;
                    }
                }
                if (this.l) {
                    return;
                }
                if (nd7Var.isEmpty()) {
                    this.l = true;
                    fd7Var.a();
                    this.e.k();
                    return;
                } else {
                    int i = get();
                    if (iAddAndGet == i) {
                        this.p = j;
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else {
                        iAddAndGet = i;
                    }
                }
            }
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            T tPoll = this.k.poll();
            if (tPoll != null && this.o != 1) {
                long j = this.s + 1;
                if (j == this.h) {
                    this.s = 0L;
                    this.j.l(j);
                } else {
                    this.s = j;
                }
            }
            return tPoll;
        }
    }

    public static final class c<T> extends a<T> implements pb7<T> {
        public final x38<? super T> r;

        public c(x38<? super T> x38Var, zb7.b bVar, boolean z, int i) {
            super(bVar, z, i);
            this.r = x38Var;
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.j, y38Var)) {
                this.j = y38Var;
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(7);
                    if (i == 1) {
                        this.o = 1;
                        this.k = kd7Var;
                        this.m = true;
                        this.r.e(this);
                        return;
                    }
                    if (i == 2) {
                        this.o = 2;
                        this.k = kd7Var;
                        this.r.e(this);
                        y38Var.l(this.g);
                        return;
                    }
                }
                this.k = new th7(this.g);
                this.r.e(this);
                y38Var.l(this.g);
            }
        }

        @Override // bf7.a
        public void h() {
            x38<? super T> x38Var = this.r;
            nd7<T> nd7Var = this.k;
            long j = this.p;
            int iAddAndGet = 1;
            while (true) {
                long jAddAndGet = this.i.get();
                while (j != jAddAndGet) {
                    boolean z = this.m;
                    try {
                        T tPoll = nd7Var.poll();
                        boolean z2 = tPoll == null;
                        if (g(z, z2, x38Var)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        x38Var.d(tPoll);
                        j++;
                        if (j == this.h) {
                            if (jAddAndGet != Long.MAX_VALUE) {
                                jAddAndGet = this.i.addAndGet(-j);
                            }
                            this.j.l(j);
                            j = 0;
                        }
                    } catch (Throwable th) {
                        n56.r2(th);
                        this.l = true;
                        this.j.cancel();
                        nd7Var.clear();
                        x38Var.b(th);
                        this.e.k();
                        return;
                    }
                }
                if (j == jAddAndGet && g(this.m, nd7Var.isEmpty(), x38Var)) {
                    return;
                }
                int i = get();
                if (iAddAndGet == i) {
                    this.p = j;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i;
                }
            }
        }

        @Override // bf7.a
        public void j() {
            int iAddAndGet = 1;
            while (!this.l) {
                boolean z = this.m;
                this.r.d(null);
                if (z) {
                    this.l = true;
                    Throwable th = this.n;
                    if (th != null) {
                        this.r.b(th);
                    } else {
                        this.r.a();
                    }
                    this.e.k();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // bf7.a
        public void k() {
            x38<? super T> x38Var = this.r;
            nd7<T> nd7Var = this.k;
            long j = this.p;
            int iAddAndGet = 1;
            while (true) {
                long j2 = this.i.get();
                while (j != j2) {
                    try {
                        T tPoll = nd7Var.poll();
                        if (this.l) {
                            return;
                        }
                        if (tPoll == null) {
                            this.l = true;
                            x38Var.a();
                            this.e.k();
                            return;
                        }
                        x38Var.d(tPoll);
                        j++;
                    } catch (Throwable th) {
                        n56.r2(th);
                        this.l = true;
                        this.j.cancel();
                        x38Var.b(th);
                        this.e.k();
                        return;
                    }
                }
                if (this.l) {
                    return;
                }
                if (nd7Var.isEmpty()) {
                    this.l = true;
                    x38Var.a();
                    this.e.k();
                    return;
                } else {
                    int i = get();
                    if (iAddAndGet == i) {
                        this.p = j;
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else {
                        iAddAndGet = i;
                    }
                }
            }
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            T tPoll = this.k.poll();
            if (tPoll != null && this.o != 1) {
                long j = this.p + 1;
                if (j == this.h) {
                    this.p = 0L;
                    this.j.l(j);
                } else {
                    this.p = j;
                }
            }
            return tPoll;
        }
    }

    public bf7(mb7<T> mb7Var, zb7 zb7Var, boolean z, int i) {
        super(mb7Var);
        this.g = zb7Var;
        this.h = z;
        this.i = i;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        zb7.b bVarA = this.g.a();
        if (x38Var instanceof fd7) {
            this.f.s(new b((fd7) x38Var, bVarA, this.h, this.i));
        } else {
            this.f.s(new c(x38Var, bVarA, this.h, this.i));
        }
    }
}
