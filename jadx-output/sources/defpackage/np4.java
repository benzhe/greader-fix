package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class np4 extends pk4<np4, a> implements bm4 {
    private static final np4 zzk;
    private static volatile jm4<np4> zzl;
    private int zzc;
    private pp4 zzd;
    private long zze;
    private int zzf;
    private long zzg;
    private int zzh;
    private long zzi;
    private uk4 zzj = sk4.h;

    public static final class a extends pk4.b<np4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(np4.zzk);
        }
    }

    static {
        np4 np4Var = new np4();
        zzk = np4Var;
        pk4.l(np4.class, np4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<np4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<np4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new np4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဉ\u0000\u0002ဃ\u0001\u0003ဌ\u0002\u0004ဃ\u0003\u0005ဌ\u0004\u0006ဂ\u0005\u0007\u0016", new Object[]{"zzc", "zzd", "zze", "zzf", ph4.a, "zzg", "zzh", zh4.a, "zzi", "zzj"});
            case 4:
                return zzk;
            case 5:
                jm4<np4> jm4Var2 = zzl;
                jm4<np4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (np4.class) {
                        jm4<np4> jm4Var4 = zzl;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzk);
                            zzl = aVar;
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
