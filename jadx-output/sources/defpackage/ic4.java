package defpackage;

/* loaded from: classes.dex */
public final class ic4 implements hc4 {
    public static final b74<Boolean> a;
    public static final b74<Long> b;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.sdk.attribution.cache", true);
        b = z64Var.a("measurement.sdk.attribution.cache.ttl", 604800000L);
    }

    @Override // defpackage.hc4
    public final boolean a() {
        return a.c().booleanValue();
    }

    @Override // defpackage.hc4
    public final long b() {
        return b.c().longValue();
    }
}
