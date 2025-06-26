package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class ar0 extends qd3 implements yq0 {
    public ar0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // defpackage.yq0
    public final void V(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, bundle);
        g0(3, parcelL0);
    }

    @Override // defpackage.yq0
    public final void l4(String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        g0(1, parcelL0);
    }

    @Override // defpackage.yq0
    public final void onError(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(2, parcelL0);
    }
}
