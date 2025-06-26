package defpackage;

import defpackage.sx3;

/* loaded from: classes.dex */
public final class f14 extends sx3<f14, a> implements zy3 {
    private static final f14 zzbfc;
    private static volatile gz3<f14> zzbg;
    private int zzbb;
    private int zzbfa = -1;
    private int zzbfb;

    public static final class a extends sx3.a<f14, a> implements zy3 {
        public a(h14 h14Var) {
            super(f14.zzbfc);
        }
    }

    public enum b implements vx3 {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);

        public static final wx3<b> A = new i14();
        public final int e;

        b(int i) {
            this.e = i;
        }

        @Override // defpackage.vx3
        public final int c() {
            return this.e;
        }
    }

    public enum c implements vx3 {
        NONE(-1),
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17);

        public static final wx3<c> y = new j14();
        public final int e;

        c(int i) {
            this.e = i;
        }

        @Override // defpackage.vx3
        public final int c() {
            return this.e;
        }
    }

    static {
        f14 f14Var = new f14();
        zzbfc = f14Var;
        sx3.f(f14.class, f14Var);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [gz3<f14>, sx3$b] */
    @Override // defpackage.sx3
    public final Object d(int i, Object obj, Object obj2) {
        gz3<f14> gz3Var;
        switch (h14.a[i - 1]) {
            case 1:
                return new f14();
            case 2:
                return new a(null);
            case 3:
                return new kz3(zzbfc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001", new Object[]{"zzbb", "zzbfa", c.y, "zzbfb", b.A});
            case 4:
                return zzbfc;
            case 5:
                gz3<f14> gz3Var2 = zzbg;
                gz3<f14> gz3Var3 = gz3Var2;
                if (gz3Var2 == null) {
                    synchronized (f14.class) {
                        gz3<f14> gz3Var4 = zzbg;
                        gz3Var = gz3Var4;
                        if (gz3Var4 == null) {
                            ?? bVar = new sx3.b(zzbfc);
                            zzbg = bVar;
                            gz3Var = bVar;
                        }
                    }
                    gz3Var3 = gz3Var;
                }
                return gz3Var3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
