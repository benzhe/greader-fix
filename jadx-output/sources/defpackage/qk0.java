package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class qk0 extends qd3 implements ok0 {
    public qk0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // defpackage.ok0
    public final jk0 zzc(x20 x20Var, hg0 hg0Var, int i) throws RemoteException {
        jk0 lk0Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(204890000);
        Parcel parcelZ = Z(1, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            lk0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            lk0Var = iInterfaceQueryLocalInterface instanceof jk0 ? (jk0) iInterfaceQueryLocalInterface : new lk0(strongBinder);
        }
        parcelZ.recycle();
        return lk0Var;
    }
}
