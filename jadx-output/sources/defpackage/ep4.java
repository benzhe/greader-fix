package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class ep4 extends pk4<ep4, a> implements bm4 {
    private static final ep4 zzj;
    private static volatile jm4<ep4> zzk;
    private int zzc;
    private long zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    public static final class a extends pk4.b<ep4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(ep4.zzj);
        }
    }

    static {
        ep4 ep4Var = new ep4();
        zzj = ep4Var;
        pk4.l(ep4.class, ep4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<ep4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<ep4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new ep4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဃ\u0000\u0002ဃ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004\u0006ဃ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                jm4<ep4> jm4Var2 = zzk;
                jm4<ep4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (ep4.class) {
                        jm4<ep4> jm4Var4 = zzk;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzj);
                            zzk = aVar;
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
