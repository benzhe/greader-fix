package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class qp4 extends pk4<qp4, a> implements bm4 {
    private static final qp4 zzh;
    private static volatile jm4<qp4> zzi;
    private int zzc;
    private int zzd;
    private float zze;
    private int zzf;
    private int zzg;

    public static final class a extends pk4.b<qp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(qp4.zzh);
        }
    }

    static {
        qp4 qp4Var = new qp4();
        zzh = qp4Var;
        pk4.l(qp4.class, qp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<qp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<qp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new qp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ခ\u0001\u0003င\u0002\u0004ဋ\u0003", new Object[]{"zzc", "zzd", ci4.a, "zze", "zzf", "zzg"});
            case 4:
                return zzh;
            case 5:
                jm4<qp4> jm4Var2 = zzi;
                jm4<qp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (qp4.class) {
                        jm4<qp4> jm4Var4 = zzi;
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
