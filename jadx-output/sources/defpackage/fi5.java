package defpackage;

import defpackage.ii5;

/* loaded from: classes.dex */
public class fi5 implements ii5.g {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ long c;

    public fi5(ii5 ii5Var, String str, String str2, long j) {
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    @Override // ii5.g
    public void a(rl5 rl5Var) throws Exception {
        String str = this.a;
        String str2 = this.b;
        long j = this.c;
        pl5 pl5Var = sl5.a;
        rl5Var.m(1, pl5.a(str2));
        rl5Var.m(2, pl5.a(str));
        rl5Var.t(3, j);
    }
}
