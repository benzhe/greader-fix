package defpackage;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class ct0<T> implements rv2<T> {
    public final /* synthetic */ bt0 a;
    public final /* synthetic */ zs0 b;

    public ct0(bt0 bt0Var, zs0 zs0Var) {
        this.a = bt0Var;
        this.b = zs0Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        this.b.run();
    }

    @Override // defpackage.rv2
    public final void onSuccess(T t) {
        this.a.zzg(t);
    }
}
