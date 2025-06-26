package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class ao3 extends qd3 implements yn3 {
    public ao3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // defpackage.yn3
    public final void W1(xn3 xn3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, xn3Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.yn3
    public final void k1(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(3, parcelL0);
    }

    @Override // defpackage.yn3
    public final void u4(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(2, parcelL0);
    }
}
