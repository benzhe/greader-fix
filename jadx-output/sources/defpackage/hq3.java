package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class hq3 extends s63<hq3, a> implements f83 {
    private static final hq3 zzcft;
    private static volatile l83<hq3> zzek;
    private int zzcfr;
    private int zzcfs;
    private int zzdv;

    public static final class a extends s63.b<hq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(hq3.zzcft);
        }
    }

    static {
        hq3 hq3Var = new hq3();
        zzcft = hq3Var;
        s63.s(hq3.class, hq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new hq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcft, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzdv", "zzcfr", "zzcfs"});
            case 4:
                return zzcft;
            case 5:
                l83<hq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (hq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcft);
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
