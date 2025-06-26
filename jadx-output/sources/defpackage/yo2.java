package defpackage;

/* JADX INFO: Add missing generic type declarations: [O] */
/* loaded from: classes.dex */
public final class yo2<O> implements rv2<O> {
    public final /* synthetic */ lo2 a;
    public final /* synthetic */ qo2 b;

    public yo2(qo2 qo2Var, lo2 lo2Var) {
        this.b = qo2Var;
        this.a = lo2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        this.b.f.c.O(this.a, th);
    }

    @Override // defpackage.rv2
    public final void onSuccess(O o) {
        this.b.f.c.U(this.a);
    }
}
