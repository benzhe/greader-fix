package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class pq3 extends s63<pq3, a> implements f83 {
    private static final pq3 zzchg;
    private static volatile l83<pq3> zzek;
    private int zzcdi = 1000;
    private int zzcgj;
    private int zzcgk;
    private nq3 zzcgt;
    private int zzchf;
    private int zzdv;

    public static final class a extends s63.b<pq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(pq3.zzchg);
        }
    }

    static {
        pq3 pq3Var = new pq3();
        zzchg = pq3Var;
        s63.s(pq3.class, pq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new pq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzchg, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzdv", "zzcdi", xq3.a, "zzcgt", "zzcgj", "zzcgk", "zzchf"});
            case 4:
                return zzchg;
            case 5:
                l83<pq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (pq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzchg);
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
