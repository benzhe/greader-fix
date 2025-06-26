package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class mt3 extends qd3 implements jt3 {
    public mt3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // defpackage.jt3
    public final IBinder Z4(x20 x20Var, zzvt zzvtVar, String str, hg0 hg0Var, int i, int i2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzvtVar);
        parcelL0.writeString(str);
        rd3.b(parcelL0, hg0Var);
        parcelL0.writeInt(204890000);
        parcelL0.writeInt(i2);
        Parcel parcelZ = Z(2, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        parcelZ.recycle();
        return strongBinder;
    }
}
