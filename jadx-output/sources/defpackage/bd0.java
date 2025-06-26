package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class bd0 extends qd3 implements zc0 {
    public bd0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // defpackage.zc0
    public final void G4(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(6, parcelL0);
    }

    @Override // defpackage.zc0
    public final t70 a0() throws RemoteException {
        t70 v70Var;
        Parcel parcelZ = Z(7, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        int i = s70.e;
        if (strongBinder == null) {
            v70Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            v70Var = iInterfaceQueryLocalInterface instanceof t70 ? (t70) iInterfaceQueryLocalInterface : new v70(strongBinder);
        }
        parcelZ.recycle();
        return v70Var;
    }

    @Override // defpackage.zc0
    public final void destroy() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.zc0
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }
}
