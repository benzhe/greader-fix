package defpackage;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class lk0 extends qd3 implements jk0 {
    public lk0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // defpackage.jk0
    public final void d3() throws RemoteException {
        g0(3, l0());
    }

    @Override // defpackage.jk0
    public final void f0(Intent intent) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, intent);
        g0(1, parcelL0);
    }

    @Override // defpackage.jk0
    public final void h5(x20 x20Var, String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        g0(2, parcelL0);
    }
}
