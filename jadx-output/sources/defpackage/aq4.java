package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class aq4 extends pk4<aq4, a> implements bm4 {
    private static final aq4 zzh;
    private static volatile jm4<aq4> zzi;
    private int zzc;
    private ip4 zzd;
    private hp4 zze;
    private zp4 zzf;
    private wk4<qp4> zzg = mm4.h;

    public static final class a extends pk4.b<aq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(aq4.zzh);
        }
    }

    static {
        aq4 aq4Var = new aq4();
        zzh = aq4Var;
        pk4.l(aq4.class, aq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<aq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<aq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new aq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", qp4.class});
            case 4:
                return zzh;
            case 5:
                jm4<aq4> jm4Var2 = zzi;
                jm4<aq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (aq4.class) {
                        jm4<aq4> jm4Var4 = zzi;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzh);
                            zzi = aVar;
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
