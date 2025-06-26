package defpackage;

/* loaded from: classes.dex */
public final class ge4 implements fe4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;
    public static final b74<Boolean> c;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.client.global_params", true);
        b = z64Var.b("measurement.service.global_params_in_payload", true);
        c = z64Var.b("measurement.service.global_params", true);
        z64Var.a("measurement.id.service.global_params", 0L);
    }

    @Override // defpackage.fe4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.fe4
    public final boolean b() {
        return a.c().booleanValue();
    }

    @Override // defpackage.fe4
    public final boolean c() {
        return b.c().booleanValue();
    }

    @Override // defpackage.fe4
    public final boolean d() {
        return c.c().booleanValue();
    }
}
