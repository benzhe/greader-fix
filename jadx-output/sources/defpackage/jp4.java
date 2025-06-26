package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class jp4 extends pk4<jp4, a> implements bm4 {
    private static final jp4 zzk;
    private static volatile jm4<jp4> zzl;
    private int zzc;
    private long zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    public static final class a extends pk4.b<jp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(jp4.zzk);
        }
    }

    static {
        jp4 jp4Var = new jp4();
        zzk = jp4Var;
        pk4.l(jp4.class, jp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<jp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<jp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new jp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဃ\u0000\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဋ\u0003\u0005ဋ\u0004\u0006ဋ\u0005\u0007ဋ\u0006", new Object[]{"zzc", "zzd", "zze", wh4.a, "zzf", vh4.a, "zzg", "zzh", "zzi", "zzj"});
            case 4:
                return zzk;
            case 5:
                jm4<jp4> jm4Var2 = zzl;
                jm4<jp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (jp4.class) {
                        jm4<jp4> jm4Var4 = zzl;
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
