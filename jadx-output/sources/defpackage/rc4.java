package defpackage;

/* loaded from: classes.dex */
public final class rc4 implements qc4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;
    public static final b74<Boolean> c;
    public static final b74<Long> d;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.client.consent_state_v1", false);
        b = z64Var.b("measurement.client.3p_consent_state_v1", false);
        c = z64Var.b("measurement.service.consent_state_v1_W36", true);
        z64Var.a("measurement.id.service.consent_state_v1_W36", 0L);
        d = z64Var.a("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // defpackage.qc4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.qc4
    public final boolean b() {
        return a.c().booleanValue();
    }

    @Override // defpackage.qc4
    public final boolean c() {
        return b.c().booleanValue();
    }

    @Override // defpackage.qc4
    public final boolean d() {
        return c.c().booleanValue();
    }

    @Override // defpackage.qc4
    public final long h() {
        return d.c().longValue();
    }
}
