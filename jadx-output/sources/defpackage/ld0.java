package defpackage;

import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class ld0 extends hd0 {
    public final InstreamAd.InstreamAdLoadCallback e;

    public ld0(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        this.e = instreamAdLoadCallback;
    }

    @Override // defpackage.ed0
    public final void M4(zzvh zzvhVar) {
        this.e.onInstreamAdFailedToLoad(zzvhVar.C());
    }

    @Override // defpackage.ed0
    public final void P1(zc0 zc0Var) {
        this.e.onInstreamAdLoaded(new jd0(zc0Var));
    }

    @Override // defpackage.ed0
    public final void Y5(int i) {
        this.e.onInstreamAdFailedToLoad(i);
    }
}
