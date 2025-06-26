package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class ys3 extends sd3 implements vs3 {
    public ys3() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AdT adt;
        if (i == 1) {
            kr3 kr3Var = (kr3) this;
            AdLoadCallback<AdT> adLoadCallback = kr3Var.e;
            if (adLoadCallback != 0 && (adt = kr3Var.f) != 0) {
                adLoadCallback.onAdLoaded(adt);
            }
        } else {
            if (i != 2) {
                return false;
            }
            zzvh zzvhVar = (zzvh) rd3.a(parcel, zzvh.CREATOR);
            AdLoadCallback<AdT> adLoadCallback2 = ((kr3) this).e;
            if (adLoadCallback2 != 0) {
                adLoadCallback2.onAdFailedToLoad(zzvhVar.C());
            }
        }
        parcel2.writeNoException();
        return true;
    }
}
