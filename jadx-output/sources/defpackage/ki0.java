package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class ki0 extends qd3 implements ii0 {
    public ki0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // defpackage.ii0
    public final void N6(og0 og0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, og0Var);
        g0(4, parcelL0);
    }

    @Override // defpackage.ii0
    public final void j(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(2, parcelL0);
    }

    @Override // defpackage.ii0
    public final void l(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(3, parcelL0);
    }

    @Override // defpackage.ii0
    public final void o2(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(1, parcelL0);
    }
}
