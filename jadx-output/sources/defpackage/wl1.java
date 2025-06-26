package defpackage;

/* loaded from: classes.dex */
public final class wl1 implements va1 {
    public final wj1 e;
    public final ak1 f;

    public wl1(wj1 wj1Var, ak1 ak1Var) {
        this.e = wj1Var;
        this.f = ak1Var;
    }

    @Override // defpackage.va1
    public final void onAdImpression() {
        if (this.e.q() == null) {
            return;
        }
        xw0 xw0VarP = this.e.p();
        xw0 xw0VarO = this.e.o();
        if (xw0VarP == null) {
            xw0VarP = xw0VarO != null ? xw0VarO : null;
        }
        if (!this.f.a() || xw0VarP == null) {
            return;
        }
        xw0VarP.x("onSdkImpression", new f4());
    }
}
