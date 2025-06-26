package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class bo4 extends pk4<bo4, a> implements bm4 {
    private static final bo4 zze;
    private static volatile jm4<bo4> zzf;
    private int zzc;
    private int zzd;

    public static final class a extends pk4.b<bo4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(bo4.zze);
        }
    }

    static {
        bo4 bo4Var = new bo4();
        zze = bo4Var;
        pk4.l(bo4.class, bo4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<bo4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<bo4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new bo4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"zzc", "zzd"});
            case 4:
                return zze;
            case 5:
                jm4<bo4> jm4Var2 = zzf;
                jm4<bo4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (bo4.class) {
                        jm4<bo4> jm4Var4 = zzf;
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
