package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class in0 extends qd3 implements gn0 {
    public in0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // defpackage.gn0
    public final int getAmount() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        int i = parcelZ.readInt();
        parcelZ.recycle();
        return i;
    }

    @Override // defpackage.gn0
    public final String getType() throws RemoteException {
        Parcel parcelZ = Z(1, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }
}
