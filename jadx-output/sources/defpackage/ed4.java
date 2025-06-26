package defpackage;

/* loaded from: classes.dex */
public final class ed4 implements cd4 {
    public static final b74<Boolean> a;
    public static final b74<Boolean> b;
    public static final b74<Boolean> c;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        z64Var.b("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        a = z64Var.b("measurement.audience.refresh_event_count_filters_timestamp", false);
        b = z64Var.b("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        c = z64Var.b("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // defpackage.cd4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.cd4
    public final boolean b() {
        return a.c().booleanValue();
    }

    @Override // defpackage.cd4
    public final boolean c() {
        return b.c().booleanValue();
    }

    @Override // defpackage.cd4
    public final boolean d() {
        return c.c().booleanValue();
    }
}
