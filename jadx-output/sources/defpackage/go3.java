package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class go3 extends sd3 implements do3 {
    public go3() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            FullScreenContentCallback fullScreenContentCallback = ((un3) this).e;
            if (fullScreenContentCallback != null) {
                fullScreenContentCallback.onAdShowedFullScreenContent();
            }
        } else if (i == 2) {
            FullScreenContentCallback fullScreenContentCallback2 = ((un3) this).e;
            if (fullScreenContentCallback2 != null) {
                fullScreenContentCallback2.onAdDismissedFullScreenContent();
            }
        } else if (i == 3) {
            ((un3) this).G((zzvh) rd3.a(parcel, zzvh.CREATOR));
        } else {
            if (i != 4) {
                return false;
            }
            FullScreenContentCallback fullScreenContentCallback3 = ((un3) this).e;
            if (fullScreenContentCallback3 != null) {
                fullScreenContentCallback3.onAdImpression();
            }
        }
        parcel2.writeNoException();
        return true;
    }
}
