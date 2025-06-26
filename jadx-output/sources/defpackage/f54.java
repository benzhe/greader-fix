package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class f54 extends c94<f54, e54> implements ea4 {
    private static final f54 zze;
    private i94<h54> zza = la4.h;

    static {
        f54 f54Var = new f54();
        zze = f54Var;
        c94.q(f54.class, f54Var);
    }

    public static e54 u() {
        return zze.m();
    }

    public static /* synthetic */ void w(f54 f54Var, h54 h54Var) {
        i94<h54> i94Var = f54Var.zza;
        if (!i94Var.a()) {
            f54Var.zza = c94.l(i94Var);
        }
        f54Var.zza.add(h54Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", h54.class});
        }
        if (i2 == 3) {
            return new f54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new e54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zze;
    }

    public final List<h54> s() {
        return this.zza;
    }

    public final h54 t() {
        return this.zza.get(0);
    }
}
