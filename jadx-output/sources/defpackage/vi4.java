package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class vi4 extends pk4<vi4, a> implements bm4 {
    private static final vi4 zzj;
    private static volatile jm4<vi4> zzk;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private float zzi;

    public static final class a extends pk4.b<vi4, a> implements bm4 {
        public a(ti4 ti4Var) {
            super(vi4.zzj);
        }
    }

    static {
        vi4 vi4Var = new vi4();
        zzj = vi4Var;
        pk4.l(vi4.class, vi4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<vi4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<vi4> jm4Var;
        switch (ti4.a[i - 1]) {
            case 1:
                return new vi4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", zi4.a, "zze", yi4.a, "zzf", xi4.a, "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                jm4<vi4> jm4Var2 = zzk;
                jm4<vi4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (vi4.class) {
                        jm4<vi4> jm4Var4 = zzk;
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
