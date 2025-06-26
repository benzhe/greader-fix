package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ag7<T> extends rb7<T> {
    public final ub7<T> e;

    public static final class a<T> extends AtomicReference<ic7> implements sb7<T>, ic7 {
        public final tb7<? super T> e;

        public a(tb7<? super T> tb7Var) {
            this.e = tb7Var;
        }

        public void a() {
            ic7 andSet;
            ic7 ic7Var = get();
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var || (andSet = getAndSet(yc7Var)) == yc7Var) {
                return;
            }
            try {
                this.e.a();
            } finally {
                if (andSet != null) {
                    andSet.k();
                }
            }
        }

        public void b(Throwable th) {
            boolean z;
            ic7 andSet;
            Throwable nullPointerException = th == null ? new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.") : th;
            ic7 ic7Var = get();
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var || (andSet = getAndSet(yc7Var)) == yc7Var) {
                z = false;
            } else {
                try {
                    this.e.b(nullPointerException);
                    z = true;
                } finally {
                    if (andSet != null) {
                        andSet.k();
                    }
                }
            }
            if (z) {
                return;
            }
            n56.z1(th);
        }

        public void c(T t) {
            ic7 andSet;
            ic7 ic7Var = get();
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var || (andSet = getAndSet(yc7Var)) == yc7Var) {
                return;
            }
            try {
                if (t == null) {
                    this.e.b(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.e.onSuccess(t);
                }
                if (andSet != null) {
                    andSet.k();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.k();
                }
                throw th;
            }
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", a.class.getSimpleName(), super.toString());
        }
    }

    public ag7(ub7<T> ub7Var) {
        this.e = ub7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super T> tb7Var) {
        a aVar = new a(tb7Var);
        tb7Var.c(aVar);
        try {
            this.e.a(aVar);
        } catch (Throwable th) {
            n56.r2(th);
            aVar.b(th);
        }
    }
}
