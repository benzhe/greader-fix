package defpackage;

/* loaded from: classes.dex */
public final class w61 implements rv2<f61> {
    public final /* synthetic */ rv2 a;
    public final /* synthetic */ q61 b;

    public w61(q61 q61Var, rv2 rv2Var) {
        this.b = q61Var;
        this.a = rv2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        q61.a(this.b);
        this.a.a(th);
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(f61 f61Var) {
        q61.a(this.b);
        this.a.onSuccess(f61Var);
    }
}
