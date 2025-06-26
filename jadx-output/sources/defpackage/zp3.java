package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class zp3 extends s63<zp3, a> implements f83 {
    private static final zp3 zzcdh;
    private static volatile l83<zp3> zzek;
    private int zzcde;
    private jq3 zzcdg;
    private int zzdv;
    private String zzcdd = "";
    private x63 zzcdf = v63.h;

    public static final class a extends s63.b<zp3, a> implements f83 {
        public a(rq3 rq3Var) {
            super(zp3.zzcdh);
        }
    }

    static {
        zp3 zp3Var = new zp3();
        zzcdh = zp3Var;
        s63.s(zp3.class, zp3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new zp3();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzcdh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzdv", "zzcdd", "zzcde", xq3.a, "zzcdf", "zzcdg"});
            case 4:
                return zzcdh;
            case 5:
                l83<zp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (zp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcdh);
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
