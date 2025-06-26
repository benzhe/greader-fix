package defpackage;

import defpackage.jr4;
import defpackage.pk4;

/* loaded from: classes.dex */
public final class dq4 extends pk4<dq4, a> implements bm4 {
    private static final dq4 zzg;
    private static volatile jm4<dq4> zzh;
    private int zzc;
    private b zzd;
    private int zze;
    private ep4 zzf;

    public static final class a extends pk4.b<dq4, a> implements bm4 {
        public a(bp4 bp4Var) {
            super(dq4.zzg);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzi;
        private static volatile jm4<b> zzj;
        private int zzc;
        private int zzd;
        private boolean zze;
        private wk4<jr4.b> zzf;
        private wk4<jr4.b> zzg;
        private pp4 zzh;

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

        public b() {
            mm4<Object> mm4Var = mm4.h;
            this.zzf = mm4Var;
            this.zzg = mm4Var;
        }

        /* JADX WARN: Type inference failed for: r3v13, types: [jm4<dq4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003\u001b\u0004\u001b\u0005ဉ\u0002", new Object[]{"zzc", "zzd", ph4.a, "zze", "zzf", jr4.b.class, "zzg", jr4.b.class, "zzh"});
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
        dq4 dq4Var = new dq4();
        zzg = dq4Var;
        pk4.l(dq4.class, dq4Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<dq4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<dq4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new dq4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဋ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 4:
                return zzg;
            case 5:
                jm4<dq4> jm4Var2 = zzh;
                jm4<dq4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (dq4.class) {
                        jm4<dq4> jm4Var4 = zzh;
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
