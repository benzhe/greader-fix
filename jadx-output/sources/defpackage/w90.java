package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class w90 extends qd3 implements u90 {
    public w90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // defpackage.u90
    public final void onUnconfirmedClickCancelled() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.u90
    public final void onUnconfirmedClickReceived(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(1, parcelL0);
    }
}
