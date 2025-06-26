package defpackage;

import java.lang.Throwable;

/* loaded from: classes.dex */
public final class qu2<V, X extends Throwable> extends pu2<V, X, vs2<? super X, ? extends V>, V> {
    public qu2(aw2<? extends V> aw2Var, Class<X> cls, vs2<? super X, ? extends V> vs2Var) {
        super(aw2Var, cls, vs2Var);
    }

    @Override // defpackage.pu2
    public final void B(V v) {
        h(v);
    }

    @Override // defpackage.pu2
    public final /* synthetic */ Object C(Object obj, Throwable th) throws Exception {
        return ((vs2) obj).apply(th);
    }
}
