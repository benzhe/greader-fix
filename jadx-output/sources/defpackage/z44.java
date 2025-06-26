package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class z44 extends c94<z44, y44> implements ea4 {
    private static final z44 zzj;
    private int zza;
    private i94<d54> zze = la4.h;
    private String zzf = "";
    private long zzg;
    private long zzh;
    private int zzi;

    static {
        z44 z44Var = new z44();
        zzj = z44Var;
        c94.q(z44.class, z44Var);
    }

    public static y44 C() {
        return zzj.m();
    }

    public static /* synthetic */ void E(z44 z44Var, int i, d54 d54Var) {
        d54Var.getClass();
        z44Var.M();
        z44Var.zze.set(i, d54Var);
    }

    public static /* synthetic */ void F(z44 z44Var, d54 d54Var) {
        d54Var.getClass();
        z44Var.M();
        z44Var.zze.add(d54Var);
    }

    public static /* synthetic */ void G(z44 z44Var, Iterable iterable) {
        z44Var.M();
        t74.i(iterable, z44Var.zze);
    }

    public static void H(z44 z44Var) {
        z44Var.zze = la4.h;
    }

    public static /* synthetic */ void I(z44 z44Var, int i) {
        z44Var.M();
        z44Var.zze.remove(i);
    }

    public static /* synthetic */ void J(z44 z44Var, String str) {
        str.getClass();
        z44Var.zza |= 1;
        z44Var.zzf = str;
    }

    public static /* synthetic */ void K(z44 z44Var, long j) {
        z44Var.zza |= 2;
        z44Var.zzg = j;
    }

    public static /* synthetic */ void L(z44 z44Var, long j) {
        z44Var.zza |= 4;
        z44Var.zzh = j;
    }

    public final boolean A() {
        return (this.zza & 8) != 0;
    }

    public final int B() {
        return this.zzi;
    }

    public final void M() {
        i94<d54> i94Var = this.zze;
        if (i94Var.a()) {
            return;
        }
        this.zze = c94.l(i94Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zza", "zze", d54.class, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new z44();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new y44(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzj;
    }

    public final List<d54> s() {
        return this.zze;
    }

    public final int t() {
        return this.zze.size();
    }

    public final d54 u(int i) {
        return this.zze.get(i);
    }

    public final String v() {
        return this.zzf;
    }

    public final boolean w() {
        return (this.zza & 2) != 0;
    }

    public final long x() {
        return this.zzg;
    }

    public final boolean y() {
        return (this.zza & 4) != 0;
    }

    public final long z() {
        return this.zzh;
    }
}
