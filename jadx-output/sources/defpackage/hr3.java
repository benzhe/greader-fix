package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class hr3 extends ts3 {
    public final AdListener e;

    public hr3(AdListener adListener) {
        this.e = adListener;
    }

    @Override // defpackage.us3
    public final void U(zzvh zzvhVar) {
        this.e.onAdFailedToLoad(zzvhVar.C());
    }

    @Override // defpackage.us3
    public final void onAdClicked() {
        this.e.onAdClicked();
    }

    @Override // defpackage.us3
    public final void onAdClosed() {
        this.e.onAdClosed();
    }

    @Override // defpackage.us3
    public final void onAdFailedToLoad(int i) {
        this.e.onAdFailedToLoad(i);
    }

    @Override // defpackage.us3
    public final void onAdImpression() {
        this.e.onAdImpression();
    }

    @Override // defpackage.us3
    public final void onAdLeftApplication() {
        this.e.onAdLeftApplication();
    }

    @Override // defpackage.us3
    public final void onAdLoaded() {
        this.e.onAdLoaded();
    }

    @Override // defpackage.us3
    public final void onAdOpened() {
        this.e.onAdOpened();
    }
}
