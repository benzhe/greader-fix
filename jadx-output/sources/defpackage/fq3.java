package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class fq3 extends s63<fq3, a> implements f83 {
    private static final fq3 zzcfn;
    private static volatile l83<fq3> zzek;
    private int zzcfc = 1000;
    private int zzcfd = 1000;
    private int zzcfe;
    private int zzcff;
    private int zzcfg;
    private int zzcfh;
    private int zzcfi;
    private int zzcfj;
    private int zzcfk;
    private int zzcfl;
    private gq3 zzcfm;
    private int zzdv;

    public static final class a extends s63.b<fq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(fq3.zzcfn);
        }
    }

    static {
        fq3 fq3Var = new fq3();
        zzcfn = fq3Var;
        s63.s(fq3.class, fq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new fq3();
            case 2:
                return new a(null);
            case 3:
                y63 y63Var = xq3.a;
                return new r83(zzcfn, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzdv", "zzcfc", y63Var, "zzcfd", y63Var, "zzcfe", "zzcff", "zzcfg", "zzcfh", "zzcfi", "zzcfj", "zzcfk", "zzcfl", "zzcfm"});
            case 4:
                return zzcfn;
            case 5:
                l83<fq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (fq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcfn);
                            zzek = aVar;
                        }
                    }
                }
                return aVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
