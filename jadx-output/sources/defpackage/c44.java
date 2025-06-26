package defpackage;

/* loaded from: classes.dex */
public final class c44 extends c94<c44, y34> implements ea4 {
    private static final c44 zzj;
    private int zza;
    private int zze;
    private boolean zzf;
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        c44 c44Var = new c44();
        zzj = c44Var;
        c94.q(c44.class, c44Var);
    }

    public static c44 C() {
        return zzj;
    }

    public final boolean A() {
        return (this.zza & 16) != 0;
    }

    public final String B() {
        return this.zzi;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zza", "zze", a44.a, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new c44();
        }
        if (i2 == 4) {
            return new y34();
        }
        if (i2 != 5) {
            return null;
        }
        return zzj;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final b44 t() {
        b44 b44VarI = b44.i(this.zze);
        return b44VarI == null ? b44.UNKNOWN_COMPARISON_TYPE : b44VarI;
    }

    public final boolean u() {
        return (this.zza & 2) != 0;
    }

    public final boolean v() {
        return this.zzf;
    }

    public final boolean w() {
        return (this.zza & 4) != 0;
    }

    public final String x() {
        return this.zzg;
    }

    public final boolean y() {
        return (this.zza & 8) != 0;
    }

    public final String z() {
        return this.zzh;
    }
}
