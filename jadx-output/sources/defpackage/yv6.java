package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* loaded from: classes2.dex */
public final class yv6 extends AdListener {
    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        im7.e(loadAdError, "loadAdError");
        jy6.a("=> loadNavtiveAd::onAdFailedToLoad: " + loadAdError);
    }
}
