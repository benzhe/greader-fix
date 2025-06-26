package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class pp4 extends pk4<pp4, a> implements bm4 {
    private static final pp4 zzh;
    private static volatile jm4<pp4> zzi;
    private int zzc;
    private op4 zzd;
    private b zze;
    private b zzf;
    private boolean zzg;

    public static final class a extends pk4.b<pp4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(pp4.zzh);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzh;
        private static volatile jm4<b> zzi;
        private int zzc;
        private boolean zzd;
        private boolean zze;
        private boolean zzf;
        private boolean zzg;

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(bp4 bp4Var) {
                super(b.zzh);
            }
        }

        static {
            b bVar = new b();
            zzh = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<pp4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဇ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    jm4<b> jm4Var2 = zzi;
                    jm4<b> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (b.class) {
                            jm4<b> jm4Var4 = zzi;
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

    static {
        pp4 pp4Var = new pp4();
        zzh = pp4Var;
        pk4.l(pp4.class, pp4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<pp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<pp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new pp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
            case 4:
                return zzh;
            case 5:
                jm4<pp4> jm4Var2 = zzi;
                jm4<pp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (pp4.class) {
                        jm4<pp4> jm4Var4 = zzi;
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
