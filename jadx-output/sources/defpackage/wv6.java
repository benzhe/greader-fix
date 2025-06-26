package defpackage;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;

/* loaded from: classes2.dex */
public final class wv6 extends AdListener {
    public final /* synthetic */ AdView a;
    public final /* synthetic */ pl7 b;

    public wv6(AdView adView, AdSize adSize, pl7 pl7Var) {
        this.a = adView;
        this.b = pl7Var;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        im7.e(loadAdError, "loadAdError");
        jy6.a("=> loadBanner::onAdFailedToLoad: " + loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        this.b.invoke(this.a);
    }
}
