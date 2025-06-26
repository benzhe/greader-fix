package defpackage;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class qs3 extends xt3 {
    public final FullScreenContentCallback e;

    public qs3(FullScreenContentCallback fullScreenContentCallback) {
        this.e = fullScreenContentCallback;
    }

    @Override // defpackage.yt3
    public final void G(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.n());
        }
    }

    @Override // defpackage.yt3
    public final void P() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // defpackage.yt3
    public final void T() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // defpackage.yt3
    public final void onAdImpression() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
