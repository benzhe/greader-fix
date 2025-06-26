package defpackage;

/* loaded from: classes.dex */
public final class p44 extends c94<p44, o44> implements ea4 {
    private static final p44 zzg;
    private int zza;
    private String zze = "";
    private String zzf = "";

    static {
        p44 p44Var = new p44();
        zzg = p44Var;
        c94.q(p44.class, p44Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new p44();
        }
        if (i2 == 4) {
            return new o44();
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }

    public final String s() {
        return this.zze;
    }

    public final String t() {
        return this.zzf;
    }
}
