package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class fo4 extends pk4<fo4, a> implements bm4 {
    private static final fo4 zzd;
    private static volatile jm4<fo4> zze;
    private wk4<b> zzc = mm4.h;

    public static final class a extends pk4.b<fo4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(fo4.zzd);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzh;
        private static volatile jm4<b> zzi;
        private int zzc;
        private int zze;
        private long zzg;
        private String zzd = "";
        private String zzf = "";

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(wn4 wn4Var) {
                super(b.zzh);
            }
        }

        static {
            b bVar = new b();
            zzh = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<fo4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (wn4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003ဈ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
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
        fo4 fo4Var = new fo4();
        zzd = fo4Var;
        pk4.l(fo4.class, fo4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<fo4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<fo4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new fo4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", b.class});
            case 4:
                return zzd;
            case 5:
                jm4<fo4> jm4Var2 = zze;
                jm4<fo4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (fo4.class) {
                        jm4<fo4> jm4Var4 = zze;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzd);
                            zze = aVar;
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
