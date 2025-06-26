package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class eh7<T> extends ac7<T> {
    public final dc7<T> e;

    public static final class a<T> extends AtomicReference<ic7> implements bc7<T>, ic7 {
        public final cc7<? super T> e;

        public a(cc7<? super T> cc7Var) {
            this.e = cc7Var;
        }

        public boolean a() {
            return yc7.l(get());
        }

        public void b(Throwable th) {
            boolean z;
            ic7 andSet;
            ic7 ic7Var = get();
            yc7 yc7Var = yc7.DISPOSED;
            if (ic7Var == yc7Var || (andSet = getAndSet(yc7Var)) == yc7Var) {
                z = false;
            } else {
                try {
                    this.e.b(th);
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

    public eh7(dc7<T> dc7Var) {
        this.e = dc7Var;
    }

    @Override // defpackage.ac7
    public void g(cc7<? super T> cc7Var) {
        a aVar = new a(cc7Var);
        cc7Var.c(aVar);
        try {
            this.e.a(aVar);
        } catch (Throwable th) {
            n56.r2(th);
            aVar.b(th);
        }
    }
}
