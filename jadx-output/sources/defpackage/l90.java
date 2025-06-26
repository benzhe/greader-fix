package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class l90 extends qd3 implements j90 {
    public l90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // defpackage.j90
    public final void G6(it3 it3Var, x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, it3Var);
        rd3.b(parcelL0, x20Var);
        g0(1, parcelL0);
    }
}
