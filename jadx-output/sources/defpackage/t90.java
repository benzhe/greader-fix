package defpackage;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class t90 extends sd3 implements u90 {
    public t90() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onUnconfirmedClickReceived(parcel.readString());
        } else {
            if (i != 2) {
                return false;
            }
            onUnconfirmedClickCancelled();
        }
        parcel2.writeNoException();
        return true;
    }
}
