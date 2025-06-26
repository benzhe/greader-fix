package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class rn0 extends qd3 implements pn0 {
    public rn0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // defpackage.pn0
    public final void D5(gn0 gn0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, gn0Var);
        g0(5, parcelL0);
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdClosed() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdFailedToLoad(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(7, parcelL0);
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdLeftApplication() throws RemoteException {
        g0(6, l0());
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdLoaded() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoAdOpened() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoCompleted() throws RemoteException {
        g0(8, l0());
    }

    @Override // defpackage.pn0
    public final void onRewardedVideoStarted() throws RemoteException {
        g0(3, l0());
    }
}
