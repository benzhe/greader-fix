package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class rc0 extends qd3 implements pc0 {
    public rc0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // defpackage.pc0
    public final void onInitializationFailed(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(3, parcelL0);
    }

    @Override // defpackage.pc0
    public final void onInitializationSucceeded() throws RemoteException {
        g0(2, l0());
    }
}
