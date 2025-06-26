package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class io4 extends pk4.c<io4, a> implements bm4 {
    private static final io4 zzf;
    private static volatile jm4<io4> zzg;
    private byte zze = 2;
    private wk4<b> zzd = mm4.h;

    public static final class a extends pk4.d<io4, a> implements bm4 {
        public a(wn4 wn4Var) {
            super(io4.zzf);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzg;
        private static volatile jm4<b> zzh;
        private int zzc;
        private int zzd;
        private int zze;
        private wk4<ho4> zzf = mm4.h;

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(wn4 wn4Var) {
                super(b.zzg);
            }
        }

        static {
            b bVar = new b();
            zzg = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<io4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (wn4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", ho4.class});
                case 4:
                    return zzg;
                case 5:
                    jm4<b> jm4Var2 = zzh;
                    jm4<b> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (b.class) {
                            jm4<b> jm4Var4 = zzh;
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

    static {
        io4 io4Var = new io4();
        zzf = io4Var;
        pk4.l(io4.class, io4Var);
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [jm4<io4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<io4> jm4Var;
        switch (wn4.a[i - 1]) {
            case 1:
                return new io4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzf, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", b.class});
            case 4:
                return zzf;
            case 5:
                jm4<io4> jm4Var2 = zzg;
                jm4<io4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (io4.class) {
                        jm4<io4> jm4Var4 = zzg;
                        jm4Var = jm4Var4;
                        if (jm4Var4 == null) {
                            ?? aVar = new pk4.a(zzf);
                            zzg = aVar;
                            jm4Var = aVar;
                        }
                    }
                    jm4Var3 = jm4Var;
                }
                return jm4Var3;
            case 6:
                return Byte.valueOf(this.zze);
            case 7:
                this.zze = (byte) (obj == null ? 0 : 1);
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
