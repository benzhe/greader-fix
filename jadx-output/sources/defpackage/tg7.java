package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class tg7<R> extends mb7<R> {
    public final lb7 f;
    public final w38<? extends R> g;

    public static final class a<R> extends AtomicReference<y38> implements pb7<R>, jb7, y38 {
        public final x38<? super R> e;
        public w38<? extends R> f;
        public ic7 g;
        public final AtomicLong h = new AtomicLong();

        public a(x38<? super R> x38Var, w38<? extends R> w38Var) {
            this.e = x38Var;
            this.f = w38Var;
        }

        @Override // defpackage.x38
        public void a() {
            w38<? extends R> w38Var = this.f;
            if (w38Var == null) {
                this.e.a();
            } else {
                this.f = null;
                w38Var.i(this);
            }
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.jb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.g, ic7Var)) {
                this.g = ic7Var;
                this.e.e(this);
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            this.g.k();
            pi7.i(this);
        }

        @Override // defpackage.x38
        public void d(R r) {
            this.e.d(r);
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            pi7.t(this, this.h, y38Var);
        }

        @Override // defpackage.y38
        public void l(long j) {
            pi7.k(this, this.h, j);
        }
    }

    public tg7(lb7 lb7Var, w38<? extends R> w38Var) {
        this.f = lb7Var;
        this.g = w38Var;
    }

    @Override // defpackage.mb7
    public void t(x38<? super R> x38Var) {
        this.f.a(new a(x38Var, this.g));
    }
}
