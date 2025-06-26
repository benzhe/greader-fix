package defpackage;

import java.lang.Throwable;

/* loaded from: classes.dex */
public final class ru2<V, X extends Throwable> extends pu2<V, X, cv2<? super X, ? extends V>, aw2<? extends V>> {
    public ru2(aw2<? extends V> aw2Var, Class<X> cls, cv2<? super X, ? extends V> cv2Var) {
        super(aw2Var, cls, cv2Var);
    }

    @Override // defpackage.pu2
    public final /* synthetic */ void B(Object obj) {
        k((aw2) obj);
    }

    @Override // defpackage.pu2
    public final /* synthetic */ Object C(Object obj, Throwable th) throws Exception {
        cv2 cv2Var = (cv2) obj;
        aw2 aw2VarA = cv2Var.a(th);
        c50.G1(aw2VarA, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", cv2Var);
        return aw2VarA;
    }
}
