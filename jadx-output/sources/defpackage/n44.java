package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class n44 extends c94<n44, m44> implements ea4 {
    private static final n44 zzn;
    private int zza;
    private long zze;
    private String zzf = "";
    private int zzg;
    private i94<p44> zzh;
    private i94<l44> zzi;
    private i94<t34> zzj;
    private String zzk;
    private boolean zzl;
    private i94<y54> zzm;

    static {
        n44 n44Var = new n44();
        zzn = n44Var;
        c94.q(n44.class, n44Var);
    }

    public n44() {
        la4<Object> la4Var = la4.h;
        this.zzh = la4Var;
        this.zzi = la4Var;
        this.zzj = la4Var;
        this.zzk = "";
        this.zzm = la4Var;
    }

    public static m44 B() {
        return zzn.m();
    }

    public static n44 C() {
        return zzn;
    }

    public static /* synthetic */ void E(n44 n44Var, int i, l44 l44Var) {
        i94<l44> i94Var = n44Var.zzi;
        if (!i94Var.a()) {
            n44Var.zzi = c94.l(i94Var);
        }
        n44Var.zzi.set(i, l44Var);
    }

    public static void F(n44 n44Var) {
        n44Var.zzj = la4.h;
    }

    public final boolean A() {
        return this.zzl;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzn, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", p44.class, "zzi", l44.class, "zzj", t34.class, "zzk", "zzl", "zzm", y54.class});
        }
        if (i2 == 3) {
            return new n44();
        }
        j44 j44Var = null;
        if (i2 == 4) {
            return new m44(j44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzn;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final long t() {
        return this.zze;
    }

    public final boolean u() {
        return (this.zza & 2) != 0;
    }

    public final String v() {
        return this.zzf;
    }

    public final List<p44> w() {
        return this.zzh;
    }

    public final int x() {
        return this.zzi.size();
    }

    public final l44 y(int i) {
        return this.zzi.get(i);
    }

    public final List<t34> z() {
        return this.zzj;
    }
}
