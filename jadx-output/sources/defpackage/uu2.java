package defpackage;

/* loaded from: classes.dex */
public final class uu2<I, O> extends vu2<I, O, cv2<? super I, ? extends O>, aw2<? extends O>> {
    public uu2(aw2<? extends I> aw2Var, cv2<? super I, ? extends O> cv2Var) {
        super(aw2Var, cv2Var);
    }

    @Override // defpackage.vu2
    public final /* synthetic */ void B(Object obj) {
        k((aw2) obj);
    }

    @Override // defpackage.vu2
    public final /* synthetic */ Object C(Object obj, Object obj2) throws Exception {
        cv2 cv2Var = (cv2) obj;
        aw2<O> aw2VarA = cv2Var.a(obj2);
        c50.G1(aw2VarA, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", cv2Var);
        return aw2VarA;
    }
}
