package defpackage;

/* loaded from: classes2.dex */
public final class de7 extends hb7 {
    public final lb7 a;
    public final vc7<? super Throwable> b;

    public final class a implements jb7 {
        public final jb7 e;

        public a(jb7 jb7Var) {
            this.e = jb7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            try {
                if (de7.this.b.test(th)) {
                    this.e.a();
                } else {
                    this.e.b(th);
                }
            } catch (Throwable th2) {
                n56.r2(th2);
                this.e.b(new kc7(th, th2));
            }
        }

        @Override // defpackage.jb7
        public void c(ic7 ic7Var) {
            this.e.c(ic7Var);
        }
    }

    public de7(lb7 lb7Var, vc7<? super Throwable> vc7Var) {
        this.a = lb7Var;
        this.b = vc7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        this.a.a(new a(jb7Var));
    }
}
