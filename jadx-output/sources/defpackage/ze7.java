package defpackage;

/* loaded from: classes2.dex */
public final class ze7<T> extends mb7<T> implements ld7<T> {
    public final T f;

    public ze7(T t) {
        this.f = t;
    }

    @Override // defpackage.ld7, java.util.concurrent.Callable
    public T call() {
        return this.f;
    }

    @Override // defpackage.mb7
    public void t(x38<? super T> x38Var) {
        x38Var.e(new ni7(x38Var, this.f));
    }
}
