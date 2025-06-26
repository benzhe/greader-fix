package defpackage;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class un3 extends go3 {
    public FullScreenContentCallback e;

    @Override // defpackage.do3
    public final void G(zzvh zzvhVar) {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.n());
        }
    }

    @Override // defpackage.do3
    public final void P() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // defpackage.do3
    public final void T() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    @Override // defpackage.do3
    public final void onAdImpression() {
        FullScreenContentCallback fullScreenContentCallback = this.e;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }
}
