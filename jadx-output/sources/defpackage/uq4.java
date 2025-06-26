package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class uq4 extends pk4<uq4, a> implements bm4 {
    private static final uq4 zze;
    private static volatile jm4<uq4> zzf;
    private int zzc;
    private int zzd;

    public static final class a extends pk4.b<uq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(uq4.zze);
        }
    }

    static {
        uq4 uq4Var = new uq4();
        zze = uq4Var;
        pk4.l(uq4.class, uq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<uq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<uq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new uq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"zzc", "zzd", ph4.a});
            case 4:
                return zze;
            case 5:
                jm4<uq4> jm4Var2 = zzf;
                jm4<uq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (uq4.class) {
                        jm4<uq4> jm4Var4 = zzf;
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
