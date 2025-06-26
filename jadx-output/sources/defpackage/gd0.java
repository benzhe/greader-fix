package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class gd0 extends qd3 implements ed0 {
    public gd0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // defpackage.ed0
    public final void M4(zzvh zzvhVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvhVar);
        g0(3, parcelL0);
    }

    @Override // defpackage.ed0
    public final void P1(zc0 zc0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, zc0Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.ed0
    public final void Y5(int i) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        g0(2, parcelL0);
    }
}
