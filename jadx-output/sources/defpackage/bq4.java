package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class bq4 extends pk4<bq4, a> implements bm4 {
    private static final bq4 zzi;
    private static volatile jm4<bq4> zzj;
    private int zzc;
    private zp4 zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private wk4<jq4> zzh = mm4.h;

    public static final class a extends pk4.b<bq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(bq4.zzi);
        }
    }

    static {
        bq4 bq4Var = new bq4();
        zzi = bq4Var;
        pk4.l(bq4.class, bq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<bq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<bq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new bq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005\u001b", new Object[]{"zzc", "zzd", "zze", ph4.a, "zzf", "zzg", "zzh", jq4.class});
            case 4:
                return zzi;
            case 5:
                jm4<bq4> jm4Var2 = zzj;
                jm4<bq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (bq4.class) {
                        jm4<bq4> jm4Var4 = zzj;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzi);
                            zzj = aVar;
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
