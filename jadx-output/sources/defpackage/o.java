package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.m;

/* loaded from: classes.dex */
public abstract class o extends Binder implements IInterface {
    public o() {
        attachInterface(this, "android.support.customtabs.IPostMessageService");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            parcel.enforceInterface("android.support.customtabs.IPostMessageService");
            m.a.Z(parcel.readStrongBinder()).n6(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
        if (i != 3) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("android.support.customtabs.IPostMessageService");
            return true;
        }
        parcel.enforceInterface("android.support.customtabs.IPostMessageService");
        m.a.Z(parcel.readStrongBinder()).c6(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
        parcel2.writeNoException();
        return true;
    }
}
