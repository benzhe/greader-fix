package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class pv3 implements nv3, IInterface {
    public final IBinder e;
    public final String f = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";

    public pv3(IBinder iBinder) {
        this.e = iBinder;
    }

    public final Parcel Z() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.e;
    }

    @Override // defpackage.nv3
    public final boolean c() throws RemoteException {
        Parcel parcelG0 = g0(6, Z());
        int i = mv3.a;
        boolean z = parcelG0.readInt() != 0;
        parcelG0.recycle();
        return z;
    }

    public final Parcel g0(int i, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.e.transact(i, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e) {
                parcelObtain.recycle();
                throw e;
            }
        } finally {
            parcel.recycle();
        }
    }

    @Override // defpackage.nv3
    public final String n() throws RemoteException {
        Parcel parcelG0 = g0(1, Z());
        String string = parcelG0.readString();
        parcelG0.recycle();
        return string;
    }

    @Override // defpackage.nv3
    public final boolean v2(boolean z) throws RemoteException {
        Parcel parcelZ = Z();
        int i = mv3.a;
        parcelZ.writeInt(1);
        Parcel parcelG0 = g0(2, parcelZ);
        boolean z2 = parcelG0.readInt() != 0;
        parcelG0.recycle();
        return z2;
    }
}
