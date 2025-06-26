package defpackage;

import defpackage.wi7;

/* loaded from: classes2.dex */
public final class ij7<T> implements pb7<T>, y38 {
    public final x38<? super T> e;
    public y38 f;
    public boolean g;
    public qi7<Object> h;
    public volatile boolean i;

    public ij7(x38<? super T> x38Var) {
        this.e = x38Var;
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
            if (!this.g) {
                this.i = true;
                this.g = true;
                this.e.a();
            } else {
                qi7<Object> qi7Var = this.h;
                if (qi7Var == null) {
                    qi7Var = new qi7<>(4);
                    this.h = qi7Var;
                }
                qi7Var.b(wi7.COMPLETE);
            }
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
                if (this.g) {
                    this.i = true;
                    qi7<Object> qi7Var = this.h;
                    if (qi7Var == null) {
                        qi7Var = new qi7<>(4);
                        this.h = qi7Var;
                    }
                    qi7Var.a[0] = new wi7.a(th);
                    return;
                }
                this.i = true;
                this.g = true;
            }
            if (z) {
                n56.z1(th);
            } else {
                this.e.b(th);
            }
        }
    }

    @Override // defpackage.y38
    public void cancel() {
        this.f.cancel();
    }

    @Override // defpackage.x38
    public void d(T t) {
        qi7<Object> qi7Var;
        if (this.i) {
            return;
        }
        if (t == null) {
            this.f.cancel();
            b(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.i) {
                return;
            }
            if (this.g) {
                qi7<Object> qi7Var2 = this.h;
                if (qi7Var2 == null) {
                    qi7Var2 = new qi7<>(4);
                    this.h = qi7Var2;
                }
                qi7Var2.b(t);
                return;
            }
            this.g = true;
            this.e.d(t);
            do {
                synchronized (this) {
                    qi7Var = this.h;
                    if (qi7Var == null) {
                        this.g = false;
                        return;
                    }
                    this.h = null;
                }
            } while (!qi7Var.a(this.e));
        }
    }

    @Override // defpackage.pb7, defpackage.x38
    public void e(y38 y38Var) {
        if (pi7.C(this.f, y38Var)) {
            this.f = y38Var;
            this.e.e(this);
        }
    }

    @Override // defpackage.y38
    public void l(long j) {
        this.f.l(j);
    }
}
