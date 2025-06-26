package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class xn4 extends pk4<xn4, a> implements bm4 {
    private static final xn4 zzf;
    private static volatile jm4<xn4> zzg;
    private int zzc;
    private int zzd;
    private go4 zze;

    public static final class a extends pk4.b<xn4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(xn4.zzf);
        }
    }

    static {
        xn4 xn4Var = new xn4();
        zzf = xn4Var;
        pk4.l(xn4.class, xn4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<xn4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<xn4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new xn4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", jo4.a, "zze"});
            case 4:
                return zzf;
            case 5:
                jm4<xn4> jm4Var2 = zzg;
                jm4<xn4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (xn4.class) {
                        jm4<xn4> jm4Var4 = zzg;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzf);
                            zzg = aVar;
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
