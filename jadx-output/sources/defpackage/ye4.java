package defpackage;

/* loaded from: classes.dex */
public final class ye4 implements xe4 {
    public static final b74<Boolean> a;
    public static final b74<Double> b;
    public static final b74<Long> c;
    public static final b74<Long> d;
    public static final b74<String> e;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.test.boolean_flag", false);
        b = new x64(z64Var, Double.valueOf(-3.0d));
        c = z64Var.a("measurement.test.int_flag", -2L);
        d = z64Var.a("measurement.test.long_flag", -1L);
        e = new y64(z64Var, "measurement.test.string_flag", "---");
    }

    @Override // defpackage.xe4
    public final boolean a() {
        return a.c().booleanValue();
    }

    @Override // defpackage.xe4
    public final double b() {
        return b.c().doubleValue();
    }

    @Override // defpackage.xe4
    public final long c() {
        return c.c().longValue();
    }

    @Override // defpackage.xe4
    public final long d() {
        return d.c().longValue();
    }

    @Override // defpackage.xe4
    public final String h() {
        return e.c();
    }
}
