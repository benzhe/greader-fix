package defpackage;

/* loaded from: classes.dex */
public final class oe0 extends at0<we0> {
    public final Object c = new Object();
    public final se0 d;
    public boolean e;

    public oe0(se0 se0Var) {
        this.d = se0Var;
    }

    public final void d() {
        synchronized (this.c) {
            if (this.e) {
                return;
            }
            this.e = true;
            c(new ne0(), new ys0());
            c(new qe0(this), new pe0(this));
        }
    }
}
