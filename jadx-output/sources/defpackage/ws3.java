package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class ws3 extends qd3 implements us3 {
    public ws3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // defpackage.us3
    public final void U(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(8, parcelL0);
    }

    @Override // defpackage.us3
    public final void onAdClicked() throws RemoteException {
        g0(6, l0());
    }

    @Override // defpackage.us3
    public final void onAdClosed() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.us3
    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(2, parcelL0);
    }

    @Override // defpackage.us3
    public final void onAdImpression() throws RemoteException {
        g0(7, l0());
    }

    @Override // defpackage.us3
    public final void onAdLeftApplication() throws RemoteException {
        g0(3, l0());
    }

    @Override // defpackage.us3
    public final void onAdLoaded() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.us3
    public final void onAdOpened() throws RemoteException {
        g0(5, l0());
    }
}
