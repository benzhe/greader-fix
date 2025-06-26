package defpackage;

import defpackage.f14;

/* loaded from: classes.dex */
public final class i14 implements wx3<f14.b> {
    @Override // defpackage.wx3
    public final vx3 i(int i) {
        if (i == 100) {
            return f14.b.COMBINED;
        }
        switch (i) {
            case 0:
                return f14.b.UNKNOWN_MOBILE_SUBTYPE;
            case 1:
                return f14.b.GPRS;
            case 2:
                return f14.b.EDGE;
            case 3:
                return f14.b.UMTS;
            case 4:
                return f14.b.CDMA;
            case 5:
                return f14.b.EVDO_0;
            case 6:
                return f14.b.EVDO_A;
            case 7:
                return f14.b.RTT;
            case 8:
                return f14.b.HSDPA;
            case 9:
                return f14.b.HSUPA;
            case 10:
                return f14.b.HSPA;
            case 11:
                return f14.b.IDEN;
            case 12:
                return f14.b.EVDO_B;
            case 13:
                return f14.b.LTE;
            case 14:
                return f14.b.EHRPD;
            case 15:
                return f14.b.HSPAP;
            case 16:
                return f14.b.GSM;
            case 17:
                return f14.b.TD_SCDMA;
            case 18:
                return f14.b.IWLAN;
            case 19:
                return f14.b.LTE_CA;
            default:
                return null;
        }
    }
}
