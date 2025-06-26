package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class fp4 extends pk4<fp4, a> implements bm4 {
    private static final fp4 zzj;
    private static volatile jm4<fp4> zzk;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private float zzi;

    public static final class a extends pk4.b<fp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(fp4.zzj);
        }
    }

    static {
        fp4 fp4Var = new fp4();
        zzj = fp4Var;
        pk4.l(fp4.class, fp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<fp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<fp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new fp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဌ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", th4.a, "zze", rh4.a, "zzf", uh4.a, "zzg", sh4.a, "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                jm4<fp4> jm4Var2 = zzk;
                jm4<fp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (fp4.class) {
                        jm4<fp4> jm4Var4 = zzk;
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
