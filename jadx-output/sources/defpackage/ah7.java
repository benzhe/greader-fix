package defpackage;

/* loaded from: classes2.dex */
public final class ah7<T> extends wb7<T> implements ld7<T> {
    public final T e;

    public ah7(T t) {
        this.e = t;
    }

    @Override // defpackage.ld7, java.util.concurrent.Callable
    public T call() {
        return this.e;
    }

    @Override // defpackage.wb7
    public void f(yb7<? super T> yb7Var) {
        ch7 ch7Var = new ch7(yb7Var, this.e);
        yb7Var.c(ch7Var);
        ch7Var.run();
    }
}
