package defpackage;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* loaded from: classes.dex */
public final class pa0 extends t90 {
    public final UnifiedNativeAd.UnconfirmedClickListener e;

    public pa0(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.e = unconfirmedClickListener;
    }

    @Override // defpackage.u90
    public final void onUnconfirmedClickCancelled() {
        this.e.onUnconfirmedClickCancelled();
    }

    @Override // defpackage.u90
    public final void onUnconfirmedClickReceived(String str) {
        this.e.onUnconfirmedClickReceived(str);
    }
}
