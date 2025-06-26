package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class v50 extends qd3 implements t50 {
    public v50(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // defpackage.t50
    public final void p6(s50 s50Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, s50Var);
        g0(1, parcelL0);
    }
}
