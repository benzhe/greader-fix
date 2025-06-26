package defpackage;

/* loaded from: classes.dex */
public final class ip0 implements rv2<Void> {
    public final /* synthetic */ aw2 a;

    public ip0(aw2 aw2Var) {
        this.a = aw2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        fp0.m.remove(this.a);
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(Void r2) {
        fp0.m.remove(this.a);
    }
}
