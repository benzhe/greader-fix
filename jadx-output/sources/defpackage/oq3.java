package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class oq3 extends s63<oq3, a> implements f83 {
    private static final oq3 zzche;
    private static volatile l83<oq3> zzek;
    private int zzcdi = 1000;
    private nq3 zzcgt;
    private jq3 zzcgu;
    private kq3 zzchd;
    private int zzdv;

    public static final class a extends s63.b<oq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(oq3.zzche);
        }
    }

    static {
        oq3 oq3Var = new oq3();
        zzche = oq3Var;
        s63.s(oq3.class, oq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new oq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzche, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzchd", "zzcdi", xq3.a, "zzcgt", "zzcgu"});
            case 4:
                return zzche;
            case 5:
                l83<oq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (oq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzche);
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
