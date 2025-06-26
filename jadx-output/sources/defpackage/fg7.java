package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class fg7<T, R> extends yf7<T, R> {
    public final uc7<? super T, ? extends vb7<? extends R>> f;

    public static final class a<T, R> extends AtomicReference<ic7> implements tb7<T>, ic7 {
        public final tb7<? super R> e;
        public final uc7<? super T, ? extends vb7<? extends R>> f;
        public ic7 g;

        /* renamed from: fg7$a$a, reason: collision with other inner class name */
        public final class C0014a implements tb7<R> {
            public C0014a() {
            }

            @Override // defpackage.tb7
            public void a() {
                a.this.e.a();
            }

            @Override // defpackage.tb7
            public void b(Throwable th) {
                a.this.e.b(th);
            }

            @Override // defpackage.tb7
            public void c(ic7 ic7Var) {
                yc7.w(a.this, ic7Var);
            }

            @Override // defpackage.tb7
            public void onSuccess(R r) {
                a.this.e.onSuccess(r);
            }
        }

        public a(tb7<? super R> tb7Var, uc7<? super T, ? extends vb7<? extends R>> uc7Var) {
            this.e = tb7Var;
            this.f = uc7Var;
        }

        @Override // defpackage.tb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                this.g = ic7Var;
                this.e.c(this);
            }
        }

        public boolean d() {
            return yc7.l(get());
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
            this.g.k();
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            try {
                vb7<? extends R> vb7VarApply = this.f.apply(t);
                Objects.requireNonNull(vb7VarApply, "The mapper returned a null MaybeSource");
                vb7<? extends R> vb7Var = vb7VarApply;
                if (d()) {
                    return;
                }
                vb7Var.a(new C0014a());
            } catch (Exception e) {
                n56.r2(e);
                this.e.b(e);
            }
        }
    }

    public fg7(vb7<T> vb7Var, uc7<? super T, ? extends vb7<? extends R>> uc7Var) {
        super(vb7Var);
        this.f = uc7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super R> tb7Var) {
        this.e.a(new a(tb7Var, this.f));
    }
}
