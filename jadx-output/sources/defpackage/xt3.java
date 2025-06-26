package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class xt3 extends sd3 implements yt3 {
    public xt3() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzvh zzvhVar = (zzvh) rd3.a(parcel, zzvh.CREATOR);
            FullScreenContentCallback fullScreenContentCallback = ((qs3) this).e;
            if (fullScreenContentCallback != null) {
                fullScreenContentCallback.onAdFailedToShowFullScreenContent(zzvhVar.n());
            }
        } else if (i == 2) {
            FullScreenContentCallback fullScreenContentCallback2 = ((qs3) this).e;
            if (fullScreenContentCallback2 != null) {
                fullScreenContentCallback2.onAdShowedFullScreenContent();
            }
        } else if (i == 3) {
            FullScreenContentCallback fullScreenContentCallback3 = ((qs3) this).e;
            if (fullScreenContentCallback3 != null) {
                fullScreenContentCallback3.onAdDismissedFullScreenContent();
            }
        } else {
            if (i != 4) {
                return false;
            }
            FullScreenContentCallback fullScreenContentCallback4 = ((qs3) this).e;
            if (fullScreenContentCallback4 != null) {
                fullScreenContentCallback4.onAdImpression();
            }
        }
        parcel2.writeNoException();
        return true;
    }
}
