package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class iq4 extends pk4<iq4, a> implements bm4 {
    private static final iq4 zzl;
    private static volatile jm4<iq4> zzm;
    private int zzc;
    private ip4 zzd;
    private mq4 zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    public static final class a extends pk4.b<iq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(iq4.zzl);
        }
    }

    static {
        iq4 iq4Var = new iq4();
        zzl = iq4Var;
        pk4.l(iq4.class, iq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<iq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<iq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new iq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007ဌ\u0006\bင\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", mi4.a, "zzk"});
            case 4:
                return zzl;
            case 5:
                jm4<iq4> jm4Var2 = zzm;
                jm4<iq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (iq4.class) {
                        jm4<iq4> jm4Var4 = zzm;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzl);
                            zzm = aVar;
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
