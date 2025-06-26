package defpackage;

import defpackage.ii5;

/* loaded from: classes.dex */
public class gi5 implements ii5.g {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ int e;
    public final /* synthetic */ ii5 f;

    public gi5(ii5 ii5Var, String str, String str2, String str3, String str4, int i) {
        this.f = ii5Var;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = i;
    }

    @Override // ii5.g
    public void a(rl5 rl5Var) throws Exception {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        int i = this.e;
        String str5 = this.f.q;
        pl5 pl5Var = sl5.a;
        pl5 pl5VarA = pl5.a(str);
        pl5 pl5VarA2 = pl5.a(str2);
        pl5 pl5VarA3 = pl5.a(str3);
        pl5 pl5VarA4 = pl5.a(str4);
        pl5 pl5VarA5 = str5 != null ? pl5.a(str5) : null;
        rl5Var.r(7, 2);
        int iB = rl5.b(6, pl5VarA4) + rl5.b(3, pl5VarA3) + rl5.b(2, pl5VarA2) + rl5.b(1, pl5VarA) + 0;
        if (pl5VarA5 != null) {
            iB = rl5.b(9, pl5VarA5) + rl5.b(8, sl5.b) + iB;
        }
        rl5Var.p(rl5.c(10, i) + iB);
        rl5Var.m(1, pl5VarA);
        rl5Var.m(2, pl5VarA2);
        rl5Var.m(3, pl5VarA3);
        rl5Var.m(6, pl5VarA4);
        if (pl5VarA5 != null) {
            rl5Var.m(8, sl5.b);
            rl5Var.m(9, pl5VarA5);
        }
        rl5Var.n(10, i);
    }
}
