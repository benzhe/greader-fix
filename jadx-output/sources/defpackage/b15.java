package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class b15 implements Runnable {
    public final /* synthetic */ hw4 e;
    public final /* synthetic */ g15 f;

    public b15(g15 g15Var, hw4 hw4Var) {
        this.f = g15Var;
        this.e = hw4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f) {
            this.f.a = false;
            if (!this.f.c.w()) {
                this.f.c.a.a().n.a("Connected to service");
                h15 h15Var = this.f.c;
                hw4 hw4Var = this.e;
                h15Var.d();
                Objects.requireNonNull(hw4Var, "null reference");
                h15Var.d = hw4Var;
                h15Var.s();
                h15Var.u();
            }
        }
    }
}
