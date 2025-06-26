package defpackage;

/* loaded from: classes.dex */
public final class vb4 implements ub4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;
    public static final b74<Boolean> c;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.client.ad_impression", true);
        b = z64Var.b("measurement.service.separate_public_internal_event_blacklisting", true);
        c = z64Var.b("measurement.service.ad_impression", true);
        z64Var.a("measurement.id.service.ad_impression", 0L);
    }

    @Override // defpackage.ub4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.ub4
    public final boolean b() {
        return a.c().booleanValue();
    }

    @Override // defpackage.ub4
    public final boolean c() {
        return b.c().booleanValue();
    }

    @Override // defpackage.ub4
    public final boolean d() {
        return c.c().booleanValue();
    }
}
