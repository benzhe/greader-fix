package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class gq3 extends s63<gq3, a> implements f83 {
    private static final gq3 zzcfq;
    private static volatile l83<gq3> zzek;
    private int zzcfo;
    private int zzcfp;
    private int zzdv;

    public static final class a extends s63.b<gq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(gq3.zzcfq);
        }
    }

    static {
        gq3 gq3Var = new gq3();
        zzcfq = gq3Var;
        s63.s(gq3.class, gq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new gq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcfq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzdv", "zzcfo", "zzcfp"});
            case 4:
                return zzcfq;
            case 5:
                l83<gq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (gq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcfq);
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
