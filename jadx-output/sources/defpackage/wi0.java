package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class wi0 extends qd3 implements ti0 {
    public wi0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // defpackage.ti0
    public final void h0() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.ti0
    public final void j(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(3, parcelL0);
    }

    @Override // defpackage.ti0
    public final void l(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(4, parcelL0);
    }
}
