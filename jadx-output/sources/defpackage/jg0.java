package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class jg0 extends qd3 implements hg0 {
    public jg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // defpackage.hg0
    public final ig0 B3(String str) throws RemoteException {
        ig0 kg0Var;
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        Parcel parcelZ = Z(1, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            kg0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            kg0Var = iInterfaceQueryLocalInterface instanceof ig0 ? (ig0) iInterfaceQueryLocalInterface : new kg0(strongBinder);
        }
        parcelZ.recycle();
        return kg0Var;
    }

    @Override // defpackage.hg0
    public final boolean V1(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        Parcel parcelZ = Z(4, parcelL0);
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.hg0
    public final boolean W0(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        Parcel parcelZ = Z(2, parcelL0);
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.hg0
    public final vi0 h4(String str) throws RemoteException {
        vi0 xi0Var;
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        Parcel parcelZ = Z(3, parcelL0);
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i = yi0.e;
        if (strongBinder == null) {
            xi0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
            xi0Var = iInterfaceQueryLocalInterface instanceof vi0 ? (vi0) iInterfaceQueryLocalInterface : new xi0(strongBinder);
        }
        parcelZ.recycle();
        return xi0Var;
    }
}
