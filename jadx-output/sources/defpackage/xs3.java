package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class xs3 extends qd3 implements vs3 {
    public xs3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // defpackage.vs3
    public final void Q(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(2, parcelL0);
    }

    @Override // defpackage.vs3
    public final void onAdLoaded() throws RemoteException {
        g0(1, l0());
    }
}
