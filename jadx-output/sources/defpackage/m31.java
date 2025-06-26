package defpackage;

/* loaded from: classes.dex */
public final class m31 {
    public final pp2 a;
    public final ns1 b;
    public final hl2 c;

    public m31(ns1 ns1Var, hl2 hl2Var, pp2 pp2Var) {
        this.a = pp2Var;
        this.b = ns1Var;
        this.c = hl2Var;
    }

    public static String b(int i) {
        int i2 = p31.a[i - 1];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "u" : "cb" : "ac" : "cc" : "h" : "bb";
    }

    public final void a(long j, int i) {
        if (((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
            pp2 pp2Var = this.a;
            qp2 qp2VarC = qp2.c("ad_closed");
            qp2VarC.b(this.c.b.b);
            qp2VarC.a.put("show_time", String.valueOf(j));
            qp2VarC.a.put("ad_format", "app_open_ad");
            qp2VarC.a.put("acr", b(i));
            pp2Var.b(qp2VarC);
            return;
        }
        ms1 ms1VarA = this.b.a();
        ms1VarA.a(this.c.b.b);
        ms1VarA.a.put("action", "ad_closed");
        ms1VarA.a.put("show_time", String.valueOf(j));
        ms1VarA.a.put("ad_format", "app_open_ad");
        ms1VarA.a.put("acr", b(i));
        ms1VarA.b();
    }
}
