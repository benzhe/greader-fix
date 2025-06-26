package defpackage;

/* loaded from: classes.dex */
public final class w44 extends c94<w44, v44> implements ea4 {
    private static final w44 zzg;
    private int zza;
    private int zze;
    private long zzf;

    static {
        w44 w44Var = new w44();
        zzg = w44Var;
        c94.q(w44.class, w44Var);
    }

    public static v44 w() {
        return zzg.m();
    }

    public static /* synthetic */ void y(w44 w44Var, int i) {
        w44Var.zza |= 1;
        w44Var.zze = i;
    }

    public static /* synthetic */ void z(w44 w44Var, long j) {
        w44Var.zza |= 2;
        w44Var.zzf = j;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new w44();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new v44(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final int t() {
        return this.zze;
    }

    public final boolean u() {
        return (this.zza & 2) != 0;
    }

    public final long v() {
        return this.zzf;
    }
}
