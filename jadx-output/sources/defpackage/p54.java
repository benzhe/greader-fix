package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class p54 extends c94<p54, o54> implements ea4 {
    private static final p54 zzg;
    private int zza;
    private int zze;
    private h94 zzf = t94.h;

    static {
        p54 p54Var = new p54();
        zzg = p54Var;
        c94.q(p54.class, p54Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void A(p54 p54Var, Iterable iterable) {
        h94 h94Var = p54Var.zzf;
        if (!((u74) h94Var).e) {
            p54Var.zzf = c94.k(h94Var);
        }
        t74.i(iterable, p54Var.zzf);
    }

    public static o54 x() {
        return zzg.m();
    }

    public static /* synthetic */ void z(p54 p54Var, int i) {
        p54Var.zza |= 1;
        p54Var.zze = i;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zza", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new p54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new o54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzg;
    }

    public final boolean s() {
        return (this.zza & 1) != 0;
    }

    public final int t() {
        return this.zze;
    }

    public final List<Long> u() {
        return this.zzf;
    }

    public final int v() {
        return ((t94) this.zzf).size();
    }

    public final long w(int i) {
        t94 t94Var = (t94) this.zzf;
        t94Var.n(i);
        return t94Var.f[i];
    }
}
