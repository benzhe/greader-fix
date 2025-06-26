package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class cg4 extends j24 implements eg4 {
    public cg4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // defpackage.eg4
    public final int h() throws RemoteException {
        Parcel parcelL0 = l0(2, Z());
        int i = parcelL0.readInt();
        parcelL0.recycle();
        return i;
    }

    @Override // defpackage.eg4
    public final void o1(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        z34.b(parcelZ, bundle);
        parcelZ.writeLong(j);
        g0(1, parcelZ);
    }
}
