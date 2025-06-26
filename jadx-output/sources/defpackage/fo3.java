package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class fo3 extends qd3 implements do3 {
    public fo3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // defpackage.do3
    public final void G(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(3, parcelL0);
    }

    @Override // defpackage.do3
    public final void P() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.do3
    public final void T() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.do3
    public final void onAdImpression() throws RemoteException {
        g0(4, l0());
    }
}
