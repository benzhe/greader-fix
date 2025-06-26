package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zf4 extends j24 implements bg4 {
    public zf4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // defpackage.bg4
    public final void zzb(Bundle bundle) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, bundle);
        g0(1, parcelZ);
    }
}
