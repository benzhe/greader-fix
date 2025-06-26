package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class kn0 extends qd3 implements hn0 {
    public kn0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    @Override // defpackage.hn0
    public final void O4(gn0 gn0Var, String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, gn0Var);
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        g0(2, parcelL0);
    }
}
