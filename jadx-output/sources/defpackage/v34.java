package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class v34 extends c94<v34, u34> implements ea4 {
    private static final v34 zzm;
    private int zza;
    private int zze;
    private String zzf = "";
    private i94<x34> zzg = la4.h;
    private boolean zzh;
    private c44 zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        v34 v34Var = new v34();
        zzm = v34Var;
        c94.q(v34.class, v34Var);
    }

    public static u34 E() {
        return zzm.m();
    }

    public static /* synthetic */ void G(v34 v34Var, String str) {
        v34Var.zza |= 2;
        v34Var.zzf = str;
    }

    public static /* synthetic */ void H(v34 v34Var, int i, x34 x34Var) {
        x34Var.getClass();
        i94<x34> i94Var = v34Var.zzg;
        if (!i94Var.a()) {
            v34Var.zzg = c94.l(i94Var);
        }
        v34Var.zzg.set(i, x34Var);
    }

    public final boolean A() {
        return this.zzj;
    }

    public final boolean B() {
        return this.zzk;
    }

    public final boolean C() {
        return (this.zza & 64) != 0;
    }

    public final boolean D() {
        return this.zzl;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzm, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zza", "zze", "zzf", "zzg", x34.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i2 == 3) {
            return new v34();
        }
        r34 r34Var = null;
        if (i2 == 4) {
            return new u34(r34Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzm;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final int t() {
        return this.zze;
    }

    public final String u() {
        return this.zzf;
    }

    public final List<x34> v() {
        return this.zzg;
    }

    public final int w() {
        return this.zzg.size();
    }

    public final x34 x(int i) {
        return this.zzg.get(i);
    }

    public final boolean y() {
        return (this.zza & 8) != 0;
    }

    public final c44 z() {
        c44 c44Var = this.zzi;
        return c44Var == null ? c44.C() : c44Var;
    }
}
