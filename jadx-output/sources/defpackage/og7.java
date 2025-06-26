package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class og7<T> extends yf7<T, T> {
    public final tc7<? super ic7> f;
    public final tc7<? super T> g;
    public final tc7<? super Throwable> h;
    public final qc7 i;
    public final qc7 j;
    public final qc7 k;

    public static final class a<T> implements tb7<T>, ic7 {
        public final tb7<? super T> e;
        public final og7<T> f;
        public ic7 g;

        public a(tb7<? super T> tb7Var, og7<T> og7Var) {
            this.e = tb7Var;
            this.f = og7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            ic7 ic7Var = this.g;
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var) {
                return;
            }
            try {
                Objects.requireNonNull(this.f);
                this.g = yc7Var;
                this.e.a();
                d();
            } catch (Throwable th) {
                n56.r2(th);
                e(th);
            }
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            if (this.g == yc7.DISPOSED) {
                n56.z1(th);
            } else {
                e(th);
            }
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                try {
                    Objects.requireNonNull(this.f);
                    this.g = ic7Var;
                    this.e.c(this);
                } catch (Throwable th) {
                    n56.r2(th);
                    ic7Var.k();
                    this.g = yc7.DISPOSED;
                    tb7<? super T> tb7Var = this.e;
                    tb7Var.c(zc7.INSTANCE);
                    tb7Var.b(th);
                }
            }
        }

        public void d() {
            try {
                Objects.requireNonNull(this.f);
            } catch (Throwable th) {
                n56.r2(th);
                n56.z1(th);
            }
        }

        public void e(Throwable th) {
            try {
                this.f.h.accept(th);
            } catch (Throwable th2) {
                n56.r2(th2);
                th = new kc7(th, th2);
            }
            this.g = yc7.DISPOSED;
            this.e.b(th);
            d();
        }

        @Override // defpackage.ic7
        public void k() {
            try {
                Objects.requireNonNull(this.f);
            } catch (Throwable th) {
                n56.r2(th);
                n56.z1(th);
            }
            this.g.k();
            this.g = yc7.DISPOSED;
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            ic7 ic7Var = this.g;
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var) {
                return;
            }
            try {
                this.f.g.accept(t);
                this.g = yc7Var;
                this.e.onSuccess(t);
                d();
            } catch (Throwable th) {
                n56.r2(th);
                e(th);
            }
        }
    }

    public og7(vb7<T> vb7Var, tc7<? super ic7> tc7Var, tc7<? super T> tc7Var2, tc7<? super Throwable> tc7Var3, qc7 qc7Var, qc7 qc7Var2, qc7 qc7Var3) {
        super(vb7Var);
        this.f = tc7Var;
        this.g = tc7Var2;
        this.h = tc7Var3;
        this.i = qc7Var;
        this.j = qc7Var2;
        this.k = qc7Var3;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        this.e.a(new a(tb7Var, this));
    }
}
