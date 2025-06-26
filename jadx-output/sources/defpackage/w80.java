package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class w80 extends qd3 implements u80 {
    public w80(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // defpackage.u80
    public final void P3(i80 i80Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, i80Var);
        g0(1, parcelL0);
    }
}
