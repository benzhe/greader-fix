package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class du3 extends qd3 implements eu3 {
    public du3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
    }

    @Override // defpackage.eu3
    public final IBinder o6(x20 x20Var, int i) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeInt(204890000);
        Parcel parcelZ = Z(1, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        parcelZ.recycle();
        return strongBinder;
    }
}
