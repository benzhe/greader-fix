package defpackage;

/* loaded from: classes.dex */
public final class u44 extends c94<u44, t44> implements ea4 {
    private static final u44 zzi;
    private int zza;
    private int zze;
    private n54 zzf;
    private n54 zzg;
    private boolean zzh;

    static {
        u44 u44Var = new u44();
        zzi = u44Var;
        c94.q(u44.class, u44Var);
    }

    public static /* synthetic */ void B(u44 u44Var, int i) {
        u44Var.zza |= 1;
        u44Var.zze = i;
    }

    public static /* synthetic */ void C(u44 u44Var, n54 n54Var) {
        u44Var.zzf = n54Var;
        u44Var.zza |= 2;
    }

    public static /* synthetic */ void D(u44 u44Var, n54 n54Var) {
        u44Var.zzg = n54Var;
        u44Var.zza |= 4;
    }

    public static /* synthetic */ void E(u44 u44Var, boolean z) {
        u44Var.zza |= 8;
        u44Var.zzh = z;
    }

    public static t44 z() {
        return zzi.m();
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new u44();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new t44(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final int t() {
        return this.zze;
    }

    public final n54 u() {
        n54 n54Var = this.zzf;
        return n54Var == null ? n54.D() : n54Var;
    }

    public final boolean v() {
        return (this.zza & 4) != 0;
    }

    public final n54 w() {
        n54 n54Var = this.zzg;
        return n54Var == null ? n54.D() : n54Var;
    }

    public final boolean x() {
        return (this.zza & 8) != 0;
    }

    public final boolean y() {
        return this.zzh;
    }
}
