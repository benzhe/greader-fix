package defpackage;

import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes.dex */
public final class hk0 extends n90 {
    public final NativeAd.OnNativeAdLoadedListener e;

    public hk0(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.e = onNativeAdLoadedListener;
    }

    @Override // defpackage.o90
    public final void V3(v90 v90Var) {
        this.e.onNativeAdLoaded(new bk0(v90Var));
    }
}
