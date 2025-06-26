package defpackage;

import defpackage.lp3;

/* loaded from: classes.dex */
public final class c82 implements cb3<lp3.a> {
    public final y72 a;

    public c82(y72 y72Var) {
        this.a = y72Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        String str = this.a.a;
        str.hashCode();
        switch (str) {
            case "NATIVE":
                return lp3.a.AD_LOADER;
            case "INTERSTITIAL":
                return lp3.a.INTERSTITIAL;
            case "REWARDED":
                return lp3.a.REWARD_BASED_VIDEO_AD;
            case "BANNER":
                return lp3.a.BANNER;
            default:
                return lp3.a.AD_INITIATER_UNSPECIFIED;
        }
    }
}
