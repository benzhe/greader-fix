package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class ui4 extends pk4<ui4, a> implements bm4 {
    private static final xk4<Integer, Object> zzd = new wi4();
    private static final ui4 zze;
    private static volatile jm4<ui4> zzf;
    private uk4 zzc = sk4.h;

    public static final class a extends pk4.b<ui4, a> implements bm4 {
        public a(ti4 ti4Var) {
            super(ui4.zze);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [wi4, xk4<java.lang.Integer, java.lang.Object>] */
    static {
        ui4 ui4Var = new ui4();
        zze = ui4Var;
        pk4.l(ui4.class, ui4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<ui4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<ui4> jm4Var;
        switch (ti4.a[i - 1]) {
            case 1:
                return new ui4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzc", nj4.a});
            case 4:
                return zze;
            case 5:
                jm4<ui4> jm4Var2 = zzf;
                jm4<ui4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (ui4.class) {
                        jm4<ui4> jm4Var4 = zzf;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zze);
                            zzf = aVar;
                            jm4Var = aVar;
                        }
                    }
                    jm4Var3 = jm4Var;
                }
                return jm4Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
