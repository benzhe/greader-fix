package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class j80 extends qd3 implements g80 {
    public j80(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
    }

    @Override // defpackage.g80
    public final IBinder m5(x20 x20Var, x20 x20Var2, x20 x20Var3) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, x20Var2);
        rd3.b(parcelL0, x20Var3);
        Parcel parcelZ = Z(1, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        parcelZ.recycle();
        return strongBinder;
    }
}
