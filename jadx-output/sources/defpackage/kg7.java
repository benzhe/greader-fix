package defpackage;

/* loaded from: classes2.dex */
public final class kg7<T> extends rb7<T> implements ld7<T> {
    public final T e;

    public kg7(T t) {
        this.e = t;
    }

    @Override // defpackage.ld7, java.util.concurrent.Callable
    public T call() {
        return this.e;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        tb7Var.c(zc7.INSTANCE);
        tb7Var.onSuccess(this.e);
    }
}
