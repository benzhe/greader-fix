package defpackage;

/* loaded from: classes2.dex */
public abstract class h18 {
    public g18 a;

    public h18(g18 g18Var) {
        im7.e(g18Var, "level");
        this.a = g18Var;
    }

    public final void a(String str) {
        im7.e(str, "msg");
        b(g18.DEBUG, str);
    }

    public final void b(g18 g18Var, String str) {
        if (this.a.compareTo(g18Var) <= 0) {
            d(g18Var, str);
        }
    }

    public final boolean c(g18 g18Var) {
        im7.e(g18Var, "lvl");
        return this.a.compareTo(g18Var) <= 0;
    }

    public abstract void d(g18 g18Var, String str);
}
