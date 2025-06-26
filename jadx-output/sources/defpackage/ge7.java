package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class ge7 extends hb7 {
    public final lb7 a;
    public final zb7 b;

    public static final class a extends AtomicReference<ic7> implements jb7, ic7, Runnable {
        public final jb7 e;
        public final cd7 f = new cd7();
        public final lb7 g;

        public a(jb7 jb7Var, lb7 lb7Var) {
            this.e = jb7Var;
            this.g = lb7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            this.e.b(th);
        }

        @Override // defpackage.jb7
        public void c(ic7 ic7Var) {
            yc7.w(this, ic7Var);
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
            yc7.i(this.f);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.g.a(this);
        }
    }

    public ge7(lb7 lb7Var, zb7 zb7Var) {
        this.a = lb7Var;
        this.b = zb7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        a aVar = new a(jb7Var, this.a);
        jb7Var.c(aVar);
        yc7.t(aVar.f, this.b.b(aVar));
    }
}
