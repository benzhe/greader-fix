package defpackage;

/* loaded from: classes.dex */
public final class b54 extends c94<b54, a54> implements ea4 {
    private static final b54 zzg;
    private int zza;
    private String zze = "";
    private long zzf;

    static {
        b54 b54Var = new b54();
        zzg = b54Var;
        c94.q(b54.class, b54Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new b54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new a54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }
}
