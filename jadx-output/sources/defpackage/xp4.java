package defpackage;

import defpackage.ip4;
import defpackage.pk4;
import java.util.Objects;

/* loaded from: classes.dex */
public final class xp4 extends pk4<xp4, a> implements bm4 {
    private static final xp4 zzh;
    private static volatile jm4<xp4> zzi;
    private int zzc;
    private ip4 zzd;
    private lp4 zze;
    private c zzf;
    private d zzg;

    public static final class a extends pk4.b<xp4, a> implements bm4 {
        public a() {
            super(xp4.zzh);
        }

        public final a k(ip4.a aVar) {
            if (this.g) {
                f();
                this.g = false;
            }
            xp4.q((xp4) this.f, (ip4) ((pk4) aVar.j()));
            return this;
        }

        public a(bp4 bp4Var) {
            super(xp4.zzh);
        }
    }

    public static final class b extends pk4<b, a> implements bm4 {
        private static final b zzf;
        private static volatile jm4<b> zzg;
        private int zzc;
        private float zzd;
        private String zze = "";

        public static final class a extends pk4.b<b, a> implements bm4 {
            public a() {
                super(b.zzf);
            }

            public a(bp4 bp4Var) {
                super(b.zzf);
            }
        }

        static {
            b bVar = new b();
            zzf = bVar;
            pk4.l(b.class, bVar);
        }

        public static a p() {
            return zzf.o();
        }

        public static void q(b bVar, float f) {
            bVar.zzc |= 1;
            bVar.zzd = f;
        }

        public static void s(b bVar, String str) {
            Objects.requireNonNull(bVar);
            str.getClass();
            bVar.zzc |= 2;
            bVar.zze = str;
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<xp4$b>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<b> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ခ\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
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

    public static final class c extends pk4<c, a> implements bm4 {
        private static final c zze;
        private static volatile jm4<c> zzf;
        private int zzc;
        private b zzd;

        public static final class a extends pk4.b<c, a> implements bm4 {
            public a(bp4 bp4Var) {
                super(c.zze);
            }
        }

        static {
            c cVar = new c();
            zze = cVar;
            pk4.l(c.class, cVar);
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<xp4$c>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<c> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new c();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zzc", "zzd"});
                case 4:
                    return zze;
                case 5:
                    jm4<c> jm4Var2 = zzf;
                    jm4<c> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (c.class) {
                            jm4<c> jm4Var4 = zzf;
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

    public static final class d extends pk4<d, a> implements bm4 {
        private static final d zzd;
        private static volatile jm4<d> zze;
        private wk4<b> zzc = mm4.h;

        public static final class a extends pk4.b<d, a> implements bm4 {
            public a() {
                super(d.zzd);
            }

            public a(bp4 bp4Var) {
                super(d.zzd);
            }
        }

        static {
            d dVar = new d();
            zzd = dVar;
            pk4.l(d.class, dVar);
        }

        public static a p() {
            return zzd.o();
        }

        public static void q(d dVar, b bVar) {
            Objects.requireNonNull(dVar);
            bVar.getClass();
            wk4<b> wk4Var = dVar.zzc;
            if (!wk4Var.a()) {
                int size = wk4Var.size();
                dVar.zzc = wk4Var.i(size == 0 ? 10 : size << 1);
            }
            dVar.zzc.add(bVar);
        }

        public static d s() {
            return zzd;
        }

        /* JADX WARN: Type inference failed for: r2v13, types: [jm4<xp4$d>, pk4$a] */
        @Override // defpackage.pk4
        public final Object j(int i, Object obj, Object obj2) {
            jm4<d> jm4Var;
            switch (bp4.a[i - 1]) {
                case 1:
                    return new d();
                case 2:
                    return new a(null);
                case 3:
                    return new lm4(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", b.class});
                case 4:
                    return zzd;
                case 5:
                    jm4<d> jm4Var2 = zze;
                    jm4<d> jm4Var3 = jm4Var2;
                    if (jm4Var2 == null) {
                        synchronized (d.class) {
                            jm4<d> jm4Var4 = zze;
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

    static {
        xp4 xp4Var = new xp4();
        zzh = xp4Var;
        pk4.l(xp4.class, xp4Var);
    }

    public static a p() {
        return zzh.o();
    }

    public static void q(xp4 xp4Var, ip4 ip4Var) {
        Objects.requireNonNull(xp4Var);
        xp4Var.zzd = ip4Var;
        xp4Var.zzc |= 1;
    }

    public static void s(xp4 xp4Var, lp4 lp4Var) {
        Objects.requireNonNull(xp4Var);
        lp4Var.getClass();
        xp4Var.zze = lp4Var;
        xp4Var.zzc |= 2;
    }

    public static void t(xp4 xp4Var, c cVar) {
        Objects.requireNonNull(xp4Var);
        cVar.getClass();
        xp4Var.zzf = cVar;
        xp4Var.zzc |= 4;
    }

    public static void u(xp4 xp4Var, d dVar) {
        Objects.requireNonNull(xp4Var);
        dVar.getClass();
        xp4Var.zzg = dVar;
        xp4Var.zzc |= 8;
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [jm4<xp4>, pk4$a] */
    @Override // defpackage.pk4
    public final Object j(int i, Object obj, Object obj2) {
        jm4<xp4> jm4Var;
        switch (bp4.a[i - 1]) {
            case 1:
                return new xp4();
            case 2:
                return new a(null);
            case 3:
                return new lm4(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
            case 4:
                return zzh;
            case 5:
                jm4<xp4> jm4Var2 = zzi;
                jm4<xp4> jm4Var3 = jm4Var2;
                if (jm4Var2 == null) {
                    synchronized (xp4.class) {
                        jm4<xp4> jm4Var4 = zzi;
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
