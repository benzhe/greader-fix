package defpackage;

import defpackage.wi7;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [bd7] */
/* loaded from: classes2.dex */
public final class of7<T> extends pc7<T> implements Object<T> {
    public static final Callable j = new a();
    public final mb7<T> f;
    public final AtomicReference<e<T>> g;
    public final Callable<? extends c<T>> h;
    public final w38<T> i;

    public static final class a implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public Object call() {
            return new f(16);
        }
    }

    public static final class b<T> extends AtomicLong implements y38, ic7 {
        public final e<T> e;
        public final x38<? super T> f;
        public Object g;
        public final AtomicLong h = new AtomicLong();
        public boolean i;
        public boolean j;

        public b(e<T> eVar, x38<? super T> x38Var) {
            this.e = eVar;
            this.f = x38Var;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // defpackage.y38
        public void cancel() {
            k();
        }

        @Override // defpackage.ic7
        public void k() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.e.h(this);
                this.e.g();
                this.g = null;
            }
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (!pi7.y(j) || n56.g(this, j) == Long.MIN_VALUE) {
                return;
            }
            n56.e(this.h, j);
            this.e.g();
            this.e.e.h(this);
        }
    }

    public interface c<T> {
        void d();

        void h(b<T> bVar);

        void j(T t);

        void l(Throwable th);
    }

    public static final class d<T> implements w38<T> {
        public final AtomicReference<e<T>> e;
        public final Callable<? extends c<T>> f;

        public d(AtomicReference<e<T>> atomicReference, Callable<? extends c<T>> callable) {
            this.e = atomicReference;
            this.f = callable;
        }

        @Override // defpackage.w38
        public void i(x38<? super T> x38Var) {
            e<T> eVar;
            b<T>[] bVarArr;
            b<T>[] bVarArr2;
            while (true) {
                eVar = this.e.get();
                if (eVar != null) {
                    break;
                }
                try {
                    e<T> eVar2 = new e<>(this.f.call());
                    if (this.e.compareAndSet(null, eVar2)) {
                        eVar = eVar2;
                        break;
                    }
                } catch (Throwable th) {
                    n56.r2(th);
                    x38Var.e(mi7.INSTANCE);
                    x38Var.b(th);
                    return;
                }
            }
            b<T> bVar = new b<>(eVar, x38Var);
            x38Var.e(bVar);
            do {
                bVarArr = eVar.g.get();
                if (bVarArr == e.m) {
                    break;
                }
                int length = bVarArr.length;
                bVarArr2 = new b[length + 1];
                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                bVarArr2[length] = bVar;
            } while (!eVar.g.compareAndSet(bVarArr, bVarArr2));
            if (bVar.a()) {
                eVar.h(bVar);
            } else {
                eVar.g();
                eVar.e.h(bVar);
            }
        }
    }

    public static final class e<T> extends AtomicReference<y38> implements pb7<T>, ic7 {
        public static final b[] l = new b[0];
        public static final b[] m = new b[0];
        public final c<T> e;
        public boolean f;
        public long j;
        public long k;
        public final AtomicInteger i = new AtomicInteger();
        public final AtomicReference<b<T>[]> g = new AtomicReference<>(l);
        public final AtomicBoolean h = new AtomicBoolean();

        public e(c<T> cVar) {
            this.e = cVar;
        }

        @Override // defpackage.x38
        public void a() {
            if (this.f) {
                return;
            }
            this.f = true;
            this.e.d();
            for (b<T> bVar : this.g.getAndSet(m)) {
                this.e.h(bVar);
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.f) {
                n56.z1(th);
                return;
            }
            this.f = true;
            this.e.l(th);
            for (b<T> bVar : this.g.getAndSet(m)) {
                this.e.h(bVar);
            }
        }

        public boolean c() {
            return this.g.get() == m;
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.f) {
                return;
            }
            this.e.j(t);
            for (b<T> bVar : this.g.get()) {
                this.e.h(bVar);
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.x(this, y38Var)) {
                g();
                for (b<T> bVar : this.g.get()) {
                    this.e.h(bVar);
                }
            }
        }

        public void g() {
            if (this.i.getAndIncrement() != 0) {
                return;
            }
            int iAddAndGet = 1;
            while (!c()) {
                b<T>[] bVarArr = this.g.get();
                long j = this.j;
                long jMax = j;
                for (b<T> bVar : bVarArr) {
                    jMax = Math.max(jMax, bVar.h.get());
                }
                long j2 = this.k;
                y38 y38Var = get();
                long j3 = jMax - j;
                if (j3 != 0) {
                    this.j = jMax;
                    if (y38Var == null) {
                        long j4 = j2 + j3;
                        if (j4 < 0) {
                            j4 = Long.MAX_VALUE;
                        }
                        this.k = j4;
                    } else if (j2 != 0) {
                        this.k = 0L;
                        y38Var.l(j2 + j3);
                    } else {
                        y38Var.l(j3);
                    }
                } else if (j2 != 0 && y38Var != null) {
                    this.k = 0L;
                    y38Var.l(j2);
                }
                iAddAndGet = this.i.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        public void h(b<T> bVar) {
            b<T>[] bVarArr;
            b<T>[] bVarArr2;
            do {
                bVarArr = this.g.get();
                int length = bVarArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (bVarArr[i].equals(bVar)) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    bVarArr2 = l;
                } else {
                    b<T>[] bVarArr3 = new b[length - 1];
                    System.arraycopy(bVarArr, 0, bVarArr3, 0, i);
                    System.arraycopy(bVarArr, i + 1, bVarArr3, i, (length - i) - 1);
                    bVarArr2 = bVarArr3;
                }
            } while (!this.g.compareAndSet(bVarArr, bVarArr2));
        }

        @Override // defpackage.ic7
        public void k() {
            this.g.set(m);
            pi7.i(this);
        }
    }

    public static final class f<T> extends ArrayList<Object> implements c<T> {
        public volatile int e;

        public f(int i) {
            super(i);
        }

        @Override // of7.c
        public void d() {
            add(wi7.COMPLETE);
            this.e++;
        }

        @Override // of7.c
        public void h(b<T> bVar) {
            boolean z;
            wi7 wi7Var = wi7.COMPLETE;
            synchronized (bVar) {
                if (bVar.i) {
                    bVar.j = true;
                    return;
                }
                bVar.i = true;
                x38<? super T> x38Var = bVar.f;
                while (!bVar.a()) {
                    int i = this.e;
                    Integer num = (Integer) bVar.g;
                    int iIntValue = num != null ? num.intValue() : 0;
                    long j = bVar.get();
                    long j2 = j;
                    long j3 = 0;
                    while (j2 != 0 && iIntValue < i) {
                        wi7.a aVar = (Object) get(iIntValue);
                        if (aVar == wi7Var) {
                            try {
                                x38Var.a();
                            } catch (Throwable th) {
                                n56.r2(th);
                                bVar.k();
                                if (aVar instanceof wi7.a) {
                                    return;
                                }
                                if (aVar == wi7Var) {
                                    return;
                                }
                                x38Var.b(th);
                                return;
                            }
                        } else if (aVar instanceof wi7.a) {
                            x38Var.b(aVar.e);
                        } else {
                            x38Var.d(aVar);
                            z = false;
                            if (!z || bVar.a()) {
                                return;
                            }
                            iIntValue++;
                            j2--;
                            j3++;
                        }
                        z = true;
                        if (!z) {
                            return;
                        }
                        iIntValue++;
                        j2--;
                        j3++;
                    }
                    if (j3 != 0) {
                        bVar.g = Integer.valueOf(iIntValue);
                        long j4 = Long.MAX_VALUE;
                        if (j != Long.MAX_VALUE) {
                            while (true) {
                                long j5 = bVar.get();
                                if (j5 == Long.MIN_VALUE || j5 == j4) {
                                    break;
                                }
                                long j6 = j5 - j3;
                                if (j6 < 0) {
                                    n56.z1(new IllegalStateException(jo.j("More produced than requested: ", j6)));
                                    j6 = 0;
                                }
                                if (bVar.compareAndSet(j5, j6)) {
                                    break;
                                } else {
                                    j4 = Long.MAX_VALUE;
                                }
                            }
                        }
                    }
                    synchronized (bVar) {
                        if (!bVar.j) {
                            bVar.i = false;
                            return;
                        }
                        bVar.j = false;
                    }
                }
            }
        }

        @Override // of7.c
        public void j(T t) {
            add(t);
            this.e++;
        }

        @Override // of7.c
        public void l(Throwable th) {
            add(new wi7.a(th));
            this.e++;
        }
    }

    public of7(w38<T> w38Var, mb7<T> mb7Var, AtomicReference<e<T>> atomicReference, Callable<? extends c<T>> callable) {
        this.i = w38Var;
        this.f = mb7Var;
        this.g = atomicReference;
        this.h = callable;
    }

    public void g(ic7 ic7Var) {
        this.g.compareAndSet((e) ic7Var, null);
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.i.i(x38Var);
    }

    @Override // defpackage.pc7
    public void x(tc7<? super ic7> tc7Var) {
        e<T> eVar;
        while (true) {
            eVar = this.g.get();
            if (eVar != null && !eVar.c()) {
                break;
            }
            try {
                e<T> eVar2 = new e<>(this.h.call());
                if (this.g.compareAndSet(eVar, eVar2)) {
                    eVar = eVar2;
                    break;
                }
            } finally {
                n56.r2(th);
                RuntimeException runtimeExceptionD = vi7.d(th);
            }
        }
        boolean z = !eVar.h.get() && eVar.h.compareAndSet(false, true);
        try {
            tc7Var.accept(eVar);
            if (z) {
                this.f.s(eVar);
            }
        } catch (Throwable th) {
            if (z) {
                eVar.h.compareAndSet(true, false);
            }
            throw vi7.d(th);
        }
    }
}
