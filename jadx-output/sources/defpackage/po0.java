package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class po0 extends qd3 implements no0 {
    public po0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // defpackage.no0
    public final void H4(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(2, parcelL0);
    }

    @Override // defpackage.no0
    public final void J1(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(3, parcelL0);
    }

    @Override // defpackage.no0
    public final void O0() throws RemoteException {
        g0(1, l0());
    }
}
