package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class q90 extends qd3 implements o90 {
    public q90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // defpackage.o90
    public final void V3(v90 v90Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, v90Var);
        g0(1, parcelL0);
    }
}
