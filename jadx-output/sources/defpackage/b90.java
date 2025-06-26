package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class b90 extends qd3 implements z80 {
    public b90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // defpackage.z80
    public final void T1(m80 m80Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, m80Var);
        g0(1, parcelL0);
    }
}
