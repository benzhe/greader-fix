package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ce7 extends hb7 {
    public final lb7 a;
    public final zb7 b;

    public static final class a extends AtomicReference<ic7> implements jb7, ic7, Runnable {
        public final jb7 e;
        public final zb7 f;
        public Throwable g;

        public a(jb7 jb7Var, zb7 zb7Var) {
            this.e = jb7Var;
            this.f = zb7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            yc7.t(this, this.f.b(this));
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            this.g = th;
            yc7.t(this, this.f.b(this));
        }

        @Override // defpackage.jb7
        public void c(ic7 ic7Var) {
            if (yc7.w(this, ic7Var)) {
                this.e.c(this);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.g;
            if (th == null) {
                this.e.a();
            } else {
                this.g = null;
                this.e.b(th);
            }
        }
    }

    public ce7(lb7 lb7Var, zb7 zb7Var) {
        this.a = lb7Var;
        this.b = zb7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        this.a.a(new a(jb7Var, this.b));
    }
}
