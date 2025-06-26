package defpackage;

/* loaded from: classes2.dex */
public final class ke7<T> extends he7<T, T> {
    public final tc7<? super T> g;
    public final tc7<? super Throwable> h;
    public final qc7 i;
    public final qc7 j;

    public static final class a<T> extends fi7<T, T> {
        public final tc7<? super T> j;
        public final tc7<? super Throwable> k;
        public final qc7 l;
        public final qc7 m;

        public a(fd7<? super T> fd7Var, tc7<? super T> tc7Var, tc7<? super Throwable> tc7Var2, qc7 qc7Var, qc7 qc7Var2) {
            super(fd7Var);
            this.j = tc7Var;
            this.k = tc7Var2;
            this.l = qc7Var;
            this.m = qc7Var2;
        }

        @Override // defpackage.fi7, defpackage.x38
        public void a() {
            if (this.h) {
                return;
            }
            try {
                this.l.run();
                this.h = true;
                this.e.a();
                try {
                    this.m.run();
                } catch (Throwable th) {
                    n56.r2(th);
                    n56.z1(th);
                }
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override // defpackage.fi7, defpackage.x38
        public void b(Throwable th) {
            if (this.h) {
                n56.z1(th);
                return;
            }
            boolean z = true;
            this.h = true;
            try {
                this.k.accept(th);
            } catch (Throwable th2) {
                n56.r2(th2);
                this.e.b(new kc7(th, th2));
                z = false;
            }
            if (z) {
                this.e.b(th);
            }
            try {
                this.m.run();
            } catch (Throwable th3) {
                n56.r2(th3);
                n56.z1(th3);
            }
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.h) {
                return;
            }
            if (this.i != 0) {
                this.e.d(null);
                return;
            }
            try {
                this.j.accept(t);
                this.e.d(t);
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // defpackage.fd7
        public boolean f(T t) {
            if (this.h) {
                return false;
            }
            try {
                this.j.accept(t);
                return this.e.f(t);
            } catch (Throwable th) {
                c(th);
                return false;
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            return g(i);
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            try {
                T tPoll = this.g.poll();
                if (tPoll != null) {
                    try {
                        this.j.accept(tPoll);
                    } catch (Throwable th) {
                        try {
                            n56.r2(th);
                            try {
                                this.k.accept(th);
                                throw vi7.c(th);
                            } catch (Throwable th2) {
                                throw new kc7(th, th2);
                            }
                        } finally {
                            this.m.run();
                        }
                    }
                } else if (this.i == 1) {
                    this.l.run();
                }
                return tPoll;
            } catch (Throwable th3) {
                n56.r2(th3);
                try {
                    this.k.accept(th3);
                    throw vi7.c(th3);
                } catch (Throwable th4) {
                    throw new kc7(th3, th4);
                }
            }
        }
    }

    public static final class b<T> extends gi7<T, T> {
        public final tc7<? super T> j;
        public final tc7<? super Throwable> k;
        public final qc7 l;
        public final qc7 m;

        public b(x38<? super T> x38Var, tc7<? super T> tc7Var, tc7<? super Throwable> tc7Var2, qc7 qc7Var, qc7 qc7Var2) {
            super(x38Var);
            this.j = tc7Var;
            this.k = tc7Var2;
            this.l = qc7Var;
            this.m = qc7Var2;
        }

        @Override // defpackage.gi7, defpackage.x38
        public void a() {
            if (this.h) {
                return;
            }
            try {
                this.l.run();
                this.h = true;
                this.e.a();
                try {
                    this.m.run();
                } catch (Throwable th) {
                    n56.r2(th);
                    n56.z1(th);
                }
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override // defpackage.gi7, defpackage.x38
        public void b(Throwable th) {
            if (this.h) {
                n56.z1(th);
                return;
            }
            boolean z = true;
            this.h = true;
            try {
                this.k.accept(th);
            } catch (Throwable th2) {
                n56.r2(th2);
                this.e.b(new kc7(th, th2));
                z = false;
            }
            if (z) {
                this.e.b(th);
            }
            try {
                this.m.run();
            } catch (Throwable th3) {
                n56.r2(th3);
                n56.z1(th3);
            }
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.h) {
                return;
            }
            if (this.i != 0) {
                this.e.d(null);
                return;
            }
            try {
                this.j.accept(t);
                this.e.d(t);
            } catch (Throwable th) {
                c(th);
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            return g(i);
        }

        @Override // defpackage.nd7
        public T poll() throws Exception {
            try {
                T tPoll = this.g.poll();
                if (tPoll != null) {
                    try {
                        this.j.accept(tPoll);
                    } catch (Throwable th) {
                        try {
                            n56.r2(th);
                            try {
                                this.k.accept(th);
                                throw vi7.c(th);
                            } catch (Throwable th2) {
                                throw new kc7(th, th2);
                            }
                        } finally {
                            this.m.run();
                        }
                    }
                } else if (this.i == 1) {
                    this.l.run();
                }
                return tPoll;
            } catch (Throwable th3) {
                n56.r2(th3);
                try {
                    this.k.accept(th3);
                    throw vi7.c(th3);
                } catch (Throwable th4) {
                    throw new kc7(th3, th4);
                }
            }
        }
    }

    public ke7(mb7<T> mb7Var, tc7<? super T> tc7Var, tc7<? super Throwable> tc7Var2, qc7 qc7Var, qc7 qc7Var2) {
        super(mb7Var);
        this.g = tc7Var;
        this.h = tc7Var2;
        this.i = qc7Var;
        this.j = qc7Var2;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        if (x38Var instanceof fd7) {
            this.f.s(new a((fd7) x38Var, this.g, this.h, this.i, this.j));
        } else {
            this.f.s(new b(x38Var, this.g, this.h, this.i, this.j));
        }
    }
}
