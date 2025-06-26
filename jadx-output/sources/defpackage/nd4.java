package defpackage;

/* loaded from: classes.dex */
public final class nd4 implements md4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        z64Var.a("measurement.id.service.use_appinfo_modified", 0L);
        a = z64Var.b("measurement.service.use_appinfo_modified", false);
    }

    @Override // defpackage.md4
    public final boolean a() {
        return true;
    }

    @Override // defpackage.md4
    public final boolean b() {
        return a.c().booleanValue();
    }
}
