package defpackage;

import defpackage.pk4;

/* loaded from: classes.dex */
public final class nq4 extends pk4<nq4, a> implements bm4 {
    private static final nq4 zzg;
    private static volatile jm4<nq4> zzh;
    private int zzc;
    private b zzd;
    private int zze;
    private ep4 zzf;

    public static final class a extends pk4.b<nq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(nq4.zzg);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final xk4<Integer, Object> zzj = new lr4();
        private static final xk4<Integer, Object> zzl = new ih4();
        private static final b zzm;
        private static volatile jm4<b> zzn;
        private int zzc;
        private int zzd;
        private boolean zze;
        private boolean zzf;
        private hp4 zzg;
        private ui4 zzh;
        private uk4 zzi;
        private uk4 zzk;

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a(bp4 bp4Var) {
                super(b.zzm);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [lr4, xk4<java.lang.Integer, java.lang.Object>] */
        /* JADX WARN: Type inference failed for: r0v1, types: [ih4, xk4<java.lang.Integer, java.lang.Object>] */
        static {
            b bVar = new b();
            zzm = bVar;
            pk4.l(b.class, bVar);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [sk4, uk4] */
        public b() {
            ?? r0 = sk4.h;
            this.zzi = r0;
            this.zzk = r0;
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<nq4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzm, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006\u001e\u0007\u001e", new Object[]{"zzc", "zzd", ph4.a, "zze", "zzf", "zzg", "zzh", "zzi", fi4.a, "zzk", gi4.a});
                case 4:
                    return zzm;
                case 5:
                    jm4<b> jm4Var2 = zzn;
                    jm4<b> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (b.class) {
                            jm4<b> jm4Var4 = zzn;
                            jm4Var = jm4Var4;
                            if (jm4Var4 == null) {
                                ?? aVar = new pk4.a(zzm);
                                zzn = aVar;
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
        nq4 nq4Var = new nq4();
        zzg = nq4Var;
        pk4.l(nq4.class, nq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<nq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<nq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new nq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဋ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<nq4> jm4Var2 = zzh;
                jm4<nq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (nq4.class) {
                        jm4<nq4> jm4Var4 = zzh;
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
