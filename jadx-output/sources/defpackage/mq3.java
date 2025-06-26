package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class mq3 extends s63<mq3, a> implements f83 {
    private static final mq3 zzcgv;
    private static volatile l83<mq3> zzek;
    private int zzcdi = 1000;
    private nq3 zzcgt;
    private jq3 zzcgu;
    private int zzdv;

    public static final class a extends s63.b<mq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(mq3.zzcgv);
        }
    }

    static {
        mq3 mq3Var = new mq3();
        zzcgv = mq3Var;
        s63.s(mq3.class, mq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new mq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcgv, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzcdi", xq3.a, "zzcgt", "zzcgu"});
            case 4:
                return zzcgv;
            case 5:
                l83<mq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (mq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcgv);
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
