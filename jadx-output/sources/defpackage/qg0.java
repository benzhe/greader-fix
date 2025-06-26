package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class qg0 extends qd3 implements og0 {
    public qg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // defpackage.og0
    public final x20 H() throws RemoteException {
        return jo.L(Z(1, l0()));
    }

    @Override // defpackage.og0
    public final boolean shouldDelegateInterscrollerEffect() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }
}
