package defpackage;

import defpackage.wi7;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes2.dex */
public final class fj7<T> extends hj7<T> {
    public static final Object[] l = new Object[0];
    public static final a[] m = new a[0];
    public static final a[] n = new a[0];
    public final AtomicReference<Object> e;
    public final AtomicReference<a<T>[]> f;
    public final ReadWriteLock g;
    public final Lock h;
    public final Lock i;
    public final AtomicReference<Throwable> j;
    public long k;

    public static final class a<T> implements ic7, Object<Object> {
        public final yb7<? super T> e;
        public final fj7<T> f;
        public boolean g;
        public boolean h;
        public qi7<Object> i;
        public boolean j;
        public volatile boolean k;
        public long l;

        public a(yb7<? super T> yb7Var, fj7<T> fj7Var) {
            this.e = yb7Var;
            this.f = fj7Var;
        }

        public void a(Object obj, long j) {
            if (this.k) {
                return;
            }
            if (!this.j) {
                synchronized (this) {
                    if (this.k) {
                        return;
                    }
                    if (this.l == j) {
                        return;
                    }
                    if (this.h) {
                        qi7<Object> qi7Var = this.i;
                        if (qi7Var == null) {
                            qi7Var = new qi7<>(4);
                            this.i = qi7Var;
                        }
                        qi7Var.b(obj);
                        return;
                    }
                    this.g = true;
                    this.j = true;
                }
            }
            test(obj);
        }

