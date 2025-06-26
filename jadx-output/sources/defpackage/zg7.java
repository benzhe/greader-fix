package defpackage;

import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class zg7<T> extends wb7<T> {
    public final Iterable<? extends T> e;

    public static final class a<T> extends qd7<T> {
        public final yb7<? super T> e;
        public final Iterator<? extends T> f;
        public volatile boolean g;
        public boolean h;
        public boolean i;

        public a(yb7<? super T> yb7Var, Iterator<? extends T> it) {
            this.e = yb7Var;
            this.f = it;
        }

        @Override // defpackage.nd7
        public void clear() {
            this.h = true;
        }

        @Override // defpackage.nd7
        public boolean isEmpty() {
            return this.h;
        }

        @Override // defpackage.ic7
        public void k() {
            this.g = true;
        }

        @Override // defpackage.nd7
        public T poll() {
            if (this.h) {
                return null;
            }
            if (!this.i) {
                this.i = true;
            } else if (!this.f.hasNext()) {
                this.h = true;
                return null;
            }
            T next = this.f.next();
            Objects.requireNonNull(next, "The iterator returned a null value");
            return next;
        }
    }

    public zg7(Iterable<? extends T> iterable) {
        this.e = iterable;
    }

    @Override // defpackage.wb7
    public void f(yb7<? super T> yb7Var) {
        zc7 zc7Var = zc7.INSTANCE;
        try {
            Iterator<? extends T> it = this.e.iterator();
            try {
                if (!it.hasNext()) {
                    yb7Var.c(zc7Var);
                    yb7Var.a();
                    return;
                }
                a aVar = new a(yb7Var, it);
                yb7Var.c(aVar);
                while (!aVar.g) {
                    try {
                        T next = aVar.f.next();
                        Objects.requireNonNull(next, "The iterator returned a null value");
                        aVar.e.d(next);
                        if (aVar.g) {
                            return;
                        }
                        try {
                            if (!aVar.f.hasNext()) {
                                if (aVar.g) {
                                    return;
                                }
                                aVar.e.a();
                                return;
                            }
                        } catch (Throwable th) {
                            n56.r2(th);
                            aVar.e.b(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        n56.r2(th2);
                        aVar.e.b(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                n56.r2(th3);
                yb7Var.c(zc7Var);
                yb7Var.b(th3);
            }
        } catch (Throwable th4) {
            n56.r2(th4);
            yb7Var.c(zc7Var);
            yb7Var.b(th4);
        }
    }
}
