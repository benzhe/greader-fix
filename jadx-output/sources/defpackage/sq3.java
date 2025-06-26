package defpackage;

import defpackage.lp3;

/* loaded from: classes.dex */
public final class sq3 implements y63 {
    public static final y63 a = new sq3();

    @Override // defpackage.y63
    public final boolean k(int i) {
        lp3.a aVar;
        switch (i) {
            case 0:
                aVar = lp3.a.AD_INITIATER_UNSPECIFIED;
                break;
            case 1:
                aVar = lp3.a.BANNER;
                break;
            case 2:
                aVar = lp3.a.DFP_BANNER;
                break;
            case 3:
                aVar = lp3.a.INTERSTITIAL;
                break;
            case 4:
                aVar = lp3.a.DFP_INTERSTITIAL;
                break;
            case 5:
                aVar = lp3.a.NATIVE_EXPRESS;
                break;
            case 6:
                aVar = lp3.a.AD_LOADER;
                break;
            case 7:
                aVar = lp3.a.REWARD_BASED_VIDEO_AD;
                break;
            case 8:
                aVar = lp3.a.BANNER_SEARCH_ADS;
                break;
            case 9:
                aVar = lp3.a.GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                break;
            case 10:
                aVar = lp3.a.APP_OPEN;
                break;
            case 11:
                aVar = lp3.a.REWARDED_INTERSTITIAL;
                break;
            default:
                aVar = null;
                break;
        }
        return aVar != null;
    }
}
