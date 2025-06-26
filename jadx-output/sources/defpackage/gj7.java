package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class gj7<T> extends hj7<T> {
    public static final a[] g = new a[0];
    public static final a[] h = new a[0];
    public final AtomicReference<a<T>[]> e = new AtomicReference<>(h);
    public Throwable f;

    public static final class a<T> extends AtomicBoolean implements ic7 {
        public final yb7<? super T> e;
        public final gj7<T> f;

        public a(yb7<? super T> yb7Var, gj7<T> gj7Var) {
            this.e = yb7Var;
            this.f = gj7Var;
        }

        @Override // defpackage.ic7
        public void k() {
            if (compareAndSet(false, true)) {
                this.f.h(this);
            }
        }
    }

    @Override // defpackage.yb7
    public void a() {
        a<T>[] aVarArr = this.e.get();
        a<T>[] aVarArr2 = g;
        if (aVarArr == aVarArr2) {
            return;
        }
        for (a<T> aVar : this.e.getAndSet(aVarArr2)) {
            if (!aVar.get()) {
                aVar.e.a();
            }
        }
    }

    @Override // defpackage.yb7
    public void b(Throwable th) {
        Objects.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        a<T>[] aVarArr = this.e.get();
        a<T>[] aVarArr2 = g;
        if (aVarArr == aVarArr2) {
            n56.z1(th);
            return;
        }
        this.f = th;
        for (a<T> aVar : this.e.getAndSet(aVarArr2)) {
            if (aVar.get()) {
                n56.z1(th);
            } else {
                aVar.e.b(th);
            }
        }
    }

    @Override // defpackage.yb7
    public void c(ic7 ic7Var) {
        if (this.e.get() == g) {
            ic7Var.k();
        }
    }

    @Override // defpackage.yb7
    public void d(T t) {
        Objects.requireNonNull(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a<T> aVar : this.e.get()) {
            if (!aVar.get()) {
                aVar.e.d(t);
            }
        }
    }

    @Override // defpackage.wb7
    public void f(yb7<? super T> yb7Var) {
        boolean z;
        a<T> aVar = new a<>(yb7Var, this);
        yb7Var.c(aVar);
        while (true) {
            a<T>[] aVarArr = this.e.get();
            z = false;
            if (aVarArr == g) {
                break;
            }
            int length = aVarArr.length;
            a<T>[] aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
            if (this.e.compareAndSet(aVarArr, aVarArr2)) {
                z = true;
                break;
            }
        }
        if (z) {
            if (aVar.get()) {
                h(aVar);
            }
        } else {
            Throwable th = this.f;
            if (th != null) {
                yb7Var.b(th);
            } else {
                yb7Var.a();
            }
        }
    }

    public void h(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.e.get();
            if (aVarArr == g || aVarArr == h) {
                return;
            }
            int length = aVarArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (aVarArr[i] == aVar) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                aVarArr2 = h;
            } else {
                a<T>[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.e.compareAndSet(aVarArr, aVarArr2));
    }
}
