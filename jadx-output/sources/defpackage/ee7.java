package defpackage;

/* loaded from: classes2.dex */
public final class ee7 extends hb7 {
    public final lb7 a;
    public final tc7<? super ic7> b;
    public final tc7<? super Throwable> c;
    public final qc7 d;
    public final qc7 e;
    public final qc7 f;
    public final qc7 g;

    public final class a implements jb7, ic7 {
        public final jb7 e;
        public ic7 f;

        public a(jb7 jb7Var) {
            this.e = jb7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            if (this.f == yc7.DISPOSED) {
                return;
            }
            try {
                ee7.this.d.run();
                ee7.this.e.run();
                this.e.a();
                try {
                    ee7.this.f.run();
                } catch (Throwable th) {
                    n56.r2(th);
                    n56.z1(th);
                }
            } catch (Throwable th2) {
                n56.r2(th2);
                this.e.b(th2);
            }
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            if (this.f == yc7.DISPOSED) {
                n56.z1(th);
                return;
            }
            try {
                ee7.this.c.accept(th);
                ee7.this.e.run();
            } catch (Throwable th2) {
                n56.r2(th2);
                th = new kc7(th, th2);
            }
            this.e.b(th);
            try {
                ee7.this.f.run();
            } catch (Throwable th3) {
                n56.r2(th3);
                n56.z1(th3);
            }
        }

        @Override // defpackage.jb7
        public void c(ic7 ic7Var) {
            try {
                ee7.this.b.accept(ic7Var);
                if (yc7.x(this.f, ic7Var)) {
                    this.f = ic7Var;
                    this.e.c(this);
                }
            } catch (Throwable th) {
                n56.r2(th);
                ic7Var.k();
                this.f = yc7.DISPOSED;
                jb7 jb7Var = this.e;
                jb7Var.c(zc7.INSTANCE);
                jb7Var.b(th);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            try {
                ee7.this.g.run();
            } catch (Throwable th) {
                n56.r2(th);
                n56.z1(th);
            }
            this.f.k();
        }
    }

    public ee7(lb7 lb7Var, tc7<? super ic7> tc7Var, tc7<? super Throwable> tc7Var2, qc7 qc7Var, qc7 qc7Var2, qc7 qc7Var3, qc7 qc7Var4) {
        this.a = lb7Var;
        this.b = tc7Var;
        this.c = tc7Var2;
        this.d = qc7Var;
        this.e = qc7Var2;
        this.f = qc7Var3;
        this.g = qc7Var4;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        this.a.a(new a(jb7Var));
    }
}
