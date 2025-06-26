package defpackage;

import defpackage.f14;

/* loaded from: classes.dex */
public final class j14 implements wx3<f14.c> {
    @Override // defpackage.wx3
    public final vx3 i(int i) {
        switch (i) {
            case -1:
                return f14.c.NONE;
            case 0:
                return f14.c.MOBILE;
            case 1:
                return f14.c.WIFI;
            case 2:
                return f14.c.MOBILE_MMS;
            case 3:
                return f14.c.MOBILE_SUPL;
            case 4:
                return f14.c.MOBILE_DUN;
            case 5:
                return f14.c.MOBILE_HIPRI;
            case 6:
                return f14.c.WIMAX;
            case 7:
                return f14.c.BLUETOOTH;
            case 8:
                return f14.c.DUMMY;
            case 9:
                return f14.c.ETHERNET;
            case 10:
                return f14.c.MOBILE_FOTA;
            case 11:
                return f14.c.MOBILE_IMS;
            case 12:
                return f14.c.MOBILE_CBS;
            case 13:
                return f14.c.WIFI_P2P;
            case 14:
                return f14.c.MOBILE_IA;
            case 15:
                return f14.c.MOBILE_EMERGENCY;
            case 16:
                return f14.c.PROXY;
            case 17:
                return f14.c.VPN;
            default:
                return null;
        }
    }
}
