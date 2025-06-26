package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class ae7 extends hb7 {
    public final Callable<?> a;

    public ae7(Callable<?> callable) {
        this.a = callable;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        ic7 ic7VarT0 = n56.t0();
        jb7Var.c(ic7VarT0);
        try {
            this.a.call();
            if (((jc7) ic7VarT0).a()) {
                return;
            }
            jb7Var.a();
        } catch (Throwable th) {
            n56.r2(th);
            if (((jc7) ic7VarT0).a()) {
                n56.z1(th);
            } else {
                jb7Var.b(th);
            }
        }
    }
}
