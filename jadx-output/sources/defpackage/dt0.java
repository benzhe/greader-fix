package defpackage;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class dt0<T> implements rv2<T> {
    public final /* synthetic */ at0 a;

    public dt0(at0 at0Var) {
        this.a = at0Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        this.a.b.set(-1);
    }

    @Override // defpackage.rv2
    public final void onSuccess(T t) {
        this.a.b.set(1);
    }
}
