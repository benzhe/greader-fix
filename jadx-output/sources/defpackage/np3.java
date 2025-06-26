package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class np3 extends s63<np3, a> implements f83 {
    private static final np3 zzchj;
    private static volatile l83<np3> zzek;
    private int zzcdi = 1000;
    private int zzcgj;
    private int zzcgk;
    private nq3 zzcgt;
    private int zzchf;
    private long zzchi;
    private int zzdv;

    public static final class a extends s63.b<np3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(np3.zzchj);
        }
    }

    static {
        np3 np3Var = new np3();
        zzchj = np3Var;
        s63.s(np3.class, np3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new np3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzchj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzdv", "zzcdi", xq3.a, "zzcgt", "zzcgj", "zzcgk", "zzchf", "zzchi"});
            case 4:
                return zzchj;
            case 5:
                l83<np3> aVar = zzek;
                if (aVar == null) {
                    synchronized (np3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzchj);
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
