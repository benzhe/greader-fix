package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class yp4 extends pk4<yp4, a> implements bm4 {
    private static final yp4 zzf;
    private static volatile jm4<yp4> zzg;
    private int zzc;
    private zp4 zzd;
    private int zze;

    public static final class a extends pk4.b<yp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(yp4.zzf);
        }
    }

    static {
        yp4 yp4Var = new yp4();
        zzf = yp4Var;
        pk4.l(yp4.class, yp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<yp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<yp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new yp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001", new Object[]{"zzc", "zzd", "zze", ph4.a});
            case 4:
                return zzf;
            case 5:
                jm4<yp4> jm4Var2 = zzg;
                jm4<yp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (yp4.class) {
                        jm4<yp4> jm4Var4 = zzg;
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
