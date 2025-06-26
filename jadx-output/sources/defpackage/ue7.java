package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class ue7<T> extends mb7<T> {
    public final T[] f;

    public static final class a<T> extends c<T> {
        public final fd7<? super T> h;

        public a(fd7<? super T> fd7Var, T[] tArr) {
            super(tArr);
            this.h = fd7Var;
        }

        @Override // ue7.c
        public void a() {
            T[] tArr = this.e;
            int length = tArr.length;
            fd7<? super T> fd7Var = this.h;
            for (int i = this.f; i != length; i++) {
                if (this.g) {
                    return;
                }
                T t = tArr[i];
                if (t == null) {
                    fd7Var.b(new NullPointerException(jo.h("The element at index ", i, " is null")));
                    return;
                }
                fd7Var.f(t);
            }
            if (this.g) {
                return;
            }
            fd7Var.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
        
            r10.f = r2;
            r11 = addAndGet(-r6);
         */
        @Override // ue7.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(long r11) {
            /*
                r10 = this;
                T[] r0 = r10.e
                int r1 = r0.length
                int r2 = r10.f
                fd7<? super T> r3 = r10.h
                r4 = 0
            L9:
                r6 = r4
            La:
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 == 0) goto L36
                if (r2 == r1) goto L36
                boolean r8 = r10.g
                if (r8 == 0) goto L15
                return
            L15:
                r8 = r0[r2]
                if (r8 != 0) goto L2a
                java.lang.NullPointerException r11 = new java.lang.NullPointerException
                java.lang.String r12 = "The element at index "
                java.lang.String r0 = " is null"
                java.lang.String r12 = defpackage.jo.h(r12, r2, r0)
                r11.<init>(r12)
                r3.b(r11)
                return
            L2a:
                boolean r8 = r3.f(r8)
                if (r8 == 0) goto L33
                r8 = 1
                long r6 = r6 + r8
            L33:
                int r2 = r2 + 1
                goto La
            L36:
                if (r2 != r1) goto L40
                boolean r11 = r10.g
                if (r11 != 0) goto L3f
                r3.a()
            L3f:
                return
            L40:
                long r11 = r10.get()
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 != 0) goto La
                r10.f = r2
                long r11 = -r6
                long r11 = r10.addAndGet(r11)
                int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r6 != 0) goto L9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ue7.a.b(long):void");
        }
    }

    public static final class b<T> extends c<T> {
        public final x38<? super T> h;

        public b(x38<? super T> x38Var, T[] tArr) {
            super(tArr);
            this.h = x38Var;
        }

        @Override // ue7.c
        public void a() {
            T[] tArr = this.e;
            int length = tArr.length;
            x38<? super T> x38Var = this.h;
            for (int i = this.f; i != length; i++) {
                if (this.g) {
                    return;
                }
                T t = tArr[i];
                if (t == null) {
                    x38Var.b(new NullPointerException(jo.h("The element at index ", i, " is null")));
                    return;
                }
                x38Var.d(t);
            }
            if (this.g) {
                return;
            }
            x38Var.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
        
            r10.f = r2;
            r11 = addAndGet(-r6);
         */
        @Override // ue7.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(long r11) {
            /*
                r10 = this;
                T[] r0 = r10.e
                int r1 = r0.length
                int r2 = r10.f
                x38<? super T> r3 = r10.h
                r4 = 0
            L9:
                r6 = r4
            La:
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 == 0) goto L33
                if (r2 == r1) goto L33
                boolean r8 = r10.g
                if (r8 == 0) goto L15
                return
            L15:
                r8 = r0[r2]
                if (r8 != 0) goto L2a
                java.lang.NullPointerException r11 = new java.lang.NullPointerException
                java.lang.String r12 = "The element at index "
                java.lang.String r0 = " is null"
                java.lang.String r12 = defpackage.jo.h(r12, r2, r0)
                r11.<init>(r12)
                r3.b(r11)
                return
            L2a:
                r3.d(r8)
                r8 = 1
                long r6 = r6 + r8
                int r2 = r2 + 1
                goto La
            L33:
                if (r2 != r1) goto L3d
                boolean r11 = r10.g
                if (r11 != 0) goto L3c
                r3.a()
            L3c:
                return
            L3d:
                long r11 = r10.get()
                int r8 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
                if (r8 != 0) goto La
                r10.f = r2
                long r11 = -r6
                long r11 = r10.addAndGet(r11)
                int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r6 != 0) goto L9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ue7.b.b(long):void");
        }
    }

    public static abstract class c<T> extends ki7<T> {
        public final T[] e;
        public int f;
        public volatile boolean g;

        public c(T[] tArr) {
            this.e = tArr;
        }

        public abstract void a();

        public abstract void b(long j);

        @Override // defpackage.y38
        public final void cancel() {
            this.g = true;
        }

        @Override // defpackage.nd7
        public final void clear() {
            this.f = this.e.length;
        }

        @Override // defpackage.jd7
        public final int i(int i) {
            return i & 1;
        }

        @Override // defpackage.nd7
        public final boolean isEmpty() {
            return this.f == this.e.length;
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
            int i = this.f;
            T[] tArr = this.e;
            if (i == tArr.length) {
                return null;
            }
            this.f = i + 1;
            T t = tArr[i];
            Objects.requireNonNull(t, "array element is null");
            return t;
        }
    }

    public ue7(T[] tArr) {
        this.f = tArr;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        if (x38Var instanceof fd7) {
            x38Var.e(new a((fd7) x38Var, this.f));
        } else {
            x38Var.e(new b(x38Var, this.f));
        }
    }
}