        @Override // defpackage.ic7
        public void k() {
            if (this.k) {
                return;
            }
            this.k = true;
            this.f.h(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean test(java.lang.Object r5) {
            /*
                r4 = this;
                boolean r0 = r4.k
                r1 = 0
                r2 = 1
                if (r0 != 0) goto L23
                yb7<? super T> r0 = r4.e
                wi7 r3 = defpackage.wi7.COMPLETE
                if (r5 != r3) goto L11
                r0.a()
            Lf:
                r5 = 1
                goto L21
            L11:
                boolean r3 = r5 instanceof wi7.a
                if (r3 == 0) goto L1d
                wi7$a r5 = (wi7.a) r5
                java.lang.Throwable r5 = r5.e
                r0.b(r5)
                goto Lf
            L1d:
                r0.d(r5)
                r5 = 0
            L21:
                if (r5 == 0) goto L24
            L23:
                r1 = 1
            L24:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: fj7.a.test(java.lang.Object):boolean");
        }
    }

    public fj7() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.g = reentrantReadWriteLock;
        this.h = reentrantReadWriteLock.readLock();
        this.i = reentrantReadWriteLock.writeLock();
        this.f = new AtomicReference<>(m);
        this.e = new AtomicReference<>();
        this.j = new AtomicReference<>();
    }

    @Override // defpackage.yb7
    public void a() {
        if (this.j.compareAndSet(null, vi7.a)) {
            wi7 wi7Var = wi7.COMPLETE;
            AtomicReference<a<T>[]> atomicReference = this.f;
            a<T>[] aVarArr = n;
            a<T>[] andSet = atomicReference.getAndSet(aVarArr);
            if (andSet != aVarArr) {
                i(wi7Var);
            }
            for (a<T> aVar : andSet) {
                aVar.a(wi7Var, this.k);
            }
        }
    }

    @Override // defpackage.yb7
    public void b(Throwable th) {
        Objects.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.j.compareAndSet(null, th)) {
            n56.z1(th);
            return;
        }
        wi7.a aVar = new wi7.a(th);
        AtomicReference<a<T>[]> atomicReference = this.f;
        a<T>[] aVarArr = n;
        a<T>[] andSet = atomicReference.getAndSet(aVarArr);
        if (andSet != aVarArr) {
            i(aVar);
        }
        for (a<T> aVar2 : andSet) {
            aVar2.a(aVar, this.k);
        }
    }

    @Override // defpackage.yb7
    public void c(ic7 ic7Var) {
        if (this.j.get() != null) {
            ic7Var.k();
        }
    }

    @Override // defpackage.yb7
    public void d(T t) {
        Objects.requireNonNull(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.j.get() != null) {
            return;
        }
        i(t);
        for (a<T> aVar : this.f.get()) {
            aVar.a(t, this.k);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x007c, code lost:
    
        r0.h = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0084, code lost:
    
        r8 = r8.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0087, code lost:
    
        if (r8 == null) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0089, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008a, code lost:
    
        if (r2 >= 4) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008c, code lost:
    
        r4 = r8[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008e, code lost:
    
        if (r4 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0095, code lost:
    
        if (r0.test(r4) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0098, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009b, code lost:
    
        r8 = r8[4];
     */
    @Override // defpackage.wb7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(defpackage.yb7<? super T> r8) {
        /*
            r7 = this;
            fj7$a r0 = new fj7$a
            r0.<init>(r8, r7)
            r8.c(r0)
        L8:
            java.util.concurrent.atomic.AtomicReference<fj7$a<T>[]> r1 = r7.f
            java.lang.Object r1 = r1.get()
            fj7$a[] r1 = (fj7.a[]) r1
            fj7$a[] r2 = defpackage.fj7.n
            r3 = 0
            r4 = 1
            if (r1 != r2) goto L18
            r1 = 0
            goto L2b
        L18:
            int r2 = r1.length
            int r5 = r2 + 1
            fj7$a[] r5 = new fj7.a[r5]
            java.lang.System.arraycopy(r1, r3, r5, r3, r2)
            r5[r2] = r0
            java.util.concurrent.atomic.AtomicReference<fj7$a<T>[]> r2 = r7.f
            boolean r1 = r2.compareAndSet(r1, r5)
            if (r1 == 0) goto L8
            r1 = 1
        L2b:
            if (r1 == 0) goto La6
            boolean r8 = r0.k
            if (r8 == 0) goto L36
            r7.h(r0)
            goto Lb9
        L36:
            boolean r8 = r0.k
            if (r8 == 0) goto L3c
            goto Lb9
        L3c:
            monitor-enter(r0)
            boolean r8 = r0.k     // Catch: java.lang.Throwable -> La3
            if (r8 == 0) goto L44
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La3
            goto Lb9
        L44:
            boolean r8 = r0.g     // Catch: java.lang.Throwable -> La3
            if (r8 == 0) goto L4b
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La3
            goto Lb9
        L4b:
            fj7<T> r8 = r0.f     // Catch: java.lang.Throwable -> La3
            java.util.concurrent.locks.Lock r1 = r8.h     // Catch: java.lang.Throwable -> La3
            r1.lock()     // Catch: java.lang.Throwable -> La3
            long r5 = r8.k     // Catch: java.lang.Throwable -> La3
            r0.l = r5     // Catch: java.lang.Throwable -> La3
            java.util.concurrent.atomic.AtomicReference<java.lang.Object> r8 = r8.e     // Catch: java.lang.Throwable -> La3
            java.lang.Object r8 = r8.get()     // Catch: java.lang.Throwable -> La3
            r1.unlock()     // Catch: java.lang.Throwable -> La3
            if (r8 == 0) goto L63
            r1 = 1
            goto L64
        L63:
            r1 = 0
        L64:
            r0.h = r1     // Catch: java.lang.Throwable -> La3
            r0.g = r4     // Catch: java.lang.Throwable -> La3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La3
            if (r8 == 0) goto Lb9
            boolean r8 = r0.test(r8)
            if (r8 == 0) goto L72
            goto Lb9
        L72:
            boolean r8 = r0.k
            if (r8 == 0) goto L77
            goto Lb9
        L77:
            monitor-enter(r0)
            qi7<java.lang.Object> r8 = r0.i     // Catch: java.lang.Throwable -> La0
            if (r8 != 0) goto L80
            r0.h = r3     // Catch: java.lang.Throwable -> La0
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La0
            goto Lb9
        L80:
            r1 = 0
            r0.i = r1     // Catch: java.lang.Throwable -> La0
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La0
            java.lang.Object[] r8 = r8.a
            r1 = 4
        L87:
            if (r8 == 0) goto L72
            r2 = 0
        L8a:
            if (r2 >= r1) goto L9b
            r4 = r8[r2]
            if (r4 != 0) goto L91
            goto L9b
        L91:
            boolean r4 = r0.test(r4)
            if (r4 == 0) goto L98
            goto L72
        L98:
            int r2 = r2 + 1
            goto L8a
        L9b:
            r8 = r8[r1]
            java.lang.Object[] r8 = (java.lang.Object[]) r8
            goto L87
        La0:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La0
            throw r8
        La3:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La3
            throw r8
        La6:
            java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r7.j
            java.lang.Object r0 = r0.get()
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            java.lang.Throwable r1 = defpackage.vi7.a
            if (r0 != r1) goto Lb6
            r8.a()
            goto Lb9
        Lb6:
            r8.b(r0)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fj7.f(yb7):void");
    }

    public void h(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f.get();
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
                aVarArr2 = m;
            } else {
                a<T>[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f.compareAndSet(aVarArr, aVarArr2));
    }

    public void i(Object obj) {
        this.i.lock();
        this.k++;
        this.e.lazySet(obj);
        this.i.unlock();
    }
}
