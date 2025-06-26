package defpackage;

/* loaded from: classes2.dex */
public abstract class nf7<T, U> extends oi7 implements pb7<T> {
    public final x38<? super T> m;
    public final yi7<U> n;
    public final y38 o;
    public long p;

    public nf7(x38<? super T> x38Var, yi7<U> yi7Var, y38 y38Var) {
        super(false);
        this.m = x38Var;
        this.n = yi7Var;
        this.o = y38Var;
    }

    @Override // defpackage.oi7, defpackage.y38
    public final void cancel() {
        super.cancel();
        this.o.cancel();
    }

    @Override // defpackage.x38
    public final void d(T t) {
        this.p++;
        this.m.d(t);
    }

    @Override // defpackage.pb7, defpackage.x38
    public final void e(y38 y38Var) {
        i(y38Var);
    }
}
