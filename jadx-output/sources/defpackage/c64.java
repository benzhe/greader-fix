package defpackage;

/* loaded from: classes.dex */
public final class c64 extends c94<c64, z54> implements ea4 {
    private static final c64 zzk;
    private int zza;
    private int zze;
    private i94<c64> zzf = la4.h;
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;
    private double zzj;

    static {
        c64 c64Var = new c64();
        zzk = c64Var;
        c94.q(c64.class, c64Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzk, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zza", "zze", a64.a, "zzf", c64.class, "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new c64();
        }
        if (i2 == 4) {
            return new z54();
        }
        if (i2 != 5) {
            return null;
        }
        return zzk;
    }
}
