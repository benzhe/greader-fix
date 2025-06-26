package defpackage;

/* loaded from: classes.dex */
public final class v54 extends c94<v54, u54> implements ea4 {
    private static final v54 zzg;
    private int zza;
    private String zze = "";
    private i94<c64> zzf = la4.h;

    static {
        v54 v54Var = new v54();
        zzg = v54Var;
        c94.q(v54.class, v54Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zza", "zze", "zzf", c64.class});
        }
        if (i2 == 3) {
            return new v54();
        }
        if (i2 == 4) {
            return new u54();
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
