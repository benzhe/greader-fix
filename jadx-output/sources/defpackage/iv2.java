package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public final class iv2 extends wv2 {
    public final Executor h;
    public final /* synthetic */ gv2 i;
    public final Callable<V> j;
    public final /* synthetic */ gv2 k;

    public iv2(gv2 gv2Var, Callable<V> callable, Executor executor) {
        this.k = gv2Var;
        this.i = gv2Var;
        Objects.requireNonNull(executor);
        this.h = executor;
        Objects.requireNonNull(callable);
        this.j = callable;
    }

    @Override // defpackage.wv2
    public final boolean b() {
        return this.i.isDone();
    }

    @Override // defpackage.wv2
    public final void c(Object obj, Throwable th) {
        gv2 gv2Var = this.i;
        gv2Var.t = null;
        if (th == null) {
            this.k.h(obj);
            return;
        }
        if (th instanceof ExecutionException) {
            gv2Var.j(th.getCause());
        } else if (th instanceof CancellationException) {
            gv2Var.cancel(false);
        } else {
            gv2Var.j(th);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // defpackage.wv2
    public final V d() throws Exception {
        return this.j.call();
    }

    @Override // defpackage.wv2
    public final String e() {
        return this.j.toString();
    }
}
