package defpackage;

import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class ve7<T> extends mb7<T> {
    public final Iterable<? extends T> f;

    public static abstract class a<T> extends ki7<T> {
        public Iterator<? extends T> e;
        public volatile boolean f;
        public boolean g;

        public a(Iterator<? extends T> it) {
            this.e = it;
        }

        public abstract void a();

        public abstract void b(long j);

        @Override // defpackage.y38
        public final void cancel() {
            this.f = true;
        }

        @Override // defpackage.nd7
        public final void clear() {
            this.e = null;
        }

        @Override // defpackage.jd7
        public final int i(int i) {
            return i & 1;
        }

        @Override // defpackage.nd7
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.e;
            return it == null || !it.hasNext();
        }

        @Override // defpackage.y38
        public final void l(long j) {
            if (pi7.y(j) && n56.e(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    a();
                } else {
                    b(j);
                }
            }
        }

        @Override // defpackage.nd7
        public final T poll() {
            Iterator<? extends T> it = this.e;
            if (it == null) {
                return null;
            }
            if (!this.g) {
                this.g = true;
            } else if (!it.hasNext()) {
                return null;
            }
            T next = this.e.next();
            Objects.requireNonNull(next, "Iterator.next() returned a null value");
            return next;
        }
    }

    public static final class b<T> extends a<T> {
        public final fd7<? super T> h;

        public b(fd7<? super T> fd7Var, Iterator<? extends T> it) {
            super(it);
            this.h = fd7Var;
        }

        @Override // ve7.a
        public void a() {
            Iterator<? extends T> it = this.e;
            fd7<? super T> fd7Var = this.h;
            while (!this.f) {
                try {
                    T next = it.next();
                    if (this.f) {
                        return;
                    }
                    if (next == null) {
                        fd7Var.b(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    fd7Var.f(next);
                    if (this.f) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f) {
                                return;
                            }
                            fd7Var.a();
                            return;
                        }
                    } catch (Throwable th) {
                        n56.r2(th);
                        fd7Var.b(th);
                        return;
                    }
                } catch (Throwable th2) {
                    n56.r2(th2);
                    fd7Var.b(th2);
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x005b, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override // ve7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(long r9) {
            /*
                r8 = this;
                java.util.Iterator<? extends T> r0 = r8.e
                fd7<? super T> r1 = r8.h
                r2 = 0
            L6:
                r4 = r2
            L7:
                int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                if (r6 == 0) goto L53
                boolean r6 = r8.f
                if (r6 == 0) goto L10
                return
            L10:
                java.lang.Object r6 = r0.next()     // Catch: java.lang.Throwable -> L4b
                boolean r7 = r8.f
                if (r7 == 0) goto L19
                return
            L19:
                if (r6 != 0) goto L26
                java.lang.NullPointerException r9 = new java.lang.NullPointerException
                java.lang.String r10 = "Iterator.next() returned a null value"
                r9.<init>(r10)
                r1.b(r9)
                return
            L26:
                boolean r6 = r1.f(r6)
                boolean r7 = r8.f
                if (r7 == 0) goto L2f
                return
            L2f:
                boolean r7 = r0.hasNext()     // Catch: java.lang.Throwable -> L43
                if (r7 != 0) goto L3d
                boolean r9 = r8.f
                if (r9 != 0) goto L3c
                r1.a()
            L3c:
                return
            L3d:
                if (r6 == 0) goto L7
                r6 = 1
                long r4 = r4 + r6
                goto L7
            L43:
                r9 = move-exception
                defpackage.n56.r2(r9)
                r1.b(r9)
                return
            L4b:
                r9 = move-exception
                defpackage.n56.r2(r9)
                r1.b(r9)
                return
            L53:
                long r9 = r8.get()
                int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                if (r6 != 0) goto L7
                long r9 = -r4
                long r9 = r8.addAndGet(r9)
                int r4 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
                if (r4 != 0) goto L6
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ve7.b.b(long):void");
        }
    }

    public static final class c<T> extends a<T> {
        public final x38<? super T> h;

        public c(x38<? super T> x38Var, Iterator<? extends T> it) {
            super(it);
            this.h = x38Var;
        }

        @Override // ve7.a
        public void a() {
            Iterator<? extends T> it = this.e;
            x38<? super T> x38Var = this.h;
            while (!this.f) {
                try {
                    T next = it.next();
                    if (this.f) {
                        return;
                    }
                    if (next == null) {
                        x38Var.b(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    x38Var.d(next);
                    if (this.f) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f) {
                                return;
                            }
                            x38Var.a();
                            return;
                        }
                    } catch (Throwable th) {
                        n56.r2(th);
                        x38Var.b(th);
                        return;
                    }
                } catch (Throwable th2) {
                    n56.r2(th2);
                    x38Var.b(th2);
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0058, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override // ve7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(long r9) {
            /*
                r8 = this;
                java.util.Iterator<? extends T> r0 = r8.e
                x38<? super T> r1 = r8.h
                r2 = 0
            L6:
                r4 = r2
            L7:
                int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                if (r6 == 0) goto L50
                boolean r6 = r8.f
                if (r6 == 0) goto L10
                return
            L10:
                java.lang.Object r6 = r0.next()     // Catch: java.lang.Throwable -> L48
                boolean r7 = r8.f
                if (r7 == 0) goto L19
                return
            L19:
                if (r6 != 0) goto L26
                java.lang.NullPointerException r9 = new java.lang.NullPointerException
                java.lang.String r10 = "Iterator.next() returned a null value"
                r9.<init>(r10)
                r1.b(r9)
                return
            L26:
                r1.d(r6)
                boolean r6 = r8.f
                if (r6 == 0) goto L2e
                return
            L2e:
                boolean r6 = r0.hasNext()     // Catch: java.lang.Throwable -> L40
                if (r6 != 0) goto L3c
                boolean r9 = r8.f
                if (r9 != 0) goto L3b
                r1.a()
            L3b:
                return
            L3c:
                r6 = 1
                long r4 = r4 + r6
                goto L7
            L40:
                r9 = move-exception
                defpackage.n56.r2(r9)
                r1.b(r9)
                return
            L48:
                r9 = move-exception
                defpackage.n56.r2(r9)
                r1.b(r9)
                return
            L50:
                long r9 = r8.get()
                int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                if (r6 != 0) goto L7
                long r9 = -r4
                long r9 = r8.addAndGet(r9)
                int r4 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
                if (r4 != 0) goto L6
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ve7.c.b(long):void");
        }
    }

    public ve7(Iterable<? extends T> iterable) {
        this.f = iterable;
    }

    public static <T> void w(x38<? super T> x38Var, Iterator<? extends T> it) {
        mi7 mi7Var = mi7.INSTANCE;
        try {
            if (!it.hasNext()) {
                x38Var.e(mi7Var);
                x38Var.a();
            } else if (x38Var instanceof fd7) {
                x38Var.e(new b((fd7) x38Var, it));
            } else {
                x38Var.e(new c(x38Var, it));
            }
        } catch (Throwable th) {
            n56.r2(th);
            x38Var.e(mi7Var);
            x38Var.b(th);
        }
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        try {
            w(x38Var, this.f.iterator());
        } catch (Throwable th) {
            n56.r2(th);
            x38Var.e(mi7.INSTANCE);
            x38Var.b(th);
        }
    }
}
