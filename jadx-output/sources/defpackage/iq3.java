package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class iq3 extends s63<iq3, a> implements f83 {
    private static final iq3 zzcfu;
    private static volatile l83<iq3> zzek;
    private String zzcdd = "";
    private int zzcde;
    private jq3 zzcdg;
    private int zzdv;

    public static final class a extends s63.b<iq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(iq3.zzcfu);
        }
    }

    static {
        iq3 iq3Var = new iq3();
        zzcfu = iq3Var;
        s63.s(iq3.class, iq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new iq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcfu, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzcdd", "zzcde", xq3.a, "zzcdg"});
            case 4:
                return zzcfu;
            case 5:
                l83<iq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (iq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcfu);
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
