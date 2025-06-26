package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class jr4 extends pk4<jr4, a> implements bm4 {
    private static final jr4 zzi;
    private static volatile jm4<jr4> zzj;
    private int zzc;
    private ip4 zzd;
    private pp4 zze;
    private wk4<b> zzf;
    private wk4<b> zzg;
    private long zzh;

    public static final class a extends pk4.b<jr4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(jr4.zzi);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzf;
        private static volatile jm4<b> zzg;
        private int zzc;
        private int zzd;
        private uk4 zze = sk4.h;

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(bp4 bp4Var) {
                super(b.zzf);
            }
        }

        static {
            b bVar = new b();
            zzf = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<jr4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u0016", new Object[]{"zzc", "zzd", lh4.a, "zze"});
                case 4:
                    return zzf;
                case 5:
                    jm4<b> jm4Var2 = zzg;
                    jm4<b> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (b.class) {
                            jm4<b> jm4Var4 = zzg;
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
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    static {
        jr4 jr4Var = new jr4();
        zzi = jr4Var;
        pk4.l(jr4.class, jr4Var);
    }

    public jr4() {
        mm4<Object> mm4Var = mm4.h;
        this.zzf = mm4Var;
        this.zzg = mm4Var;
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [jm4<jr4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<jr4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new jr4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004\u001b\u0005ဃ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf", b.class, "zzg", b.class, "zzh"});
            case 4:
                return zzi;
            case 5:
                jm4<jr4> jm4Var2 = zzj;
                jm4<jr4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (jr4.class) {
                        jm4<jr4> jm4Var4 = zzj;
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
