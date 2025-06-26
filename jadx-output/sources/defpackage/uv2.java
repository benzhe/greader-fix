package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class uv2<V> {
    public final boolean a;
    public final nt2<aw2<? extends V>> b;

    public uv2(boolean z, nt2 nt2Var, tv2 tv2Var) {
        this.a = z;
        this.b = nt2Var;
    }

    public final <C> aw2<C> a(Callable<C> callable, Executor executor) {
        return new gv2(this.b, this.a, executor, callable);
    }
}
