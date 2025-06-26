package defpackage;

import java.util.Objects;

/* loaded from: classes2.dex */
public final class pf7<T> extends he7<T, T> {
    public final uc7<? super mb7<Throwable>, ? extends w38<?>> g;

    public static final class a<T> extends nf7<T, Throwable> {
        public a(x38<? super T> x38Var, yi7<Throwable> yi7Var, y38 y38Var) {
            super(x38Var, yi7Var, y38Var);
        }

        @Override // defpackage.x38
        public void a() {
            this.o.cancel();
            this.m.a();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            i(mi7.INSTANCE);
            long j = this.p;
            if (j != 0) {
                this.p = 0L;
                h(j);
            }
            this.o.l(1L);
            this.n.d(th);
        }
    }

    public pf7(mb7<T> mb7Var, uc7<? super mb7<Throwable>, ? extends w38<?>> uc7Var) {
        super(mb7Var);
        this.g = uc7Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        ij7 ij7Var = new ij7(x38Var);
        yi7 aj7Var = new aj7(8);
        if (!(aj7Var instanceof zi7)) {
            aj7Var = new zi7(aj7Var);
        }
        try {
            w38<?> w38VarApply = this.g.apply(aj7Var);
            Objects.requireNonNull(w38VarApply, "handler returned a null Publisher");
            w38<?> w38Var = w38VarApply;
            mf7 mf7Var = new mf7(this.f);
            a aVar = new a(ij7Var, aj7Var, mf7Var);
            mf7Var.h = aVar;
            x38Var.e(aVar);
            w38Var.i(mf7Var);
            mf7Var.d(0);
        } catch (Throwable th) {
            n56.r2(th);
            x38Var.e(mi7.INSTANCE);
            x38Var.b(th);
        }
    }
}
