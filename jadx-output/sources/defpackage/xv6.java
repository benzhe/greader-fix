package defpackage;

import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes2.dex */
public final class xv6 implements NativeAd.OnNativeAdLoadedListener {
    public final /* synthetic */ pl7 a;

    public xv6(pl7 pl7Var) {
        this.a = pl7Var;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
    public final void onNativeAdLoaded(NativeAd nativeAd) {
        im7.e(nativeAd, "ad");
        this.a.invoke(nativeAd);
    }
}
