package defpackage;

import defpackage.s63;
import java.util.Objects;

/* loaded from: classes.dex */
public final class lp3 extends s63<lp3, b> implements f83 {
    private static final lp3 zzbzk;
    private static volatile l83<lp3> zzek;
    private int zzbyz;
    private int zzbza = 1000;
    private tp3 zzbzb;
    private up3 zzbzc;
    private b73<sp3> zzbzd;
    private vp3 zzbze;
    private fq3 zzbzf;
    private dq3 zzbzg;
    private aq3 zzbzh;
    private bq3 zzbzi;
    private b73<lq3> zzbzj;
    private int zzdv;

    public enum a implements w63 {
        AD_INITIATER_UNSPECIFIED(0),
        BANNER(1),
        DFP_BANNER(2),
        INTERSTITIAL(3),
        DFP_INTERSTITIAL(4),
        NATIVE_EXPRESS(5),
        AD_LOADER(6),
        REWARD_BASED_VIDEO_AD(7),
        BANNER_SEARCH_ADS(8),
        GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
        APP_OPEN(10),
        REWARDED_INTERSTITIAL(11);

        public final int e;

        a(int i) {
            this.e = i;
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

    public static final class b extends s63.b<lp3, b> implements f83 {
        public b() {
            super(lp3.zzbzk);
        }

        public b(rq3 rq3Var) {
            super(lp3.zzbzk);
        }
    }

    static {
        lp3 lp3Var = new lp3();
        zzbzk = lp3Var;
        s63.s(lp3.class, lp3Var);
    }

    public lp3() {
        p83<Object> p83Var = p83.h;
        this.zzbzd = p83Var;
        this.zzbzj = p83Var;
    }

    public static lp3 A() {
        return zzbzk;
    }

    public static void x(lp3 lp3Var, a aVar) {
        Objects.requireNonNull(lp3Var);
        lp3Var.zzbyz = aVar.e;
        lp3Var.zzdv |= 1;
    }

    public static void y(lp3 lp3Var, up3 up3Var) {
        Objects.requireNonNull(lp3Var);
        lp3Var.zzbzc = up3Var;
        lp3Var.zzdv |= 8;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (rq3.a[i - 1]) {
            case 1:
                return new lp3();
            case 2:
                return new b(null);
            case 3:
                return new r83(zzbzk, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007ဌ\u0000\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzdv", "zzbyz", sq3.a, "zzbza", xq3.a, "zzbzb", "zzbzc", "zzbzd", sp3.class, "zzbze", "zzbzf", "zzbzg", "zzbzh", "zzbzi", "zzbzj", lq3.class});
            case 4:
                return zzbzk;
            case 5:
                l83<lp3> aVar = zzek;
                if (aVar == null) {
                    synchronized (lp3.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzbzk);
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

    public final up3 z() {
        up3 up3Var = this.zzbzc;
        return up3Var == null ? up3.y() : up3Var;
    }
}
