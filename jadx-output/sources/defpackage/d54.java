package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class d54 extends c94<d54, c54> implements ea4 {
    private static final d54 zzk;
    private int zza;
    private long zzg;
    private float zzh;
    private double zzi;
    private String zze = "";
    private String zzf = "";
    private i94<d54> zzj = la4.h;

    static {
        d54 d54Var = new d54();
        zzk = d54Var;
        c94.q(d54.class, d54Var);
    }

    public static c54 E() {
        return zzk.m();
    }

    public static /* synthetic */ void G(d54 d54Var, String str) {
        str.getClass();
        d54Var.zza |= 1;
        d54Var.zze = str;
    }

    public static /* synthetic */ void H(d54 d54Var, String str) {
        str.getClass();
        d54Var.zza |= 2;
        d54Var.zzf = str;
    }

    public static /* synthetic */ void I(d54 d54Var) {
        d54Var.zza &= -3;
        d54Var.zzf = zzk.zzf;
    }

    public static /* synthetic */ void J(d54 d54Var, long j) {
        d54Var.zza |= 4;
        d54Var.zzg = j;
    }

    public static /* synthetic */ void K(d54 d54Var) {
        d54Var.zza &= -5;
        d54Var.zzg = 0L;
    }

    public static /* synthetic */ void L(d54 d54Var, double d) {
        d54Var.zza |= 16;
        d54Var.zzi = d;
    }

    public static /* synthetic */ void M(d54 d54Var) {
        d54Var.zza &= -17;
        d54Var.zzi = 0.0d;
    }

    public static void N(d54 d54Var, d54 d54Var2) {
        i94<d54> i94Var = d54Var.zzj;
        if (!i94Var.a()) {
            d54Var.zzj = c94.l(i94Var);
        }
        d54Var.zzj.add(d54Var2);
    }

    public static void O(d54 d54Var, Iterable iterable) {
        i94<d54> i94Var = d54Var.zzj;
        if (!i94Var.a()) {
            d54Var.zzj = c94.l(i94Var);
        }
        t74.i(iterable, d54Var.zzj);
    }

    public static void P(d54 d54Var) {
        d54Var.zzj = la4.h;
    }

    public final boolean A() {
        return (this.zza & 16) != 0;
    }

    public final double B() {
        return this.zzi;
    }

    public final List<d54> C() {
        return this.zzj;
    }

    public final int D() {
        return this.zzj.size();
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzk, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zza", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", d54.class});
        }
        if (i2 == 3) {
            return new d54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new c54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzk;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final String t() {
        return this.zze;
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

    public final long x() {
        return this.zzg;
    }

    public final boolean y() {
        return (this.zza & 8) != 0;
    }

    public final float z() {
        return this.zzh;
    }
}
