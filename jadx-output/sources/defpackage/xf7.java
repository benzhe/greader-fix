package defpackage;

import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class xf7<T, R> extends mb7<R> {
    public final w38<? extends T>[] f;
    public final uc7<? super Object[], ? extends R> g;
    public final int h;
    public final boolean i;

    public static final class a<T, R> extends AtomicInteger implements y38 {
        public final x38<? super R> e;
        public final b<T, R>[] f;
        public final uc7<? super Object[], ? extends R> g;
        public final AtomicLong h;
        public final si7 i;
        public final boolean j;
        public volatile boolean k;
        public final Object[] l;

        public a(x38<? super R> x38Var, uc7<? super Object[], ? extends R> uc7Var, int i, int i2, boolean z) {
            this.e = x38Var;
            this.g = uc7Var;
            this.j = z;
            b<T, R>[] bVarArr = new b[i];
            for (int i3 = 0; i3 < i; i3++) {
                bVarArr[i3] = new b<>(this, i2);
            }
            this.l = new Object[i];
            this.f = bVarArr;
            this.h = new AtomicLong();
            this.i = new si7();
        }

        public void a() {
            for (b<T, R> bVar : this.f) {
                Objects.requireNonNull(bVar);
                pi7.i(bVar);
            }
        }

        public void b() {
            boolean z;
            T tPoll;
            boolean z2;
            if (getAndIncrement() != 0) {
                return;
            }
            x38<? super R> x38Var = this.e;
            b<T, R>[] bVarArr = this.f;
            int length = bVarArr.length;
            Object[] objArr = this.l;
            int iAddAndGet = 1;
            do {
                long j = this.h.get();
                long j2 = 0;
                while (j != j2) {
                    if (this.k) {
                        return;
                    }
                    if (!this.j && this.i.get() != null) {
                        a();
                        x38Var.b(vi7.b(this.i));
                        return;
                    }
                    boolean z3 = false;
                    for (int i = 0; i < length; i++) {
                        b<T, R> bVar = bVarArr[i];
                        if (objArr[i] == null) {
                            try {
                                z = bVar.j;
                                nd7<T> nd7Var = bVar.h;
                                tPoll = nd7Var != null ? nd7Var.poll() : null;
                                z2 = tPoll == null;
                            } catch (Throwable th) {
                                n56.r2(th);
                                vi7.a(this.i, th);
                                if (!this.j) {
                                    a();
                                    x38Var.b(vi7.b(this.i));
                                    return;
                                }
                            }
                            if (z && z2) {
                                a();
                                if (this.i.get() != null) {
                                    x38Var.b(vi7.b(this.i));
                                    return;
                                } else {
                                    x38Var.a();
                                    return;
                                }
                            }
                            if (z2) {
                                z3 = true;
                            } else {
                                objArr[i] = tPoll;
                            }
                        }
                    }
                    if (z3) {
                        break;
                    }
                    try {
                        R rApply = this.g.apply(objArr.clone());
                        Objects.requireNonNull(rApply, "The zipper returned a null value");
                        x38Var.d(rApply);
                        j2++;
                        Arrays.fill(objArr, (Object) null);
                    } catch (Throwable th2) {
                        n56.r2(th2);
                        a();
                        vi7.a(this.i, th2);
                        x38Var.b(vi7.b(this.i));
                        return;
                    }
                }
                if (j == j2) {
                    if (this.k) {
                        return;
                    }
                    if (!this.j && this.i.get() != null) {
                        a();
                        x38Var.b(vi7.b(this.i));
                        return;
                    }
                    for (int i2 = 0; i2 < length; i2++) {
                        b<T, R> bVar2 = bVarArr[i2];
                        if (objArr[i2] == null) {
                            try {
                                boolean z4 = bVar2.j;
                                nd7<T> nd7Var2 = bVar2.h;
                                T tPoll2 = nd7Var2 != null ? nd7Var2.poll() : null;
                                boolean z5 = tPoll2 == null;
                                if (z4 && z5) {
                                    a();
                                    if (this.i.get() != null) {
                                        x38Var.b(vi7.b(this.i));
                                        return;
                                    } else {
                                        x38Var.a();
                                        return;
                                    }
                                }
                                if (!z5) {
                                    objArr[i2] = tPoll2;
                                }
                            } catch (Throwable th3) {
                                n56.r2(th3);
                                vi7.a(this.i, th3);
                                if (!this.j) {
                                    a();
                                    x38Var.b(vi7.b(this.i));
                                    return;
                                }
                            }
                        }
                    }
                }
                if (j2 != 0) {
                    for (b<T, R> bVar3 : bVarArr) {
                        bVar3.l(j2);
                    }
                    if (j != Long.MAX_VALUE) {
                        this.h.addAndGet(-j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // defpackage.y38
        public void cancel() {
            if (this.k) {
                return;
            }
            this.k = true;
            a();
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.e(this.h, j);
                b();
            }
        }
    }

    public static final class b<T, R> extends AtomicReference<y38> implements pb7<T>, y38 {
        public final a<T, R> e;
        public final int f;
        public final int g;
        public nd7<T> h;
        public long i;
        public volatile boolean j;
        public int k;

        public b(a<T, R> aVar, int i) {
            this.e = aVar;
            this.f = i;
            this.g = i - (i >> 2);
        }

        @Override // defpackage.x38
        public void a() {
            this.j = true;
            this.e.b();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            a<T, R> aVar = this.e;
            if (!vi7.a(aVar.i, th)) {
                n56.z1(th);
            } else {
                this.j = true;
                aVar.b();
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            pi7.i(this);
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.k != 2) {
                this.h.offer(t);
            }
            this.e.b();
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.x(this, y38Var)) {
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(7);
                    if (i == 1) {
                        this.k = i;
                        this.h = kd7Var;
                        this.j = true;
                        this.e.b();
                        return;
                    }
                    if (i == 2) {
                        this.k = i;
                        this.h = kd7Var;
                        y38Var.l(this.f);
                        return;
                    }
                }
                this.h = new th7(this.f);
                y38Var.l(this.f);
            }
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (this.k != 1) {
                long j2 = this.i + j;
                if (j2 < this.g) {
                    this.i = j2;
                } else {
                    this.i = 0L;
                    get().l(j2);
                }
            }
        }
    }

    public xf7(w38<? extends T>[] w38VarArr, Iterable<? extends w38<? extends T>> iterable, uc7<? super Object[], ? extends R> uc7Var, int i, boolean z) {
        this.f = w38VarArr;
        this.g = uc7Var;
        this.h = i;
        this.i = z;
    }

    @Override // defpackage.mb7
    public void t(x38<? super R> x38Var) {
        w38<? extends T>[] w38VarArr = this.f;
        Objects.requireNonNull(w38VarArr);
        int length = w38VarArr.length;
        if (length == 0) {
            x38Var.e(mi7.INSTANCE);
            x38Var.a();
            return;
        }
        a aVar = new a(x38Var, this.g, length, this.h, this.i);
        x38Var.e(aVar);
        b<T, R>[] bVarArr = aVar.f;
        for (int i = 0; i < length && !aVar.k; i++) {
            if (!aVar.j && aVar.i.get() != null) {
                return;
            }
            w38VarArr[i].i(bVarArr[i]);
        }
    }
}
