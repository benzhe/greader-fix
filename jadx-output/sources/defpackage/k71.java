package defpackage;

/* loaded from: classes.dex */
public final class k71 implements rv2<Void> {
    public final /* synthetic */ h71 a;

    public k71(h71 h71Var) {
        this.a = h71Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        this.a.f.X(false);
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(Void r2) {
        this.a.f.X(true);
    }
}
