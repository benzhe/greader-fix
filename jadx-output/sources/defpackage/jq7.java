package defpackage;

/* loaded from: classes2.dex */
public final class jq7 extends cp7 {
    public static final jq7 g = new jq7();

    @Override // defpackage.cp7
    public void t(rk7 rk7Var, Runnable runnable) {
        if (((kq7) rk7Var.c(kq7.f)) == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
    }

    @Override // defpackage.cp7
    public String toString() {
        return "Dispatchers.Unconfined";
    }

    @Override // defpackage.cp7
    public boolean w(rk7 rk7Var) {
        return false;
    }
}
