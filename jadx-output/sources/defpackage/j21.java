package defpackage;

/* loaded from: classes.dex */
public final class j21 implements rv2<String> {
    public final /* synthetic */ String a;
    public final /* synthetic */ g21 b;

    public j21(g21 g21Var, String str) {
        this.b = g21Var;
        this.a = str;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        g21 g21Var = this.b;
        rl2 rl2Var = g21Var.k;
        hq2 hq2Var = g21Var.j;
        hl2 hl2Var = g21Var.h;
        sk2 sk2Var = g21Var.i;
        rl2Var.c(hq2Var.b(hl2Var, sk2Var, false, this.a, null, sk2Var.d));
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(String str) {
        String str2 = str;
        g21 g21Var = this.b;
        rl2 rl2Var = g21Var.k;
        hq2 hq2Var = g21Var.j;
        hl2 hl2Var = g21Var.h;
        sk2 sk2Var = g21Var.i;
        rl2Var.c(hq2Var.b(hl2Var, sk2Var, false, this.a, str2, sk2Var.d));
    }
}
