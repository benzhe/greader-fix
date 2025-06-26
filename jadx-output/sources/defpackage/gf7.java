package defpackage;

import defpackage.wi7;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [if7<T>] */
/* loaded from: classes2.dex */
public final class gf7<T> extends pc7<T> implements Object<T> {
    public final mb7<T> f;
    public final AtomicReference<c<T>> g;
    public final int h;
    public final w38<T> i;

    public static final class a<T> implements w38<T> {
        public final AtomicReference<c<T>> e;
        public final int f;

        public a(AtomicReference<c<T>> atomicReference, int i) {
            this.e = atomicReference;
            this.f = i;
        }

        @Override // defpackage.w38
        public void i(x38<? super T> x38Var) {
            c<T> cVar;
            boolean z;
            b<T> bVar = new b<>(x38Var);
            x38Var.e(bVar);
            while (true) {
                cVar = this.e.get();
                if (cVar == null || cVar.h()) {
                    c<T> cVar2 = new c<>(this.e, this.f);
                    if (this.e.compareAndSet(cVar, cVar2)) {
                        cVar = cVar2;
                    } else {
                        continue;
                    }
                }
                while (true) {
                    b<T>[] bVarArr = cVar.g.get();
                    z = false;
                    if (bVarArr == c.n) {
                        break;
                    }
                    int length = bVarArr.length;
                    b<T>[] bVarArr2 = new b[length + 1];
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    bVarArr2[length] = bVar;
                    if (cVar.g.compareAndSet(bVarArr, bVarArr2)) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    break;
                }
            }
            if (bVar.get() == Long.MIN_VALUE) {
                cVar.i(bVar);
            } else {
                bVar.f = cVar;
            }
            cVar.g();
        }
    }

    public static final class b<T> extends AtomicLong implements y38 {
        public final x38<? super T> e;
        public volatile c<T> f;
        public long g;

        public b(x38<? super T> x38Var) {
            this.e = x38Var;
        }

        @Override // defpackage.y38
        public void cancel() {
            c<T> cVar;
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (cVar = this.f) == null) {
                return;
            }
            cVar.i(this);
            cVar.g();
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.g(this, j);
                c<T> cVar = this.f;
                if (cVar != null) {
                    cVar.g();
                }
            }
        }
    }

    public static final class c<T> extends AtomicInteger implements pb7<T>, ic7 {
        public static final b[] m = new b[0];
        public static final b[] n = new b[0];
        public final AtomicReference<c<T>> e;
        public final int f;
        public volatile Object j;
        public int k;
        public volatile nd7<T> l;
        public final AtomicReference<y38> i = new AtomicReference<>();
        public final AtomicReference<b<T>[]> g = new AtomicReference<>(m);
        public final AtomicBoolean h = new AtomicBoolean();

        public c(AtomicReference<c<T>> atomicReference, int i) {
            this.e = atomicReference;
            this.f = i;
        }

        @Override // defpackage.x38
        public void a() {
            if (this.j == null) {
                this.j = wi7.COMPLETE;
                g();
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.j != null) {
                n56.z1(th);
            } else {
                this.j = new wi7.a(th);
                g();
            }
        }

        public boolean c(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                if (!(obj == wi7.COMPLETE)) {
                    Throwable th = ((wi7.a) obj).e;
                    this.e.compareAndSet(this, null);
                    b<T>[] andSet = this.g.getAndSet(n);
                    if (andSet.length != 0) {
                        int length = andSet.length;
                        while (i < length) {
                            andSet[i].e.b(th);
                            i++;
                        }
                    } else {
                        n56.z1(th);
                    }
                    return true;
                }
                if (z) {
                    this.e.compareAndSet(this, null);
                    b<T>[] andSet2 = this.g.getAndSet(n);
                    int length2 = andSet2.length;
                    while (i < length2) {
                        andSet2[i].e.a();
                        i++;
                    }
                    return true;
                }
            }
            return false;
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.k != 0 || this.l.offer(t)) {
                g();
            } else {
                b(new lc7("Prefetch queue is full?!"));
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.x(this.i, y38Var)) {
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(7);
                    if (i == 1) {
                        this.k = i;
                        this.l = kd7Var;
                        this.j = wi7.COMPLETE;
                        g();
                        return;
                    }
                    if (i == 2) {
                        this.k = i;
                        this.l = kd7Var;
                        y38Var.l(this.f);
                        return;
                    }
                }
                this.l = new th7(this.f);
                y38Var.l(this.f);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:72:0x011d, code lost:
        
            if (r11 == 0) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0122, code lost:
        
            if (r25.k == 1) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0124, code lost:
        
            r25.i.get().l(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0130, code lost:
        
            r4 = r0;
            r3 = 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void g() {
            /*
                Method dump skipped, instructions count: 355
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gf7.c.g():void");
        }

        public boolean h() {
            return this.g.get() == n;
        }

        public void i(b<T> bVar) {
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
                    bVarArr2 = m;
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
            b<T>[] bVarArr = this.g.get();
            b<T>[] bVarArr2 = n;
            if (bVarArr == bVarArr2 || this.g.getAndSet(bVarArr2) == bVarArr2) {
                return;
            }
            this.e.compareAndSet(this, null);
            pi7.i(this.i);
        }
    }

    public gf7(w38<T> w38Var, mb7<T> mb7Var, AtomicReference<c<T>> atomicReference, int i) {
        this.i = w38Var;
        this.f = mb7Var;
        this.g = atomicReference;
        this.h = i;
    }

    public int c() {
        return this.h;
    }

    public w38<T> h() {
        return this.f;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.i.i(x38Var);
    }

    @Override // defpackage.pc7
    public void x(tc7<? super ic7> tc7Var) {
        c<T> cVar;
        while (true) {
            cVar = this.g.get();
            if (cVar != null && !cVar.h()) {
                break;
            }
            c<T> cVar2 = new c<>(this.g, this.h);
            if (this.g.compareAndSet(cVar, cVar2)) {
                cVar = cVar2;
                break;
            }
        }
        boolean z = !cVar.h.get() && cVar.h.compareAndSet(false, true);
        try {
            tc7Var.accept(cVar);
            if (z) {
                this.f.s(cVar);
            }
        } catch (Throwable th) {
            n56.r2(th);
            throw vi7.d(th);
        }
    }
}
