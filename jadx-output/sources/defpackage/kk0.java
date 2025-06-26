package defpackage;

import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes.dex */
public final class kk0 extends t90 {
    public final NativeAd.UnconfirmedClickListener e;

    public kk0(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
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
