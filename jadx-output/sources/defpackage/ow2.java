package defpackage;

import java.util.Objects;

/* JADX INFO: Add missing generic type declarations: [V] */
/* loaded from: classes.dex */
public final class ow2<V> extends wv2<aw2<V>> {
    public final dv2<V> h;
    public final /* synthetic */ lw2 i;

    public ow2(lw2 lw2Var, dv2<V> dv2Var) {
        this.i = lw2Var;
        Objects.requireNonNull(dv2Var);
        this.h = dv2Var;
    }

    @Override // defpackage.wv2
    public final boolean b() {
        return this.i.isDone();
    }

    @Override // defpackage.wv2
    public final /* synthetic */ void c(Object obj, Throwable th) {
        aw2<? extends V> aw2Var = (aw2) obj;
        if (th == null) {
            this.i.k(aw2Var);
        } else {
            this.i.j(th);
        }
    }

    @Override // defpackage.wv2
    public final /* synthetic */ Object d() throws Exception {
        aw2<V> aw2VarA = this.h.a();
        c50.G1(aw2VarA, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.h);
        return aw2VarA;
    }

    @Override // defpackage.wv2
    public final String e() {
        return this.h.toString();
    }
}
