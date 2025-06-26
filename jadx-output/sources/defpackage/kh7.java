package defpackage;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class kh7<T, R> extends wb7<R> {
    public final ec7<T> e;
    public final uc7<? super T, ? extends Iterable<? extends R>> f;

    public static final class a<T, R> extends pd7<R> implements cc7<T> {
        public final yb7<? super R> e;
        public final uc7<? super T, ? extends Iterable<? extends R>> f;
        public ic7 g;
        public volatile boolean h;

        public a(yb7<? super R> yb7Var, uc7<? super T, ? extends Iterable<? extends R>> uc7Var) {
            this.e = yb7Var;
            this.f = uc7Var;
        }

        @Override // defpackage.cc7
        public void b(Throwable th) {
            this.g = yc7.DISPOSED;
            this.e.b(th);
        }

        @Override // defpackage.cc7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                this.g = ic7Var;
                this.e.c(this);
            }
        }

        @Override // defpackage.nd7
        public void clear() {
        }

        @Override // defpackage.nd7
        public boolean isEmpty() {
            return true;
        }

        @Override // defpackage.ic7
        public void k() {
            this.h = true;
            this.g.k();
            this.g = yc7.DISPOSED;
        }

        @Override // defpackage.cc7
        public void onSuccess(T t) {
            yb7<? super R> yb7Var = this.e;
            try {
                Iterator<? extends R> it = this.f.apply(t).iterator();
                if (!it.hasNext()) {
                    yb7Var.a();
                    return;
                }
                while (!this.h) {
                    try {
                        yb7Var.d(it.next());
                        if (this.h) {
                            return;
                        }
                        try {
                            if (!it.hasNext()) {
                                yb7Var.a();
                                return;
                            }
                        } catch (Throwable th) {
                            n56.r2(th);
                            yb7Var.b(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        n56.r2(th2);
                        yb7Var.b(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                n56.r2(th3);
                this.e.b(th3);
            }
        }

        @Override // defpackage.nd7
        public R poll() throws Exception {
            return null;
        }
    }

    public kh7(ec7<T> ec7Var, uc7<? super T, ? extends Iterable<? extends R>> uc7Var) {
        this.e = ec7Var;
        this.f = uc7Var;
    }

    @Override // defpackage.wb7
    public void f(yb7<? super R> yb7Var) {
        this.e.a(new a(yb7Var, this.f));
    }
}
