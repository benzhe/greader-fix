package defpackage;

/* loaded from: classes2.dex */
public final class pe7<T> extends he7<T, T> {
    public final vc7<? super T> g;

    public static final class a<T> extends fi7<T, T> {
        public final vc7<? super T> j;

        public a(fd7<? super T> fd7Var, vc7<? super T> vc7Var) {
            super(fd7Var);
            this.j = vc7Var;
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (f(t)) {
                return;
            }
            this.f.l(1L);
        }

        @Override // defpackage.fd7
        public boolean f(T t) {
            if (this.h) {
                return false;
            }
            if (this.i != 0) {
                return this.e.f(null);
            }
            try {
                return this.j.test(t) && this.e.f(t);
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            return g(i);
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            kd7<T> kd7Var = this.g;
            vc7<? super T> vc7Var = this.j;
            while (true) {
                T tPoll = kd7Var.poll();
                if (tPoll == null) {
                    return null;
                }
                if (vc7Var.test(tPoll)) {
                    return tPoll;
                }
                if (this.i == 2) {
                    kd7Var.l(1L);
                }
            }
        }
    }

    public static final class b<T> extends gi7<T, T> implements fd7<T> {
        public final vc7<? super T> j;

        public b(x38<? super T> x38Var, vc7<? super T> vc7Var) {
            super(x38Var);
            this.j = vc7Var;
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (f(t)) {
                return;
            }
            this.f.l(1L);
        }

        @Override // defpackage.fd7
        public boolean f(T t) {
            if (this.h) {
                return false;
            }
            if (this.i != 0) {
                this.e.d(null);
                return true;
            }
            try {
                boolean zTest = this.j.test(t);
                if (zTest) {
                    this.e.d(t);
                }
                return zTest;
            } catch (Throwable th) {
                c(th);
                return true;
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            return g(i);
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            kd7<T> kd7Var = this.g;
            vc7<? super T> vc7Var = this.j;
            while (true) {
                T tPoll = kd7Var.poll();
                if (tPoll == null) {
                    return null;
                }
                if (vc7Var.test(tPoll)) {
                    return tPoll;
                }
                if (this.i == 2) {
                    kd7Var.l(1L);
                }
            }
        }
    }

    public pe7(mb7<T> mb7Var, vc7<? super T> vc7Var) {
        super(mb7Var);
        this.g = vc7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        if (x38Var instanceof fd7) {
            this.f.s(new a((fd7) x38Var, this.g));
        } else {
            this.f.s(new b(x38Var, this.g));
        }
    }
}
