package defpackage;

/* loaded from: classes.dex */
public final /* synthetic */ class as5 implements Runnable {
    public final fs5 e;
    public final qi6 f;

    public as5(fs5 fs5Var, qi6 qi6Var) {
        this.e = fs5Var;
        this.f = qi6Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        fs5 fs5Var = this.e;
        fs5Var.b.e(this.f);
    }
}
