package defpackage;

/* loaded from: classes.dex */
public final class l54 extends c94<l54, i54> implements ea4 {
    private static final l54 zzg;
    private int zza;
    private int zze = 1;
    private i94<b54> zzf = la4.h;

    static {
        l54 l54Var = new l54();
        zzg = l54Var;
        c94.q(l54.class, l54Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zza", "zze", j54.a, "zzf", b54.class});
        }
        if (i2 == 3) {
            return new l54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new i54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
