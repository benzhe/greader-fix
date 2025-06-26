package defpackage;

/* loaded from: classes2.dex */
public final class o08 {
    public static k08 a;
    public static final o08 b = new o08();

    public void a(l08 l08Var) throws x08 {
        im7.e(l08Var, "koinApplication");
        if (a != null) {
            throw new x08("A Koin Application has already been started");
        }
        a = l08Var.a;
    }
}
