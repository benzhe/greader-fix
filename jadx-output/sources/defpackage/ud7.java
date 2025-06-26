package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ud7<T> implements cc7<T> {
    public final AtomicReference<ic7> e;
    public final cc7<? super T> f;

    public ud7(AtomicReference<ic7> atomicReference, cc7<? super T> cc7Var) {
        this.e = atomicReference;
        this.f = cc7Var;
    }

    @Override // defpackage.cc7
    public void b(Throwable th) {
        this.f.b(th);
    }

    @Override // defpackage.cc7
    public void c(ic7 ic7Var) {
        yc7.t(this.e, ic7Var);
    }

    @Override // defpackage.cc7
    public void onSuccess(T t) {
        this.f.onSuccess(t);
    }
}
