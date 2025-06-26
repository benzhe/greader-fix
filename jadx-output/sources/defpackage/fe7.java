package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class fe7 extends hb7 {
    public final lb7 a;
    public final uc7<? super Throwable, ? extends lb7> b;

    public static final class a extends AtomicReference<ic7> implements jb7, ic7 {
        public final jb7 e;
        public final uc7<? super Throwable, ? extends lb7> f;
        public boolean g;

        public a(jb7 jb7Var, uc7<? super Throwable, ? extends lb7> uc7Var) {
            this.e = jb7Var;
            this.f = uc7Var;
        }

        @Override // defpackage.jb7
        public void a() {
            this.e.a();
        }

        @Override // defpackage.jb7
        public void b(Throwable th) {
            if (this.g) {
                this.e.b(th);
                return;
            }
            this.g = true;
            try {
                lb7 lb7VarApply = this.f.apply(th);
                Objects.requireNonNull(lb7VarApply, "The errorMapper returned a null CompletableSource");
                lb7VarApply.a(this);
            } catch (Throwable th2) {
                n56.r2(th2);
                this.e.b(new kc7(th, th2));
            }
        }

        @Override // defpackage.jb7
        public void c(ic7 ic7Var) {
            yc7.t(this, ic7Var);
        }

        @Override // defpackage.ic7
        public void k() {
            yc7.i(this);
        }
    }

    public fe7(lb7 lb7Var, uc7<? super Throwable, ? extends lb7> uc7Var) {
        this.a = lb7Var;
        this.b = uc7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        a aVar = new a(jb7Var, this.b);
        jb7Var.c(aVar);
        this.a.a(aVar);
    }
}
