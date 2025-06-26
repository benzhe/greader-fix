package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class cj0 extends qd3 implements aj0 {
    public cj0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // defpackage.aj0
    public final void H6(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(3, parcelL0);
    }

    @Override // defpackage.aj0
    public final void onFailure(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(2, parcelL0);
    }

    @Override // defpackage.aj0
    public final void p5(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(1, parcelL0);
    }
}
