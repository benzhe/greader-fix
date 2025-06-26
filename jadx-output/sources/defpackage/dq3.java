package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class dq3 extends s63<dq3, a> implements f83 {
    private static final dq3 zzcea;
    private static volatile l83<dq3> zzek;
    private int zzcdy;
    private jq3 zzcdz;
    private int zzdv;

    public static final class a extends s63.b<dq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(dq3.zzcea);
        }
    }

    static {
        dq3 dq3Var = new dq3();
        zzcea = dq3Var;
        s63.s(dq3.class, dq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new dq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcea, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzdv", "zzcdy", xq3.a, "zzcdz"});
            case 4:
                return zzcea;
            case 5:
                l83<dq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (dq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcea);
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
