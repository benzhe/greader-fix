package defpackage;

/* loaded from: classes.dex */
public final class e44 extends c94<e44, d44> implements ea4 {
    private static final e44 zzk;
    private int zza;
    private int zze;
    private String zzf = "";
    private x34 zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        e44 e44Var = new e44();
        zzk = e44Var;
        c94.q(e44.class, e44Var);
    }

    public static d44 A() {
        return zzk.m();
    }

    public static /* synthetic */ void C(e44 e44Var, String str) {
        e44Var.zza |= 2;
        e44Var.zzf = str;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzk, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new e44();
        }
        r34 r34Var = null;
        if (i2 == 4) {
            return new d44(r34Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzk;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final int t() {
        return this.zze;
    }

    public final String u() {
        return this.zzf;
    }

    public final x34 v() {
        x34 x34Var = this.zzg;
        return x34Var == null ? x34.A() : x34Var;
    }

    public final boolean w() {
        return this.zzh;
    }

    public final boolean x() {
        return this.zzi;
    }

    public final boolean y() {
        return (this.zza & 32) != 0;
    }

    public final boolean z() {
        return this.zzj;
    }
}
