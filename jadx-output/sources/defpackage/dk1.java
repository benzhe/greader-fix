package defpackage;

/* loaded from: classes.dex */
public final class dk1 {
    public static final dk1 h = new gk1().a();
    public final z80 a;
    public final u80 b;
    public final o90 c;
    public final j90 d;
    public final ed0 e;
    public final m4<String, g90> f;
    public final m4<String, a90> g;

    public dk1(gk1 gk1Var, hk1 hk1Var) {
        this.a = gk1Var.a;
        this.b = gk1Var.b;
        this.c = gk1Var.c;
        this.f = new m4<>(gk1Var.f);
        this.g = new m4<>(gk1Var.g);
        this.d = gk1Var.d;
        this.e = gk1Var.e;
    }

    public final a90 a(String str) {
        return this.g.getOrDefault(str, null);
    }
}
