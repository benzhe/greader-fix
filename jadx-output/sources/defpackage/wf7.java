package defpackage;

import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class wf7<T, U extends Collection<? super T>> extends he7<T, U> {
    public final Callable<U> g;

    public static final class a<T, U extends Collection<? super T>> extends li7<U> implements pb7<T>, y38 {
        public y38 g;

        /* JADX WARN: Multi-variable type inference failed */
        public a(x38<? super U> x38Var, U u) {
            super(x38Var);
            this.f = u;
        }

        @Override // defpackage.x38
        public void a() {
            g(this.f);
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            this.f = null;
            this.e.b(th);
        }

        @Override // defpackage.li7, defpackage.y38
        public void cancel() {
            super.cancel();
            this.g.cancel();
        }

        @Override // defpackage.x38
        public void d(T t) {
            Collection collection = (Collection) this.f;
            if (collection != null) {
                collection.add(t);
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.g, y38Var)) {
                this.g = y38Var;
                this.e.e(this);
                y38Var.l(Long.MAX_VALUE);
            }
        }
    }

    public wf7(mb7<T> mb7Var, Callable<U> callable) {
        super(mb7Var);
        this.g = callable;
    }

    @Override // defpackage.mb7
    public void t(x38<? super U> x38Var) {
        try {
            U uCall = this.g.call();
            Objects.requireNonNull(uCall, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f.s(new a(x38Var, uCall));
        } catch (Throwable th) {
            n56.r2(th);
            x38Var.e(mi7.INSTANCE);
            x38Var.b(th);
        }
    }
}
