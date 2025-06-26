package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class ft3 extends qd3 implements gt3 {
    public ft3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
    }

    @Override // defpackage.gt3
    public final IBinder p1(x20 x20Var, String str, hg0 hg0Var, int i) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(204890000);
        Parcel parcelZ = Z(1, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        parcelZ.recycle();
        return strongBinder;
    }
}
