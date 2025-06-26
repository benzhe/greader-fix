package defpackage;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: Add missing generic type declarations: [V] */
/* loaded from: classes.dex */
public final class nw2<V> extends wv2<V> {
    public final Callable<V> h;
    public final /* synthetic */ lw2 i;

    public nw2(lw2 lw2Var, Callable<V> callable) {
        this.i = lw2Var;
        Objects.requireNonNull(callable);
        this.h = callable;
    }

    @Override // defpackage.wv2
    public final boolean b() {
        return this.i.isDone();
    }

    @Override // defpackage.wv2
    public final void c(V v, Throwable th) {
        if (th == null) {
            this.i.h(v);
        } else {
            this.i.j(th);
        }
    }

    @Override // defpackage.wv2
    public final V d() throws Exception {
        return this.h.call();
    }

    @Override // defpackage.wv2
    public final String e() {
        return this.h.toString();
    }
}
