package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class xq0 extends sd3 implements yq0 {
    public xq0() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ((pl0) this).l4(parcel.readString(), parcel.readString());
        } else if (i == 2) {
            ((pl0) this).e.onFailure(parcel.readString());
        } else {
            if (i != 3) {
                return false;
            }
            ((pl0) this).V(parcel.readString(), parcel.readString(), (Bundle) rd3.a(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
