package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class bq3 extends s63<bq3, a> implements f83 {
    private static final bq3 zzcdm;
    private static volatile l83<bq3> zzek;
    private jq3 zzcdg;
    private int zzcdi;
    private zp3 zzcdk;
    private b73<iq3> zzcdl = p83.h;
    private int zzdv;

    public static final class a extends s63.b<bq3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(bq3.zzcdm);
        }
    }

    static {
        bq3 bq3Var = new bq3();
        zzcdm = bq3Var;
        s63.s(bq3.class, bq3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new bq3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcdm, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003ဌ\u0001\u0004ဉ\u0002", new Object[]{"zzdv", "zzcdk", "zzcdl", iq3.class, "zzcdi", xq3.a, "zzcdg"});
            case 4:
                return zzcdm;
            case 5:
                l83<bq3> aVar = zzek;
                if (aVar == null) {
                    synchronized (bq3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcdm);
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
