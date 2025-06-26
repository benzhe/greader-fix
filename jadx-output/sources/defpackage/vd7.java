package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class vd7 extends hb7 {
    public final lb7 a;
    public final lb7 b;

    public static final class a implements jb7 {
        public final AtomicReference<ic7> e;
        public final jb7 f;

        public a(AtomicReference<ic7> atomicReference, jb7 jb7Var) {
            this.e = atomicReference;
            this.f = jb7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            this.f.a();
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            this.f.b(th);
        }

        @Override // defpackage.jb7
        public void c(ic7 ic7Var) {
            yc7.t(this.e, ic7Var);
        }
    }

    public static final class b extends AtomicReference<ic7> implements jb7, ic7 {
        public final jb7 e;
        public final lb7 f;

        public b(jb7 jb7Var, lb7 lb7Var) {
            this.e = jb7Var;
            this.f = lb7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            this.f.a(new a(this, this.e));
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            this.e.b(th);
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
    }

    public vd7(lb7 lb7Var, lb7 lb7Var2) {
        this.a = lb7Var;
        this.b = lb7Var2;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        this.a.a(new b(jb7Var, this.b));
    }
}
