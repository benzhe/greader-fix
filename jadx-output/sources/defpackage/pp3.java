package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class pp3 extends s63<pp3, a> implements f83 {
    private static final pp3 zzchl;
    private static volatile l83<pp3> zzek;
    private int zzcdi = 1000;
    private nq3 zzcgt;
    private int zzdv;

    public static final class a extends s63.b<pp3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(pp3.zzchl);
        }
    }

    static {
        pp3 pp3Var = new pp3();
        zzchl = pp3Var;
        s63.s(pp3.class, pp3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new pp3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzchl, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzdv", "zzcdi", xq3.a, "zzcgt"});
            case 4:
                return zzchl;
            case 5:
                l83<pp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (pp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzchl);
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
