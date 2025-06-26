package defpackage;

/* loaded from: classes.dex */
public final class y54 extends c94<y54, x54> implements ea4 {
    private static final y54 zzg;
    private int zza;
    private i94<c64> zze = la4.h;
    private t54 zzf;

    static {
        y54 y54Var = new y54();
        zzg = y54Var;
        c94.q(y54.class, y54Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zza", "zze", c64.class, "zzf"});
        }
        if (i2 == 3) {
            return new y54();
        }
        if (i2 == 4) {
            return new x54();
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
