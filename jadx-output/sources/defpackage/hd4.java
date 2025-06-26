package defpackage;

/* loaded from: classes.dex */
public final class hd4 implements gd4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.sdk.referrer.delayed_install_referrer_api", false);
        z64Var.a("measurement.id.sdk.referrer.delayed_install_referrer_api", 0L);
    }

    @Override // defpackage.gd4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.gd4
    public final boolean b() {
        return a.c().booleanValue();
    }
}
