package defpackage;

/* loaded from: classes.dex */
public final class po1 implements rv2<xw0> {
    public final /* synthetic */ String a;
    public final /* synthetic */ kb0 b;

    public po1(String str, kb0 kb0Var) {
        this.a = str;
        this.b = kb0Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(xw0 xw0Var) {
        xw0Var.n(this.a, this.b);
    }
}
