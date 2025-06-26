package defpackage;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* loaded from: classes.dex */
public final class ma0 extends n90 {
    public final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener e;

    public ma0(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.e = onUnifiedNativeAdLoadedListener;
    }

    @Override // defpackage.o90
    public final void V3(v90 v90Var) {
        this.e.onUnifiedNativeAdLoaded(new aa0(v90Var));
    }
}
