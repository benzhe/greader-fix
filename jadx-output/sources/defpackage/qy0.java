package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class qy0 extends qd3 implements py0 {
    public qy0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.measurement.IMeasurementManager");
    }

    @Override // defpackage.py0
    public final void G0(x20 x20Var, ny0 ny0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, ny0Var);
        g0(2, parcelL0);
    }
}
