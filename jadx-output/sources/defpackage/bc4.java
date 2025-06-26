package defpackage;

/* loaded from: classes.dex */
public final class bc4 implements ac4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.androidId.delete_feature", true);
        z64Var.b("measurement.log_androidId_enabled", false);
    }

    @Override // defpackage.ac4
    public final boolean a() {
        return a.c().booleanValue();
    }
}
