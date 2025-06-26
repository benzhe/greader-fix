package defpackage;

/* loaded from: classes.dex */
public final class pe4 implements oe4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.sdk.screen.manual_screen_view_logging", true);
        b = z64Var.b("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // defpackage.oe4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.oe4
    public final boolean b() {
        return a.c().booleanValue();
    }

    @Override // defpackage.oe4
    public final boolean c() {
        return b.c().booleanValue();
    }
}
