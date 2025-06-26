package defpackage;

/* loaded from: classes.dex */
public final class o45 implements Runnable {
    public final /* synthetic */ e45 e;
    public final /* synthetic */ m45 f;

    public o45(m45 m45Var, e45 e45Var) {
        this.f = m45Var;
        this.e = e45Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.e.m()) {
            this.f.c.t();
            return;
        }
        try {
            this.f.c.s(this.f.b.a(this.e));
        } catch (c45 e) {
            if (e.getCause() instanceof Exception) {
                this.f.c.r((Exception) e.getCause());
            } else {
                this.f.c.r(e);
            }
        } catch (Exception e2) {
            this.f.c.r(e2);
        }
    }
}
