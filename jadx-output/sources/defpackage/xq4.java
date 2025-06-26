package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class xq4 extends pk4<xq4, a> implements bm4 {
    private static final xq4 zzg;
    private static volatile jm4<xq4> zzh;
    private int zzc;
    private ip4 zzd;
    private yq4 zze;
    private hp4 zzf;

    public static final class a extends pk4.b<xq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(xq4.zzg);
        }
    }

    static {
        xq4 xq4Var = new xq4();
        zzg = xq4Var;
        pk4.l(xq4.class, xq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<xq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<xq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new xq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<xq4> jm4Var2 = zzh;
                jm4<xq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (xq4.class) {
                        jm4<xq4> jm4Var4 = zzh;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzg);
                            zzh = aVar;
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
