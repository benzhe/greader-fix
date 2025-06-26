package defpackage;

/* loaded from: classes2.dex */
public final class jf7 extends mb7<Integer> {
    public final int f;
    public final int g;

    public static abstract class a extends ki7<Integer> {
        public final int e;
        public int f;
        public volatile boolean g;

        public a(int i, int i2) {
            this.f = i;
            this.e = i2;
        }

        public abstract void a();

        public abstract void b(long j);

        @Override // defpackage.y38
        public final void cancel() {
            this.g = true;
        }

        @Override // defpackage.nd7
        public final void clear() {
            this.f = this.e;
        }

        @Override // defpackage.jd7
        public final int i(int i) {
            return i & 1;
        }

        @Override // defpackage.nd7
        public final boolean isEmpty() {
            return this.f == this.e;
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
        public Object poll() throws Exception {
            int i = this.f;
            if (i == this.e) {
                return null;
            }
            this.f = i + 1;
            return Integer.valueOf(i);
        }
    }

    public static final class b extends a {
        public final fd7<? super Integer> h;

        public b(fd7<? super Integer> fd7Var, int i, int i2) {
            super(i, i2);
            this.h = fd7Var;
        }

        @Override // jf7.a
        public void a() {
            int i = this.e;
            fd7<? super Integer> fd7Var = this.h;
            for (int i2 = this.f; i2 != i; i2++) {
                if (this.g) {
                    return;
                }
                fd7Var.f(Integer.valueOf(i2));
            }
            if (this.g) {
                return;
            }
            fd7Var.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0036, code lost:
        
            r9.f = r1;
            r10 = addAndGet(-r5);
         */
        @Override // jf7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(long r10) {
            /*
                r9 = this;
                int r0 = r9.e
                int r1 = r9.f
                fd7<? super java.lang.Integer> r2 = r9.h
                r3 = 0
            L8:
                r5 = r3
            L9:
                int r7 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
                if (r7 == 0) goto L24
                if (r1 == r0) goto L24
                boolean r7 = r9.g
                if (r7 == 0) goto L14
                return
            L14:
                java.lang.Integer r7 = java.lang.Integer.valueOf(r1)
                boolean r7 = r2.f(r7)
                if (r7 == 0) goto L21
                r7 = 1
                long r5 = r5 + r7
            L21:
                int r1 = r1 + 1
                goto L9
            L24:
                if (r1 != r0) goto L2e
                boolean r10 = r9.g
                if (r10 != 0) goto L2d
                r2.a()
            L2d:
                return
            L2e:
                long r10 = r9.get()
                int r7 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
                if (r7 != 0) goto L9
                r9.f = r1
                long r10 = -r5
                long r10 = r9.addAndGet(r10)
                int r5 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r5 != 0) goto L8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: jf7.b.b(long):void");
        }
    }

    public static final class c extends a {
        public final x38<? super Integer> h;

        public c(x38<? super Integer> x38Var, int i, int i2) {
            super(i, i2);
            this.h = x38Var;
        }

        @Override // jf7.a
        public void a() {
            int i = this.e;
            x38<? super Integer> x38Var = this.h;
            for (int i2 = this.f; i2 != i; i2++) {
                if (this.g) {
                    return;
                }
                x38Var.d(Integer.valueOf(i2));
            }
            if (this.g) {
                return;
            }
            x38Var.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
        
            r9.f = r1;
            r10 = addAndGet(-r5);
         */
        @Override // jf7.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(long r10) {
            /*
                r9 = this;
                int r0 = r9.e
                int r1 = r9.f
                x38<? super java.lang.Integer> r2 = r9.h
                r3 = 0
            L8:
                r5 = r3
            L9:
                int r7 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
                if (r7 == 0) goto L21
                if (r1 == r0) goto L21
                boolean r7 = r9.g
                if (r7 == 0) goto L14
                return
            L14:
                java.lang.Integer r7 = java.lang.Integer.valueOf(r1)
                r2.d(r7)
                r7 = 1
                long r5 = r5 + r7
                int r1 = r1 + 1
                goto L9
            L21:
                if (r1 != r0) goto L2b
                boolean r10 = r9.g
                if (r10 != 0) goto L2a
                r2.a()
            L2a:
                return
            L2b:
                long r10 = r9.get()
                int r7 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
                if (r7 != 0) goto L9
                r9.f = r1
                long r10 = -r5
                long r10 = r9.addAndGet(r10)
                int r5 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r5 != 0) goto L8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: jf7.c.b(long):void");
        }
    }

    public jf7(int i, int i2) {
        this.f = i;
        this.g = i + i2;
    }

    @Override // defpackage.mb7
    public void t(x38<? super Integer> x38Var) {
        if (x38Var instanceof fd7) {
            x38Var.e(new b((fd7) x38Var, this.f, this.g));
        } else {
            x38Var.e(new c(x38Var, this.f, this.g));
        }
    }
}
