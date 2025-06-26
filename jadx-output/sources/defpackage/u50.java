package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class u50 extends qd3 implements s50 {
    public u50(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // defpackage.s50
    public final void R1(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.s50
    public final String e5() throws RemoteException {
        Parcel parcelZ = Z(1, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.s50
    public final String getContent() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.s50
    public final void recordClick() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.s50
    public final void recordImpression() throws RemoteException {
        g0(5, l0());
    }
}
