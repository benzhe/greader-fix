package defpackage;

/* loaded from: classes.dex */
public final class t54 extends c94<t54, s54> implements ea4 {
    private static final t54 zze;
    private i94<v54> zza = la4.h;

    static {
        t54 t54Var = new t54();
        zze = t54Var;
        c94.q(t54.class, t54Var);
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", v54.class});
        }
        if (i2 == 3) {
            return new t54();
        }
        if (i2 == 4) {
            return new s54();
        }
        if (i2 != 5) {
            return null;
        }
        return zze;
    }
}
