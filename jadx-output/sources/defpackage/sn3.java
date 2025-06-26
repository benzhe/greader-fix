package defpackage;

import android.os.Parcel;
import com.google.android.gms.ads.appopen.AppOpenAdPresentationCallback;

@Deprecated
/* loaded from: classes.dex */
public final class sn3 extends sd3 implements co3 {
    public final AppOpenAdPresentationCallback e;

    public sn3(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
        this.e = appOpenAdPresentationCallback;
    }

    @Override // defpackage.co3
    public final void F1() {
        this.e.onAppOpenAdClosed();
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        this.e.onAppOpenAdClosed();
        parcel2.writeNoException();
        return true;
    }
}
