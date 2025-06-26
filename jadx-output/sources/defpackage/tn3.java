package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class tn3 extends bo3 {
    public final AppOpenAd.AppOpenAdLoadCallback e;
    public final String f;

    public tn3(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.e = appOpenAdLoadCallback;
        this.f = str;
    }

    @Override // defpackage.yn3
    public final void W1(xn3 xn3Var) {
        if (this.e != null) {
            vn3 vn3Var = new vn3(xn3Var, this.f);
            this.e.onAppOpenAdLoaded(vn3Var);
            this.e.onAdLoaded(vn3Var);
        }
    }

    @Override // defpackage.yn3
    public final void k1(zzvh zzvhVar) {
        if (this.e != null) {
            LoadAdError loadAdErrorC = zzvhVar.C();
            this.e.onAppOpenAdFailedToLoad(loadAdErrorC);
            this.e.onAdFailedToLoad(loadAdErrorC);
        }
    }

    @Override // defpackage.yn3
    public final void u4(int i) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.e;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i);
        }
    }
}
