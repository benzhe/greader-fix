package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class ro0 extends qd3 implements oo0 {
    public ro0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    @Override // defpackage.oo0
    public final void G1(bo0 bo0Var, String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, bo0Var);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        g0(2, parcelL0);
    }
}
