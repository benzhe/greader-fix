package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class hh1 extends s63<hh1, a> implements f83 {
    private static volatile l83<hh1> zzek;
    private static final hh1 zzfm;
    private int zzdv;
    private String zzfg = "";
    private String zzfh = "";
    private String zzfi = "";
    private String zzfj = "";
    private String zzfk = "";
    private String zzfl = "";

    public static final class a extends s63.b<hh1, a> implements f83 {
        public a(hg1 hg1Var) {
            super(hh1.zzfm);
        }
    }

    static {
        hh1 hh1Var = new hh1();
        zzfm = hh1Var;
        s63.s(hh1.class, hh1Var);
    }

    public static hh1 y() {
        return zzfm;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (hg1.a[i - 1]) {
            case 1:
                return new hh1();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzfm, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzdv", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzfl"});
            case 4:
                return zzfm;
            case 5:
                l83<hh1> aVar = zzek;
                if (aVar == null) {
                    synchronized (hh1.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzfm);
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

    public final String x() {
        return this.zzfg;
    }
}
