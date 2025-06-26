package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [bd7] */
/* loaded from: classes2.dex */
public final class hf7<T> extends pc7<T> implements Object<T> {
    public final w38<T> f;
    public final int g;
    public final AtomicReference<b<T>> h = new AtomicReference<>();

    public static final class a<T> extends AtomicLong implements y38 {
        public final x38<? super T> e;
        public final b<T> f;
        public long g;

        public a(x38<? super T> x38Var, b<T> bVar) {
            this.e = x38Var;
            this.f = bVar;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // defpackage.y38
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f.i(this);
                this.f.g();
            }
        }

        @Override // defpackage.y38
        public void l(long j) {
            n56.g(this, j);
            this.f.g();
        }
    }

    public static final class b<T> extends AtomicInteger implements pb7<T>, ic7 {
        public static final a[] o = new a[0];
        public static final a[] p = new a[0];
        public final AtomicReference<b<T>> e;
        public final AtomicReference<y38> f = new AtomicReference<>();
        public final AtomicBoolean g = new AtomicBoolean();
        public final AtomicReference<a<T>[]> h = new AtomicReference<>(o);
        public final int i;
        public volatile nd7<T> j;
        public int k;
        public volatile boolean l;
        public Throwable m;
        public int n;

        public b(AtomicReference<b<T>> atomicReference, int i) {
            this.e = atomicReference;
            this.i = i;
        }

        @Override // defpackage.x38
        public void a() {
            this.l = true;
            g();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.l) {
                n56.z1(th);
                return;
            }
            this.m = th;
            this.l = true;
            g();
        }

        public boolean c(boolean z, boolean z2) {
            if (!z || !z2) {
                return false;
            }
            Throwable th = this.m;
            if (th != null) {
                j(th);
                return true;
            }
            for (a<T> aVar : this.h.getAndSet(p)) {
                if (!aVar.a()) {
                    aVar.e.a();
                }
            }
            return true;
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.k != 0 || this.j.offer(t)) {
                g();
            } else {
                b(new lc7("Prefetch queue is full?!"));
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.x(this.f, y38Var)) {
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(7);
                    if (i == 1) {
                        this.k = i;
                        this.j = kd7Var;
                        this.l = true;
                        g();
                        return;
                    }
                    if (i == 2) {
                        this.k = i;
                        this.j = kd7Var;
                        y38Var.l(this.i);
                        return;
                    }
                }
                this.j = new th7(this.i);
                y38Var.l(this.i);
            }
        }

        public void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            nd7<T> nd7Var = this.j;
            int i = this.n;
            int i2 = this.i;
            int i3 = i2 - (i2 >> 2);
            boolean z = this.k != 1;
            int iAddAndGet = 1;
            nd7<T> nd7Var2 = nd7Var;
            int i4 = i;
            while (true) {
                if (nd7Var2 != null) {
                    long jMin = Long.MAX_VALUE;
                    a<T>[] aVarArr = this.h.get();
                    boolean z2 = false;
                    for (a<T> aVar : aVarArr) {
                        long j = aVar.get();
                        if (j != Long.MIN_VALUE) {
                            jMin = Math.min(j - aVar.g, jMin);
                            z2 = true;
                        }
                    }
                    if (!z2) {
                        jMin = 0;
                    }
                    for (long j2 = 0; jMin != j2; j2 = 0) {
                        boolean z3 = this.l;
                        try {
                            T tPoll = nd7Var2.poll();
                            boolean z4 = tPoll == null;
                            if (c(z3, z4)) {
                                return;
                            }
                            if (z4) {
                                break;
                            }
                            for (a<T> aVar2 : aVarArr) {
                                if (!aVar2.a()) {
                                    aVar2.e.d(tPoll);
                                    aVar2.g++;
                                }
                            }
                            if (z && (i4 = i4 + 1) == i3) {
                                this.f.get().l(i3);
                                i4 = 0;
                            }
                            jMin--;
                            if (aVarArr != this.h.get()) {
                                break;
                            }
                        } catch (Throwable th) {
                            n56.r2(th);
                            this.f.get().cancel();
                            nd7Var2.clear();
                            this.l = true;
                            j(th);
                            return;
                        }
                    }
                    if (c(this.l, nd7Var2.isEmpty())) {
                        return;
                    }
                }
                this.n = i4;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (nd7Var2 == null) {
                    nd7Var2 = this.j;
                }
            }
        }

        public boolean h() {
            return this.h.get() == p;
        }

        public void i(a<T> aVar) {
            a<T>[] aVarArr;
            a<T>[] aVarArr2;
            do {
                aVarArr = this.h.get();
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
                    aVarArr2 = o;
                } else {
                    a<T>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                    System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.h.compareAndSet(aVarArr, aVarArr2));
        }

        public void j(Throwable th) {
            for (a<T> aVar : this.h.getAndSet(p)) {
                if (!aVar.a()) {
                    aVar.e.b(th);
                }
            }
        }

        @Override // defpackage.ic7
        public void k() {
            this.h.getAndSet(p);
            this.e.compareAndSet(this, null);
            pi7.i(this.f);
        }
    }

    public hf7(w38<T> w38Var, int i) {
        this.f = w38Var;
        this.g = i;
    }

    public void g(ic7 ic7Var) {
        this.h.compareAndSet((b) ic7Var, null);
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        b<T> bVar;
        boolean z;
        while (true) {
            bVar = this.h.get();
            if (bVar != null) {
                break;
            }
            b<T> bVar2 = new b<>(this.h, this.g);
            if (this.h.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        a<T> aVar = new a<>(x38Var, bVar);
        x38Var.e(aVar);
        while (true) {
            a<T>[] aVarArr = bVar.h.get();
            z = false;
            if (aVarArr == b.p) {
                break;
            }
            int length = aVarArr.length;
            a<T>[] aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
            if (bVar.h.compareAndSet(aVarArr, aVarArr2)) {
                z = true;
                break;
            }
        }
        if (z) {
            if (aVar.a()) {
                bVar.i(aVar);
                return;
            } else {
                bVar.g();
                return;
            }
        }
        Throwable th = bVar.m;
        if (th != null) {
            x38Var.b(th);
        } else {
            x38Var.a();
        }
    }

    @Override // defpackage.pc7
    public void x(tc7<? super ic7> tc7Var) {
        b<T> bVar;
        while (true) {
            bVar = this.h.get();
            if (bVar != null && !bVar.h()) {
                break;
            }
            b<T> bVar2 = new b<>(this.h, this.g);
            if (this.h.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z = !bVar.g.get() && bVar.g.compareAndSet(false, true);
        try {
            tc7Var.accept(bVar);
            if (z) {
                this.f.i(bVar);
            }
        } catch (Throwable th) {
            n56.r2(th);
            throw vi7.d(th);
        }
    }
}
