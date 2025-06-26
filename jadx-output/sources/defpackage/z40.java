package defpackage;

/* loaded from: classes.dex */
public final class z40 implements c70 {
    public final /* synthetic */ u40 a;

    public z40(u40 u40Var) {
        this.a = u40Var;
    }

    @Override // defpackage.c70
    public final Long a(String str, long j) {
        try {
            return Long.valueOf(this.a.e.getLong(str, j));
        } catch (ClassCastException unused) {
            return Long.valueOf(this.a.e.getInt(str, (int) j));
        }
    }

    @Override // defpackage.c70
    public final Boolean b(String str, boolean z) {
        return Boolean.valueOf(this.a.e.getBoolean(str, z));
    }

    @Override // defpackage.c70
    public final String c(String str, String str2) {
        return this.a.e.getString(str, str2);
    }

    @Override // defpackage.c70
    public final Double d(String str, double d) {
        return Double.valueOf(this.a.e.getFloat(str, (float) d));
    }
}
