package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

/* loaded from: classes.dex */
public final class lw2<V> extends mv2<V> implements RunnableFuture<V> {
    public volatile wv2<?> l;

    public lw2(Callable<V> callable) {
        this.l = new nw2(this, callable);
    }

    @Override // defpackage.su2
    public final void b() {
        wv2<?> wv2Var;
        if (l() && (wv2Var = this.l) != null) {
            wv2Var.a();
        }
        this.l = null;
    }

    @Override // defpackage.su2
    public final String g() {
        wv2<?> wv2Var = this.l;
        if (wv2Var == null) {
            return super.g();
        }
        String strValueOf = String.valueOf(wv2Var);
        return jo.c(strValueOf.length() + 7, "task=[", strValueOf, "]");
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        wv2<?> wv2Var = this.l;
        if (wv2Var != null) {
            wv2Var.run();
        }
        this.l = null;
    }

    public lw2(dv2<V> dv2Var) {
        this.l = new ow2(this, dv2Var);
    }
}
