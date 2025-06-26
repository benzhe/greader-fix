package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
/* loaded from: classes2.dex */
public final class sd7<T> extends AtomicReference<ic7> implements cc7<T>, ic7 {
    public final tc7<? super T> e;
    public final tc7<? super Throwable> f;

    public sd7(tc7<? super T> tc7Var, tc7<? super Throwable> tc7Var2) {
        this.e = tc7Var;
        this.f = tc7Var2;
    }

    @Override // defpackage.cc7
    public void b(Throwable th) {
        lazySet(yc7.DISPOSED);
        try {
            this.f.accept(th);
        } catch (Throwable th2) {
            n56.r2(th2);
            n56.z1(new kc7(th, th2));
        }
    }

    @Override // defpackage.cc7
    public void c(ic7 ic7Var) {
        yc7.w(this, ic7Var);
    }

    @Override // defpackage.ic7
    public void k() {
        yc7.i(this);
    }

    @Override // defpackage.cc7
    public void onSuccess(T t) {
        lazySet(yc7.DISPOSED);
        try {
            this.e.accept(t);
        } catch (Throwable th) {
            n56.r2(th);
            n56.z1(th);
        }
    }
}
