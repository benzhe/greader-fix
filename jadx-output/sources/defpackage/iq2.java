package defpackage;

/* loaded from: classes.dex */
public final /* synthetic */ class iq2 implements Runnable {
    public final jq2 e;
    public final String f;

    public iq2(jq2 jq2Var, String str) {
        this.e = jq2Var;
        this.f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jq2 jq2Var = this.e;
        jq2Var.b.a(this.f);
    }
}
