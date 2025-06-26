package defpackage;

/* loaded from: classes2.dex */
public class li7<T> extends ji7<T> {
    public final x38<? super T> e;
    public T f;

    public li7(x38<? super T> x38Var) {
        this.e = x38Var;
    }

    public void cancel() {
        set(4);
        this.f = null;
    }

    @Override // defpackage.nd7
    public final void clear() {
        lazySet(32);
        this.f = null;
    }

    public final void g(T t) {
        int i = get();
        while (i != 8) {
            if ((i & (-3)) != 0) {
                return;
            }
            if (i == 2) {
                lazySet(3);
                x38<? super T> x38Var = this.e;
                x38Var.d(t);
                if (get() != 4) {
                    x38Var.a();
                    return;
                }
                return;
            }
            this.f = t;
            if (compareAndSet(0, 1)) {
                return;
            }
            i = get();
            if (i == 4) {
                this.f = null;
                return;
            }
        }
        this.f = t;
        lazySet(16);
        x38<? super T> x38Var2 = this.e;
        x38Var2.d(t);
        if (get() != 4) {
            x38Var2.a();
        }
    }

    @Override // defpackage.jd7
    public final int i(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    @Override // defpackage.nd7
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // defpackage.y38
    public final void l(long j) {
        T t;
        if (pi7.y(j)) {
            do {
                int i = get();
                if ((i & (-2)) != 0) {
                    return;
                }
                if (i == 1) {
                    if (!compareAndSet(1, 3) || (t = this.f) == null) {
                        return;
                    }
                    this.f = null;
                    x38<? super T> x38Var = this.e;
                    x38Var.d(t);
                    if (get() != 4) {
                        x38Var.a();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // defpackage.nd7
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        T t = this.f;
        this.f = null;
        return t;
    }
}
