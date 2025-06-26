package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class io0 extends qd3 implements go0 {
    public io0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // defpackage.go0
    public final void B1() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.go0
    public final void F5(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(5, parcelL0);
    }

    @Override // defpackage.go0
    public final void P0() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.go0
    public final void S(bo0 bo0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, bo0Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.go0
    public final void b6(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(4, parcelL0);
    }

    @Override // defpackage.go0
    public final void onAdImpression() throws RemoteException {
        g0(6, l0());
    }
}
