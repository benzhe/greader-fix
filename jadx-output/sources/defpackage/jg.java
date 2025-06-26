package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.MultiInstanceInvalidationService;
import defpackage.ig;

/* loaded from: classes.dex */
public abstract class jg extends Binder implements IInterface {
    public jg() {
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            int iG0 = ((MultiInstanceInvalidationService.b) this).g0(ig.a.Z(parcel.readStrongBinder()), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(iG0);
            return true;
        }
        if (i == 2) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            ((MultiInstanceInvalidationService.b) this).l0(ig.a.Z(parcel.readStrongBinder()), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
        if (i != 3) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
        }
        parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
        ((MultiInstanceInvalidationService.b) this).Z(parcel.readInt(), parcel.createStringArray());
        return true;
    }
}
