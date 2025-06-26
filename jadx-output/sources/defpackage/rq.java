package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.apps.dashclock.api.ExtensionData;

/* loaded from: classes.dex */
public class rq implements sq {
    public IBinder e;

    public rq(IBinder iBinder) {
        this.e = iBinder;
    }

    @Override // defpackage.sq
    public void T6(ExtensionData extensionData) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.apps.dashclock.api.internal.IExtensionHost");
            if (extensionData != null) {
                parcelObtain.writeInt(1);
                extensionData.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.e.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.e;
    }

    @Override // defpackage.sq
    public void f1(boolean z) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.apps.dashclock.api.internal.IExtensionHost");
            parcelObtain.writeInt(z ? 1 : 0);
            this.e.transact(3, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
