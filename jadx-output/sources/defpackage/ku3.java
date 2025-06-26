package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class ku3 extends qd3 implements iu3 {
    public ku3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // defpackage.iu3
    public final String getDescription() throws RemoteException {
        Parcel parcelZ = Z(1, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.iu3
    public final String y6() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }
}
