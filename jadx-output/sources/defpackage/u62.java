package defpackage;

/* loaded from: classes.dex */
public final class u62 implements c72<qg1> {
    public final /* synthetic */ r62 a;

    public u62(r62 r62Var) {
        this.a = r62Var;
    }

    @Override // defpackage.c72
    public final void a() {
        synchronized (this.a) {
            this.a.k = null;
        }
    }

    @Override // defpackage.c72
    public final /* synthetic */ void onSuccess(qg1 qg1Var) {
        qg1 qg1Var2 = qg1Var;
        synchronized (this.a) {
            this.a.k = qg1Var2;
            qg1Var2.b();
        }
    }
}
