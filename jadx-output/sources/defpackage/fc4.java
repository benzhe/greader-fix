package defpackage;

/* loaded from: classes.dex */
public final class fc4 implements ec4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.service.directly_maybe_log_error_events", false);
        z64Var.a("measurement.id.service.directly_maybe_log_error_events", 0L);
    }

    @Override // defpackage.ec4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.ec4
    public final boolean b() {
        return a.c().booleanValue();
    }
}
