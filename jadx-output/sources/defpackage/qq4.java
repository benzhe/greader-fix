package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class qq4 extends pk4<qq4, a> implements bm4 {
    private static final qq4 zzg;
    private static volatile jm4<qq4> zzh;
    private int zzc;
    private b zzd;
    private int zze;
    private ep4 zzf;

    public static final class a extends pk4.b<qq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(qq4.zzg);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzi;
        private static volatile jm4<b> zzj;
        private int zzc;
        private int zzd;
        private boolean zze;
        private boolean zzf;
        private hp4 zzg;
        private zp4 zzh;

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(bp4 bp4Var) {
                super(b.zzi);
            }
        }

        static {
            b bVar = new b();
            zzi = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<qq4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဉ\u0003\u0005ဉ\u0004", new Object[]{"zzc", "zzd", ph4.a, "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    jm4<b> jm4Var2 = zzj;
                    jm4<b> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (b.class) {
                            jm4<b> jm4Var4 = zzj;
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

    static {
        qq4 qq4Var = new qq4();
        zzg = qq4Var;
        pk4.l(qq4.class, qq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<qq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<qq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new qq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဋ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<qq4> jm4Var2 = zzh;
                jm4<qq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (qq4.class) {
                        jm4<qq4> jm4Var4 = zzh;
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
