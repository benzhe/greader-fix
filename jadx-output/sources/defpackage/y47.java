package defpackage;

/* loaded from: classes2.dex */
public class y47 extends Exception {
    public final x47 e;
    public final i47 f;
    public final boolean g;

    public y47(x47 x47Var) {
        super(x47.c(x47Var), x47Var.c);
        this.e = x47Var;
        this.f = null;
        this.g = true;
        fillInStackTrace();
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this.g ? super.fillInStackTrace() : this;
    }
}
