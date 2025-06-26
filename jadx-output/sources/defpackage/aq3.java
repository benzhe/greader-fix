package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class aq3 extends s63<aq3, a> implements f83 {
    private static final aq3 zzcdj;
    private static volatile l83<aq3> zzek;
    private x63 zzcdf = v63.h;
    private int zzcdi;
    private int zzdv;

    public static final class a extends s63.b<aq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(aq3.zzcdj);
        }
    }

    static {
        aq3 aq3Var = new aq3();
        zzcdj = aq3Var;
        s63.s(aq3.class, aq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new aq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcdj, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u0016", new Object[]{"zzdv", "zzcdi", xq3.a, "zzcdf"});
            case 4:
                return zzcdj;
            case 5:
                l83<aq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (aq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcdj);
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
