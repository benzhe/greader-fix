package defpackage;

import defpackage.wi7;

/* loaded from: classes2.dex */
public final class zi7<T> extends yi7<T> {
    public final yi7<T> f;
    public boolean g;
    public qi7<Object> h;
    public volatile boolean i;

    public zi7(yi7<T> yi7Var) {
        this.f = yi7Var;
    }

    @Override // defpackage.x38
    public void a() {
        if (this.i) {
            return;
        }
        synchronized (this) {
            if (this.i) {
                return;
            }
            this.i = true;
            if (!this.g) {
                this.g = true;
                this.f.a();
                return;
            }
            qi7<Object> qi7Var = this.h;
            if (qi7Var == null) {
                qi7Var = new qi7<>(4);
                this.h = qi7Var;
            }
            qi7Var.b(wi7.COMPLETE);
        }
    }

    @Override // defpackage.x38
    public void b(Throwable th) {
        if (this.i) {
            n56.z1(th);
            return;
        }
        synchronized (this) {
            boolean z = false;
            if (this.i) {
                z = true;
            } else {
                this.i = true;
                if (this.g) {
                    qi7<Object> qi7Var = this.h;
                    if (qi7Var == null) {
                        qi7Var = new qi7<>(4);
                        this.h = qi7Var;
                    }
                    qi7Var.a[0] = new wi7.a(th);
                    return;
                }
                this.g = true;
            }
            if (z) {
                n56.z1(th);
            } else {
                this.f.b(th);
            }
        }
    }

    @Override // defpackage.x38
    public void d(T t) {
        if (this.i) {
            return;
        }
        synchronized (this) {
            if (this.i) {
                return;
            }
            if (!this.g) {
                this.g = true;
                this.f.d(t);
                w();
            } else {
                qi7<Object> qi7Var = this.h;
                if (qi7Var == null) {
                    qi7Var = new qi7<>(4);
                    this.h = qi7Var;
                }
                qi7Var.b(t);
            }
        }
    }

    @Override // defpackage.pb7, defpackage.x38
    public void e(y38 y38Var) {
        boolean z = true;
        if (!this.i) {
            synchronized (this) {
                if (!this.i) {
                    if (this.g) {
                        qi7<Object> qi7Var = this.h;
                        if (qi7Var == null) {
                            qi7Var = new qi7<>(4);
                            this.h = qi7Var;
                        }
                        qi7Var.b(new wi7.b(y38Var));
                        return;
                    }
                    this.g = true;
                    z = false;
                }
            }
        }
        if (z) {
            y38Var.cancel();
        } else {
            this.f.e(y38Var);
            w();
        }
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        this.f.i(x38Var);
    }

    public void w() {
        qi7<Object> qi7Var;
        while (true) {
            synchronized (this) {
                qi7Var = this.h;
                if (qi7Var == null) {
                    this.g = false;
                    return;
                }
                this.h = null;
            }
            qi7Var.a(this.f);
        }
    }
}
