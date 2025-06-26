package defpackage;

import defpackage.wu2;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public final class gv2<V> extends wu2<Object, V> {
    public iv2<?> t;

    public gv2(it2<? extends aw2<?>> it2Var, boolean z, Executor executor, Callable<V> callable) {
        super(it2Var, z, false);
        this.t = new iv2(this, callable, executor);
        J();
    }

    @Override // defpackage.wu2
    public final void F(wu2.a aVar) {
        super.F(aVar);
        if (aVar == wu2.a.OUTPUT_FUTURE_DONE) {
            this.t = null;
        }
    }

    @Override // defpackage.wu2
    public final void H(int i, Object obj) {
    }

    @Override // defpackage.wu2
    public final void K() {
        iv2<?> iv2Var = this.t;
        if (iv2Var != null) {
            try {
                iv2Var.h.execute(iv2Var);
            } catch (RejectedExecutionException e) {
                iv2Var.i.j(e);
            }
        }
    }

    @Override // defpackage.su2
    public final void e() {
        iv2<?> iv2Var = this.t;
        if (iv2Var != null) {
            iv2Var.a();
        }
    }
}
