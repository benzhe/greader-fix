package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class qe7<T, U> extends he7<T, U> {
    public final uc7<? super T, ? extends w38<? extends U>> g;
    public final boolean h;
    public final int i;
    public final int j;

    public static final class a<T, U> extends AtomicReference<y38> implements pb7<U>, ic7 {
        public final long e;
        public final b<T, U> f;
        public final int g;
        public final int h;
        public volatile boolean i;
        public volatile nd7<U> j;
        public long k;
        public int l;

        public a(b<T, U> bVar, long j) {
            this.e = j;
            this.f = bVar;
            int i = bVar.i;
            this.h = i;
            this.g = i >> 2;
        }

        @Override // defpackage.x38
        public void a() {
            this.i = true;
            this.f.g();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            lazySet(pi7.CANCELLED);
            b<T, U> bVar = this.f;
            if (!vi7.a(bVar.l, th)) {
                n56.z1(th);
                return;
            }
            this.i = true;
            if (!bVar.g) {
                bVar.p.cancel();
                for (a<?, ?> aVar : bVar.n.getAndSet(b.w)) {
                    pi7.i(aVar);
                }
            }
            bVar.g();
        }

        public void c(long j) {
            if (this.l != 1) {
                long j2 = this.k + j;
                if (j2 < this.g) {
                    this.k = j2;
                } else {
                    this.k = 0L;
                    get().l(j2);
                }
            }
        }

        @Override // defpackage.x38
        public void d(U u) {
            if (this.l == 2) {
                this.f.g();
                return;
            }
            b<T, U> bVar = this.f;
            if (bVar.get() == 0 && bVar.compareAndSet(0, 1)) {
                long j = bVar.o.get();
                nd7 th7Var = this.j;
                if (j == 0 || !(th7Var == null || th7Var.isEmpty())) {
                    if (th7Var == null && (th7Var = this.j) == null) {
                        th7Var = new th7(bVar.i);
                        this.j = th7Var;
                    }
                    if (!th7Var.offer(u)) {
                        bVar.b(new lc7("Inner queue full?!"));
                        return;
                    }
                } else {
                    bVar.e.d(u);
                    if (j != Long.MAX_VALUE) {
                        bVar.o.decrementAndGet();
                    }
                    c(1L);
                }
                if (bVar.decrementAndGet() == 0) {
                    return;
                }
            } else {
                nd7 th7Var2 = this.j;
                if (th7Var2 == null) {
                    th7Var2 = new th7(bVar.i);
                    this.j = th7Var2;
                }
                if (!th7Var2.offer(u)) {
                    bVar.b(new lc7("Inner queue full?!"));
                    return;
                } else if (bVar.getAndIncrement() != 0) {
                    return;
                }
            }
            bVar.h();
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.x(this, y38Var)) {
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(7);
                    if (i == 1) {
                        this.l = i;
                        this.j = kd7Var;
                        this.i = true;
                        this.f.g();
                        return;
                    }
                    if (i == 2) {
                        this.l = i;
                        this.j = kd7Var;
                    }
                }
                y38Var.l(this.h);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            pi7.i(this);
        }
    }

    public static final class b<T, U> extends AtomicInteger implements pb7<T>, y38 {
        public static final a<?, ?>[] v = new a[0];
        public static final a<?, ?>[] w = new a[0];
        public final x38<? super U> e;
        public final uc7<? super T, ? extends w38<? extends U>> f;
        public final boolean g;
        public final int h;
        public final int i;
        public volatile md7<U> j;
        public volatile boolean k;
        public final si7 l = new si7();
        public volatile boolean m;
        public final AtomicReference<a<?, ?>[]> n;
        public final AtomicLong o;
        public y38 p;
        public long q;
        public long r;
        public int s;
        public int t;
        public final int u;

        public b(x38<? super U> x38Var, uc7<? super T, ? extends w38<? extends U>> uc7Var, boolean z, int i, int i2) {
            AtomicReference<a<?, ?>[]> atomicReference = new AtomicReference<>();
            this.n = atomicReference;
            this.o = new AtomicLong();
            this.e = x38Var;
            this.f = uc7Var;
            this.g = z;
            this.h = i;
            this.i = i2;
            this.u = Math.max(1, i >> 1);
            atomicReference.lazySet(v);
        }

        @Override // defpackage.x38
        public void a() {
            if (this.k) {
                return;
            }
            this.k = true;
            g();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.k) {
                n56.z1(th);
                return;
            }
            if (!vi7.a(this.l, th)) {
                n56.z1(th);
                return;
            }
            this.k = true;
            if (!this.g) {
                for (a<?, ?> aVar : this.n.getAndSet(w)) {
                    aVar.k();
                }
            }
            g();
        }

        public boolean c() {
            if (this.m) {
                md7<U> md7Var = this.j;
                if (md7Var != null) {
                    md7Var.clear();
                }
                return true;
            }
            if (this.g || this.l.get() == null) {
                return false;
            }
            md7<U> md7Var2 = this.j;
            if (md7Var2 != null) {
                md7Var2.clear();
            }
            Throwable thB = vi7.b(this.l);
            if (thB != vi7.a) {
                this.e.b(thB);
            }
            return true;
        }

        @Override // defpackage.y38
        public void cancel() {
            md7<U> md7Var;
            a<?, ?>[] andSet;
            if (this.m) {
                return;
            }
            this.m = true;
            this.p.cancel();
            a<?, ?>[] aVarArr = this.n.get();
            a<?, ?>[] aVarArr2 = w;
            if (aVarArr != aVarArr2 && (andSet = this.n.getAndSet(aVarArr2)) != aVarArr2) {
                for (a<?, ?> aVar : andSet) {
                    pi7.i(aVar);
                }
                Throwable thB = vi7.b(this.l);
                if (thB != null && thB != vi7.a) {
                    n56.z1(thB);
                }
            }
            if (getAndIncrement() != 0 || (md7Var = this.j) == null) {
                return;
            }
            md7Var.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.x38
        public void d(T t) {
            if (this.k) {
                return;
            }
            try {
                w38<? extends U> w38VarApply = this.f.apply(t);
                Objects.requireNonNull(w38VarApply, "The mapper returned a null Publisher");
                w38<? extends U> w38Var = w38VarApply;
                boolean z = false;
                if (!(w38Var instanceof Callable)) {
                    long j = this.q;
                    this.q = 1 + j;
                    a<?, ?> aVar = new a<>(this, j);
                    while (true) {
                        a<?, ?>[] aVarArr = this.n.get();
                        if (aVarArr == w) {
                            pi7.i(aVar);
                            break;
                        }
                        int length = aVarArr.length;
                        a<?, ?>[] aVarArr2 = new a[length + 1];
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                        aVarArr2[length] = aVar;
                        if (this.n.compareAndSet(aVarArr, aVarArr2)) {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        w38Var.i(aVar);
                        return;
                    }
                    return;
                }
                try {
                    Object objCall = ((Callable) w38Var).call();
                    if (objCall == null) {
                        if (this.h == Integer.MAX_VALUE || this.m) {
                            return;
                        }
                        int i = this.t + 1;
                        this.t = i;
                        int i2 = this.u;
                        if (i == i2) {
                            this.t = 0;
                            this.p.l(i2);
                            return;
                        }
                        return;
                    }
                    if (get() == 0 && compareAndSet(0, 1)) {
                        long j2 = this.o.get();
                        nd7<U> nd7VarI = this.j;
                        if (j2 == 0 || !(nd7VarI == 0 || nd7VarI.isEmpty())) {
                            if (nd7VarI == 0) {
                                nd7VarI = i();
                            }
                            if (!nd7VarI.offer(objCall)) {
                                b(new IllegalStateException("Scalar queue full?!"));
                                return;
                            }
                        } else {
                            this.e.d(objCall);
                            if (j2 != Long.MAX_VALUE) {
                                this.o.decrementAndGet();
                            }
                            if (this.h != Integer.MAX_VALUE && !this.m) {
                                int i3 = this.t + 1;
                                this.t = i3;
                                int i4 = this.u;
                                if (i3 == i4) {
                                    this.t = 0;
                                    this.p.l(i4);
                                }
                            }
                        }
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    } else if (!i().offer(objCall)) {
                        b(new IllegalStateException("Scalar queue full?!"));
                        return;
                    } else if (getAndIncrement() != 0) {
                        return;
                    }
                    h();
                } catch (Throwable th) {
                    n56.r2(th);
                    vi7.a(this.l, th);
                    g();
                }
            } catch (Throwable th2) {
                n56.r2(th2);
                this.p.cancel();
                b(th2);
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.p, y38Var)) {
                this.p = y38Var;
                this.e.e(this);
                if (this.m) {
                    return;
                }
                int i = this.h;
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

        /* JADX WARN: Multi-variable type inference failed */
        public void h() {
            long j;
            long j2;
            boolean z;
            a<T, U>[] aVarArr;
            int i;
            long j3;
            Object obj;
            x38<? super U> x38Var = this.e;
            int iAddAndGet = 1;
            while (!c()) {
                md7<U> md7Var = this.j;
                long jAddAndGet = this.o.get();
                boolean z2 = jAddAndGet == Long.MAX_VALUE;
                long j4 = 0;
                long j5 = 0;
                if (md7Var != null) {
                    do {
                        long j6 = 0;
                        obj = null;
                        while (true) {
                            if (jAddAndGet == 0) {
                                break;
                            }
                            U uPoll = md7Var.poll();
                            if (c()) {
                                return;
                            }
                            if (uPoll == null) {
                                obj = uPoll;
                                break;
                            }
                            x38Var.d(uPoll);
                            j5++;
                            j6++;
                            jAddAndGet--;
                            obj = uPoll;
                        }
                        if (j6 != 0) {
                            jAddAndGet = z2 ? Long.MAX_VALUE : this.o.addAndGet(-j6);
                        }
                        if (jAddAndGet == 0) {
                            break;
                        }
                    } while (obj != null);
                }
                boolean z3 = this.k;
                md7<U> md7Var2 = this.j;
                a<?, ?>[] aVarArr2 = this.n.get();
                int length = aVarArr2.length;
                if (z3 && ((md7Var2 == null || md7Var2.isEmpty()) && length == 0)) {
                    Throwable thB = vi7.b(this.l);
                    if (thB != vi7.a) {
                        if (thB == null) {
                            x38Var.a();
                            return;
                        } else {
                            x38Var.b(thB);
                            return;
                        }
                    }
                    return;
                }
                int i2 = iAddAndGet;
                if (length != 0) {
                    long j7 = this.r;
                    int i3 = this.s;
                    if (length <= i3 || aVarArr2[i3].e != j7) {
                        if (length <= i3) {
                            i3 = 0;
                        }
                        for (int i4 = 0; i4 < length && aVarArr2[i3].e != j7; i4++) {
                            i3++;
                            if (i3 == length) {
                                i3 = 0;
                            }
                        }
                        this.s = i3;
                        this.r = aVarArr2[i3].e;
                    }
                    int i5 = i3;
                    boolean z4 = false;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length) {
                            aVarArr = aVarArr2;
                            z = z4;
                            break;
                        }
                        if (c()) {
                            return;
                        }
                        a<T, U> aVar = aVarArr2[i5];
                        U uPoll2 = null;
                        while (!c()) {
                            nd7<U> nd7Var = aVar.j;
                            if (nd7Var == null) {
                                aVarArr = aVarArr2;
                                i = length;
                            } else {
                                aVarArr = aVarArr2;
                                i = length;
                                long j8 = j4;
                                while (jAddAndGet != j4) {
                                    try {
                                        uPoll2 = nd7Var.poll();
                                        if (uPoll2 == null) {
                                            break;
                                        }
                                        x38Var.d(uPoll2);
                                        if (c()) {
                                            return;
                                        }
                                        jAddAndGet--;
                                        j8++;
                                    } catch (Throwable th) {
                                        n56.r2(th);
                                        pi7.i(aVar);
                                        vi7.a(this.l, th);
                                        if (!this.g) {
                                            this.p.cancel();
                                        }
                                        if (c()) {
                                            return;
                                        }
                                        j(aVar);
                                        i6++;
                                        length = i;
                                        z4 = true;
                                    }
                                }
                                if (j8 != j4) {
                                    jAddAndGet = !z2 ? this.o.addAndGet(-j8) : Long.MAX_VALUE;
                                    aVar.c(j8);
                                    j3 = 0;
                                } else {
                                    j3 = j4;
                                }
                                if (jAddAndGet != j3 && uPoll2 != null) {
                                    aVarArr2 = aVarArr;
                                    length = i;
                                    j4 = 0;
                                }
                            }
                            boolean z5 = aVar.i;
                            nd7<U> nd7Var2 = aVar.j;
                            if (z5 && (nd7Var2 == null || nd7Var2.isEmpty())) {
                                j(aVar);
                                if (c()) {
                                    return;
                                }
                                j5++;
                                z4 = true;
                            }
                            if (jAddAndGet == 0) {
                                z = z4;
                                break;
                            }
                            i5++;
                            length = i;
                            if (i5 == length) {
                                i5 = 0;
                            }
                            i6++;
                            aVarArr2 = aVarArr;
                            j4 = 0;
                        }
                        return;
                    }
                    this.s = i5;
                    this.r = aVarArr[i5].e;
                    j2 = j5;
                    j = 0;
                } else {
                    j = 0;
                    j2 = j5;
                    z = false;
                }
                if (j2 != j && !this.m) {
                    this.p.l(j2);
                }
                if (z) {
                    iAddAndGet = i2;
                } else {
                    iAddAndGet = addAndGet(-i2);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        public nd7<U> i() {
            md7<U> uh7Var = this.j;
            if (uh7Var == null) {
                uh7Var = this.h == Integer.MAX_VALUE ? new uh7<>(this.i) : new th7<>(this.h);
                this.j = uh7Var;
            }
            return uh7Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void j(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.n.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (aVarArr[i] == aVar) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    aVarArr2 = v;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                    System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.n.compareAndSet(aVarArr, aVarArr2));
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.e(this.o, j);
                g();
            }
        }
    }

    public qe7(mb7<T> mb7Var, uc7<? super T, ? extends w38<? extends U>> uc7Var, boolean z, int i, int i2) {
        super(mb7Var);
        this.g = uc7Var;
        this.h = z;
        this.i = i;
        this.j = i2;
    }

    @Override // defpackage.mb7
    public void t(x38<? super U> x38Var) {
        if (n56.z2(this.f, x38Var, this.g)) {
            return;
        }
        this.f.s(new b(x38Var, this.g, this.h, this.i, this.j));
    }
}
