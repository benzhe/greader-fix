package defpackage;

/* loaded from: classes.dex */
public final class x52 implements c72<j41> {
    public final /* synthetic */ u52 a;

    public x52(u52 u52Var) {
        this.a = u52Var;
    }

    @Override // defpackage.c72
    public final void a() {
        synchronized (this.a) {
            this.a.k = null;
        }
    }

    @Override // defpackage.c72
    public final /* synthetic */ void onSuccess(j41 j41Var) {
        j41 j41Var2 = j41Var;
        synchronized (this.a) {
            j41 j41Var3 = this.a.k;
            if (j41Var3 != null) {
                j41Var3.a();
            }
            this.a.k = j41Var2;
            j41Var2.b();
        }
    }
}
