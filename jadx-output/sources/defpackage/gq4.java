package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class gq4 extends pk4<gq4, a> implements bm4 {
    private static final gq4 zzi;
    private static volatile jm4<gq4> zzj;
    private int zzc;
    private ip4 zzd;
    private wk4<b> zze = mm4.h;
    private int zzf;
    private int zzg;
    private int zzh;

    public static final class a extends pk4.b<gq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(gq4.zzi);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zze;
        private static volatile jm4<b> zzf;
        private int zzc;
        private float zzd;

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(bp4 bp4Var) {
                super(b.zze);
            }
        }

        static {
            b bVar = new b();
            zze = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<gq4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ခ\u0000", new Object[]{"zzc", "zzd"});
                case 4:
                    return zze;
                case 5:
                    jm4<b> jm4Var2 = zzf;
                    jm4<b> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (b.class) {
                            jm4<b> jm4Var4 = zzf;
                            jm4Var = jm4Var4;
                            if (jm4Var4 == null) {
                                ?? aVar = new pk4.a(zze);
                                zzf = aVar;
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
        gq4 gq4Var = new gq4();
        zzi = gq4Var;
        pk4.l(gq4.class, gq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<gq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<gq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new gq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဌ\u0001\u0004င\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", "zze", b.class, "zzf", li4.a, "zzg", "zzh"});
            case 4:
                return zzi;
            case 5:
                jm4<gq4> jm4Var2 = zzj;
                jm4<gq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (gq4.class) {
                        jm4<gq4> jm4Var4 = zzj;
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
