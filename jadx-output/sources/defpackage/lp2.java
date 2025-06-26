package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class lp2 implements mp2 {
    public final Executor a;
    public final ls0 b;

    public lp2(Executor executor, ls0 ls0Var) {
        this.a = executor;
        this.b = ls0Var;
    }

    @Override // defpackage.mp2
    public final void a(final String str) {
        this.a.execute(new Runnable(this, str) { // from class: op2
            public final lp2 e;
            public final String f;

            {
                this.e = this;
                this.f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                lp2 lp2Var = this.e;
                lp2Var.b.a(this.f);
            }
        });
    }
}
