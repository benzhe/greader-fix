package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class op3 extends s63<op3, a> implements f83 {
    private static final op3 zzchk;
    private static volatile l83<op3> zzek;
    private int zzcdi = 1000;
    private nq3 zzcgt;
    private jq3 zzcgu;
    private int zzdv;

    public static final class a extends s63.b<op3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(op3.zzchk);
        }
    }

    static {
        op3 op3Var = new op3();
        zzchk = op3Var;
        s63.s(op3.class, op3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new op3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzchk, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzcdi", xq3.a, "zzcgt", "zzcgu"});
            case 4:
                return zzchk;
            case 5:
                l83<op3> aVar = zzek;
                if (aVar == null) {
                    synchronized (op3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzchk);
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
