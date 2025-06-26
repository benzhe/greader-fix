package defpackage;

/* loaded from: classes2.dex */
public final class nh7<T> extends ac7<T> {
    public final T e;

    public nh7(T t) {
        this.e = t;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        cc7Var.c(zc7.INSTANCE);
        cc7Var.onSuccess(this.e);
    }
}
