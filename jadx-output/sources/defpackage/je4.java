package defpackage;

/* loaded from: classes.dex */
public final class je4 implements ie4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;
    public static final b74<Boolean> c;
    public static final b74<Boolean> d;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.sdk.collection.enable_extend_user_property_size", true);
        b = z64Var.b("measurement.sdk.collection.last_deep_link_referrer2", true);
        c = z64Var.b("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        d = z64Var.b("measurement.sdk.collection.last_gclid_from_referrer2", false);
        z64Var.a("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // defpackage.ie4
    public final boolean a() {
        return a.c().booleanValue();
    }

    @Override // defpackage.ie4
    public final boolean b() {
        return b.c().booleanValue();
    }

    @Override // defpackage.ie4
    public final boolean c() {
        return c.c().booleanValue();
    }

    @Override // defpackage.ie4
    public final boolean d() {
        return d.c().booleanValue();
    }
}
