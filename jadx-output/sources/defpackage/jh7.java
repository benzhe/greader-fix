package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class jh7<T> extends hb7 {
    public final ec7<T> a;
    public final uc7<? super T, ? extends lb7> b;

    public static final class a<T> extends AtomicReference<ic7> implements cc7<T>, jb7, ic7 {
        public final jb7 e;
        public final uc7<? super T, ? extends lb7> f;

        public a(jb7 jb7Var, uc7<? super T, ? extends lb7> uc7Var) {
            this.e = jb7Var;
            this.f = uc7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.cc7
        public void c(ic7 ic7Var) {
            yc7.t(this, ic7Var);
        }

        public boolean d() {
            return yc7.l(get());
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }

        @Override // defpackage.cc7
        public void onSuccess(T t) {
            try {
                lb7 lb7VarApply = this.f.apply(t);
                Objects.requireNonNull(lb7VarApply, "The mapper returned a null CompletableSource");
                lb7 lb7Var = lb7VarApply;
                if (d()) {
                    return;
                }
                lb7Var.a(this);
            } catch (Throwable th) {
                n56.r2(th);
                b(th);
            }
        }
    }

    public jh7(ec7<T> ec7Var, uc7<? super T, ? extends lb7> uc7Var) {
        this.a = ec7Var;
        this.b = uc7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        a aVar = new a(jb7Var, this.b);
        jb7Var.c(aVar);
        this.a.a(aVar);
    }
}
