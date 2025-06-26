package defpackage;

/* loaded from: classes.dex */
public final class me4 implements le4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        z64Var.a("measurement.id.lifecycle.app_in_background_parameter", 0L);
        a = z64Var.b("measurement.lifecycle.app_backgrounded_engagement", false);
        z64Var.b("measurement.lifecycle.app_backgrounded_tracking", true);
        b = z64Var.b("measurement.lifecycle.app_in_background_parameter", false);
        z64Var.a("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // defpackage.le4
    public final boolean a() {
        return a.c().booleanValue();
    }

    @Override // defpackage.le4
    public final boolean b() {
        return b.c().booleanValue();
    }
}
