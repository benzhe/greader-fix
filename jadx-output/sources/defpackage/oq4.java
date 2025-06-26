package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class oq4 extends pk4<oq4, a> implements bm4 {
    private static final oq4 zzg;
    private static volatile jm4<oq4> zzh;
    private int zzc;
    private b zzd;
    private int zze;
    private ep4 zzf;

    public static final class a extends pk4.b<oq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(oq4.zzg);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzj;
        private static volatile jm4<b> zzk;
        private int zzc;
        private int zzd;
        private boolean zze;
        private hp4 zzf;
        private fp4 zzg;
        private int zzh;
        private int zzi;

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(bp4 bp4Var) {
                super(b.zzj);
            }
        }

        static {
            b bVar = new b();
            zzj = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<oq4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဋ\u0004\u0006ဋ\u0005", new Object[]{"zzc", "zzd", ph4.a, "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    jm4<b> jm4Var2 = zzk;
                    jm4<b> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (b.class) {
                            jm4<b> jm4Var4 = zzk;
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

    static {
        oq4 oq4Var = new oq4();
        zzg = oq4Var;
        pk4.l(oq4.class, oq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<oq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<oq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new oq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဋ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<oq4> jm4Var2 = zzh;
                jm4<oq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (oq4.class) {
                        jm4<oq4> jm4Var4 = zzh;
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
