package defpackage;

/* loaded from: classes.dex */
public final class zu2 implements Runnable {
    public final /* synthetic */ aw2 e;
    public final /* synthetic */ int f;
    public final /* synthetic */ wu2 g;

    public zu2(wu2 wu2Var, aw2 aw2Var, int i) {
        this.g = wu2Var;
        this.e = aw2Var;
        this.f = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.e.isCancelled()) {
                wu2 wu2Var = this.g;
                wu2Var.p = null;
                wu2Var.cancel(false);
            } else {
                this.g.E(this.f, this.e);
            }
        } finally {
            wu2.I(this.g, null);
        }
    }
}
