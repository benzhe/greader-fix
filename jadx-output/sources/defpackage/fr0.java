package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class fr0 extends qd3 implements er0 {
    public fr0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // defpackage.er0
    public final zq0 s0(x20 x20Var, hg0 hg0Var, int i) throws RemoteException {
        zq0 br0Var;
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(204890000);
        Parcel parcelZ = Z(2, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            br0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            br0Var = iInterfaceQueryLocalInterface instanceof zq0 ? (zq0) iInterfaceQueryLocalInterface : new br0(strongBinder);
        }
        parcelZ.recycle();
        return br0Var;
    }
}
