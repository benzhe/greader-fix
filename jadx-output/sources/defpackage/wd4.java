package defpackage;

/* loaded from: classes.dex */
public final class wd4 implements vd4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        z64Var.b("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        a = z64Var.b("measurement.collection.redundant_engagement_removal_enabled", false);
        z64Var.a("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // defpackage.vd4
    public final boolean a() {
        return a.c().booleanValue();
    }
}
