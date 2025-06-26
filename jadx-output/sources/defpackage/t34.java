package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class t34 extends c94<t34, s34> implements ea4 {
    private static final t34 zzj;
    private int zza;
    private int zze;
    private i94<e44> zzf;
    private i94<v34> zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        t34 t34Var = new t34();
        zzj = t34Var;
        c94.q(t34.class, t34Var);
    }

    public t34() {
        la4<Object> la4Var = la4.h;
        this.zzf = la4Var;
        this.zzg = la4Var;
    }

    public static /* synthetic */ void B(t34 t34Var, int i, e44 e44Var) {
        i94<e44> i94Var = t34Var.zzf;
        if (!i94Var.a()) {
            t34Var.zzf = c94.l(i94Var);
        }
        t34Var.zzf.set(i, e44Var);
    }

    public static /* synthetic */ void C(t34 t34Var, int i, v34 v34Var) {
        i94<v34> i94Var = t34Var.zzg;
        if (!i94Var.a()) {
            t34Var.zzg = c94.l(i94Var);
        }
        t34Var.zzg.set(i, v34Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zza", "zze", "zzf", e44.class, "zzg", v34.class, "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new t34();
        }
        r34 r34Var = null;
        if (i2 == 4) {
            return new s34(r34Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzj;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final int t() {
        return this.zze;
    }

    public final List<e44> u() {
        return this.zzf;
    }

    public final int v() {
        return this.zzf.size();
    }

    public final e44 w(int i) {
        return this.zzf.get(i);
    }

    public final List<v34> x() {
        return this.zzg;
    }

    public final int y() {
        return this.zzg.size();
    }

    public final v34 z(int i) {
        return this.zzg.get(i);
    }
}
