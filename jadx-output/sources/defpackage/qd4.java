package defpackage;

/* loaded from: classes.dex */
public final class qd4 implements pd4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.client.sessions.check_on_reset_and_enable2", true);
        z64Var.b("measurement.client.sessions.check_on_startup", true);
        z64Var.b("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // defpackage.pd4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.pd4
    public final boolean b() {
        return a.c().booleanValue();
    }
}
