package defpackage;

/* loaded from: classes.dex */
public final class r54 extends c94<r54, q54> implements ea4 {
    private static final r54 zzk;
    private int zza;
    private long zze;
    private String zzf = "";
    private String zzg = "";
    private long zzh;
    private float zzi;
    private double zzj;

    static {
        r54 r54Var = new r54();
        zzk = r54Var;
        c94.q(r54.class, r54Var);
    }

    public static q54 B() {
        return zzk.m();
    }

    public static /* synthetic */ void D(r54 r54Var, long j) {
        r54Var.zza |= 1;
        r54Var.zze = j;
    }

    public static /* synthetic */ void E(r54 r54Var, String str) {
        str.getClass();
        r54Var.zza |= 2;
        r54Var.zzf = str;
    }

    public static /* synthetic */ void F(r54 r54Var, String str) {
        str.getClass();
        r54Var.zza |= 4;
        r54Var.zzg = str;
    }

    public static /* synthetic */ void G(r54 r54Var) {
        r54Var.zza &= -5;
        r54Var.zzg = zzk.zzg;
    }

    public static /* synthetic */ void H(r54 r54Var, long j) {
        r54Var.zza |= 8;
        r54Var.zzh = j;
    }

    public static /* synthetic */ void I(r54 r54Var) {
        r54Var.zza &= -9;
        r54Var.zzh = 0L;
    }

    public static /* synthetic */ void J(r54 r54Var, double d) {
        r54Var.zza |= 32;
        r54Var.zzj = d;
    }

    public static /* synthetic */ void K(r54 r54Var) {
        r54Var.zza &= -33;
        r54Var.zzj = 0.0d;
    }

    public final double A() {
        return this.zzj;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzk, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new r54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new q54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzk;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final long t() {
        return this.zze;
    }

    public final String u() {
        return this.zzf;
    }

    public final boolean v() {
        return (this.zza & 4) != 0;
    }

    public final String w() {
        return this.zzg;
    }

    public final boolean x() {
        return (this.zza & 8) != 0;
    }

    public final long y() {
        return this.zzh;
    }

    public final boolean z() {
        return (this.zza & 32) != 0;
    }
}
