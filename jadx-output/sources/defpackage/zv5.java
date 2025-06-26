package defpackage;

/* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
/* loaded from: classes.dex */
public class zv5<ReqT, RespT> extends s37<ReqT, RespT> {
    public final /* synthetic */ a37[] a;
    public final /* synthetic */ e45 b;
    public final /* synthetic */ aw5 c;

    public zv5(aw5 aw5Var, a37[] a37VarArr, e45 e45Var) {
        this.c = aw5Var;
        this.a = a37VarArr;
        this.b = e45Var;
    }

    @Override // defpackage.q47, defpackage.a37
    public void b() {
        if (this.a[0] == null) {
            this.b.g(this.c.a.a, new b45() { // from class: yv5
                @Override // defpackage.b45
                public void onSuccess(Object obj) {
                    ((a37) obj).b();
                }
            });
        } else {
            super.b();
        }
    }

    @Override // defpackage.q47
    public a37<ReqT, RespT> f() {
        bx5.c(this.a[0] != null, "ClientCall used before onOpen() callback", new Object[0]);
        return this.a[0];
    }
}
