package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class h80 extends qd3 implements f80 {
    public h80(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // defpackage.f80
    public final void I(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.f80
    public final void c0(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.f80
    public final void o5() throws RemoteException {
        g0(2, l0());
    }
}
