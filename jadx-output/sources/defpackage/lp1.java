package defpackage;

import defpackage.lp3;

/* loaded from: classes.dex */
public final class lp1 implements cb3<lp3.a> {
    public final mb3<ll2> a;

    public lp1(mb3<ll2> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return this.a.get().o.a == 3 ? lp3.a.REWARDED_INTERSTITIAL : lp3.a.REWARD_BASED_VIDEO_AD;
    }
}
