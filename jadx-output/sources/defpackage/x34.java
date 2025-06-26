package defpackage;

/* loaded from: classes.dex */
public final class x34 extends c94<x34, w34> implements ea4 {
    private static final x34 zzi;
    private int zza;
    private i44 zze;
    private c44 zzf;
    private boolean zzg;
    private String zzh = "";

    static {
        x34 x34Var = new x34();
        zzi = x34Var;
        c94.q(x34.class, x34Var);
    }

    public static x34 A() {
        return zzi;
    }

    public static /* synthetic */ void C(x34 x34Var, String str) {
        x34Var.zza |= 8;
        x34Var.zzh = str;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new x34();
        }
        r34 r34Var = null;
        if (i2 == 4) {
            return new w34(r34Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final i44 t() {
        i44 i44Var = this.zze;
        return i44Var == null ? i44.A() : i44Var;
    }

    public final boolean u() {
        return (this.zza & 2) != 0;
    }

    public final c44 v() {
        c44 c44Var = this.zzf;
        return c44Var == null ? c44.C() : c44Var;
    }

    public final boolean w() {
        return (this.zza & 4) != 0;
    }

    public final boolean x() {
        return this.zzg;
    }

    public final boolean y() {
        return (this.zza & 8) != 0;
    }

    public final String z() {
        return this.zzh;
    }
}
