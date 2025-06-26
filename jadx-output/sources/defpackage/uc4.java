package defpackage;

/* loaded from: classes.dex */
public final class uc4 implements tc4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.sdk.dynamite.allow_remote_dynamite3", true);
        z64Var.b("measurement.collection.init_params_control_enabled", true);
        z64Var.b("measurement.sdk.dynamite.use_dynamite3", true);
        z64Var.a("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // defpackage.tc4
    public final boolean a() {
        return a.c().booleanValue();
    }
}
