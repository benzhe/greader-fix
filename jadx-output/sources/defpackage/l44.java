package defpackage;

/* loaded from: classes.dex */
public final class l44 extends c94<l44, k44> implements ea4 {
    private static final l44 zzi;
    private int zza;
    private String zze = "";
    private boolean zzf;
    private boolean zzg;
    private int zzh;

    static {
        l44 l44Var = new l44();
        zzi = l44Var;
        c94.q(l44.class, l44Var);
    }

    public static /* synthetic */ void y(l44 l44Var, String str) {
        str.getClass();
        l44Var.zza |= 1;
        l44Var.zze = str;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new l44();
        }
        j44 j44Var = null;
        if (i2 == 4) {
            return new k44(j44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }

    public final String s() {
        return this.zze;
    }

    public final boolean t() {
        return this.zzf;
    }

    public final boolean u() {
        return this.zzg;
    }

    public final boolean v() {
        return (this.zza & 8) != 0;
    }

    public final int w() {
        return this.zzh;
    }
}
