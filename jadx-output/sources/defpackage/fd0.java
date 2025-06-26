package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class fd0 extends qd3 implements dd0 {
    public fd0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // defpackage.dd0
    public final void X2(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(2, parcelL0);
    }

    @Override // defpackage.dd0
    public final void a4() throws RemoteException {
        g0(1, l0());
    }
}
