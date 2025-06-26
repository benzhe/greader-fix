package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class dg4 extends c34 implements eg4 {
    public dg4() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // defpackage.c34
    public final boolean Z(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ((h34) this).o1(parcel.readString(), parcel.readString(), (Bundle) z34.a(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
        } else {
            if (i != 2) {
                return false;
            }
            int iH = ((h34) this).h();
            parcel2.writeNoException();
            parcel2.writeInt(iH);
        }
        return true;
    }
}
