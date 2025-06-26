package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class n54 extends c94<n54, m54> implements ea4 {
    private static final n54 zzh;
    private h94 zza;
    private h94 zze;
    private i94<w44> zzf;
    private i94<p54> zzg;

    static {
        n54 n54Var = new n54();
        zzh = n54Var;
        c94.q(n54.class, n54Var);
    }

    public n54() {
        t94 t94Var = t94.h;
        this.zza = t94Var;
        this.zze = t94Var;
        la4<Object> la4Var = la4.h;
        this.zzf = la4Var;
        this.zzg = la4Var;
    }

    public static m54 C() {
        return zzh.m();
    }

    public static n54 D() {
        return zzh;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void F(n54 n54Var, Iterable iterable) {
        h94 h94Var = n54Var.zza;
        if (!((u74) h94Var).e) {
            n54Var.zza = c94.k(h94Var);
        }
        t74.i(iterable, n54Var.zza);
    }

    public static void G(n54 n54Var) {
        n54Var.zza = t94.h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void H(n54 n54Var, Iterable iterable) {
        h94 h94Var = n54Var.zze;
        if (!((u74) h94Var).e) {
            n54Var.zze = c94.k(h94Var);
        }
        t74.i(iterable, n54Var.zze);
    }

    public static void I(n54 n54Var) {
        n54Var.zze = t94.h;
    }

    public static void J(n54 n54Var, Iterable iterable) {
        i94<w44> i94Var = n54Var.zzf;
        if (!i94Var.a()) {
            n54Var.zzf = c94.l(i94Var);
        }
        t74.i(iterable, n54Var.zzf);
    }

    public static void K(n54 n54Var, int i) {
        i94<w44> i94Var = n54Var.zzf;
        if (!i94Var.a()) {
            n54Var.zzf = c94.l(i94Var);
        }
        n54Var.zzf.remove(i);
    }

    public static void L(n54 n54Var, Iterable iterable) {
        i94<p54> i94Var = n54Var.zzg;
        if (!i94Var.a()) {
            n54Var.zzg = c94.l(i94Var);
        }
        t74.i(iterable, n54Var.zzg);
    }

    public static void M(n54 n54Var, int i) {
        i94<p54> i94Var = n54Var.zzg;
        if (!i94Var.a()) {
            n54Var.zzg = c94.l(i94Var);
        }
        n54Var.zzg.remove(i);
    }

    public final int A() {
        return this.zzg.size();
    }

    public final p54 B(int i) {
        return this.zzg.get(i);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzh, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zza", "zze", "zzf", w44.class, "zzg", p54.class});
        }
        if (i2 == 3) {
            return new n54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new m54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzh;
    }

    public final List<Long> s() {
        return this.zza;
    }

    public final int t() {
        return ((t94) this.zza).size();
    }

    public final List<Long> u() {
        return this.zze;
    }

    public final int v() {
        return ((t94) this.zze).size();
    }

    public final List<w44> w() {
        return this.zzf;
    }

    public final int x() {
        return this.zzf.size();
    }

    public final w44 y(int i) {
        return this.zzf.get(i);
    }

    public final List<p54> z() {
        return this.zzg;
    }
}
