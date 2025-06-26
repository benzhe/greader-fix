package defpackage;

/* loaded from: classes.dex */
public final class xf4 implements wf4 {
    public static final b74<Boolean> a;

    static {
        z64 z64Var = new z64(s64.a("com.google.android.gms.measurement"));
        a = z64Var.b("measurement.upload.file_lock_state_check", false);
        z64Var.a("measurement.id.upload.file_lock_state_check", 0L);
    }

    @Override // defpackage.wf4
    public final boolean a() {
        return a.c().booleanValue();
    }
}
