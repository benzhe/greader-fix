package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class do4 extends pk4<do4, a> implements bm4 {
    private static final do4 zzd;
    private static volatile jm4<do4> zze;
    private uk4 zzc = sk4.h;

    public static final class a extends pk4.b<do4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(do4.zzd);
        }
    }

    static {
        do4 do4Var = new do4();
        zzd = do4Var;
        pk4.l(do4.class, do4Var);
    }

    /* JADX WARN: Type inference failed for: r2v12, types: [jm4<do4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<do4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new do4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0016", new Object[]{"zzc"});
            case 4:
                return zzd;
            case 5:
                jm4<do4> jm4Var2 = zze;
                jm4<do4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (do4.class) {
                        jm4<do4> jm4Var4 = zze;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzd);
                            zze = aVar;
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
