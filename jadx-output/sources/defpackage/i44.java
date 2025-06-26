package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class i44 extends c94<i44, f44> implements ea4 {
    private static final i44 zzi;
    private int zza;
    private int zze;
    private boolean zzg;
    private String zzf = "";
    private i94<String> zzh = la4.h;

    static {
        i44 i44Var = new i44();
        zzi = i44Var;
        c94.q(i44.class, i44Var);
    }

    public static i44 A() {
        return zzi;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zza", "zze", g44.a, "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new i44();
        }
        if (i2 == 4) {
            return new f44();
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final h44 t() {
        h44 h44VarI = h44.i(this.zze);
        return h44VarI == null ? h44.UNKNOWN_MATCH_TYPE : h44VarI;
    }

    public final boolean u() {
        return (this.zza & 2) != 0;
    }

    public final String v() {
        return this.zzf;
    }

    public final boolean w() {
        return (this.zza & 4) != 0;
    }

    public final boolean x() {
        return this.zzg;
    }

    public final List<String> y() {
        return this.zzh;
    }

    public final int z() {
        return this.zzh.size();
    }
}
