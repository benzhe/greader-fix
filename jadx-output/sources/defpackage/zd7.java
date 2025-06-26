package defpackage;

/* loaded from: classes2.dex */
public final class zd7 extends hb7 {
    public final qc7 a;

    public zd7(qc7 qc7Var) {
        this.a = qc7Var;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        ic7 ic7VarT0 = n56.t0();
        jb7Var.c(ic7VarT0);
        try {
            this.a.run();
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
