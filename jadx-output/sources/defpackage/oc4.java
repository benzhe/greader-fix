package defpackage;

/* loaded from: classes.dex */
public final class oc4 implements nc4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.service.configurable_service_limits", true);
        b = z64Var.b("measurement.client.configurable_service_limits", true);
        z64Var.a("measurement.id.service.configurable_service_limits", 0L);
    }

    @Override // defpackage.nc4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.nc4
    public final boolean b() {
        return a.c().booleanValue();
    }

    @Override // defpackage.nc4
    public final boolean c() {
        return b.c().booleanValue();
    }
}
