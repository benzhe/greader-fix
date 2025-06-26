package defpackage;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class ol0 extends sd3 implements kl0 {
    public ol0() {
        super("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    public static kl0 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        return iInterfaceQueryLocalInterface instanceof kl0 ? (kl0) iInterfaceQueryLocalInterface : new nl0(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            w3(parcel.createTypedArrayList(Uri.CREATOR));
        } else {
            if (i != 2) {
                return false;
            }
            onError(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
