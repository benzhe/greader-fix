package defpackage;

import defpackage.s63;

/* loaded from: classes.dex */
public final class sp3 extends s63<sp3, b> implements f83 {
    private static final sp3 zzcap;
    private static volatile l83<sp3> zzek;
    private int zzcan;
    private hq3 zzcao;
    private int zzdv;

    public enum a implements w63 {
        AD_FORMAT_TYPE_UNSPECIFIED(0),
        BANNER(1),
        INTERSTITIAL(2),
        NATIVE_EXPRESS(3),
        NATIVE_CONTENT(4),
        NATIVE_APP_INSTALL(5),
        NATIVE_CUSTOM_TEMPLATE(6),
        DFP_BANNER(7),
        DFP_INTERSTITIAL(8),
        REWARD_BASED_VIDEO_AD(9),
        BANNER_SEARCH_ADS(10);

        public final int e;

        a(int i) {
            this.e = i;
        }

        public static a i(int i) {
            switch (i) {
                case 0:
                    return AD_FORMAT_TYPE_UNSPECIFIED;
                case 1:
                    return BANNER;
                case 2:
                    return INTERSTITIAL;
                case 3:
                    return NATIVE_EXPRESS;
                case 4:
                    return NATIVE_CONTENT;
                case 5:
                    return NATIVE_APP_INSTALL;
                case 6:
                    return NATIVE_CUSTOM_TEMPLATE;
                case 7:
                    return DFP_BANNER;
                case 8:
                    return DFP_INTERSTITIAL;
                case 9:
                    return REWARD_BASED_VIDEO_AD;
                case 10:
                    return BANNER_SEARCH_ADS;
                default:
                    return null;
            }
        }

        @Override // defpackage.w63
        public final int f() {
            return this.e;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
        }
    }

    public static final class b extends s63.b<sp3, b> implements f83 {
        public b(rq3 rq3Var) {
            super(sp3.zzcap);
        }
    }

    static {
        sp3 sp3Var = new sp3();
        zzcap = sp3Var;
        s63.s(sp3.class, sp3Var);
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new sp3();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzcap, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzdv", "zzcan", uq3.a, "zzcao"});
            case 4:
                return zzcap;
            case 5:
                l83<sp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (sp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzcap);
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
