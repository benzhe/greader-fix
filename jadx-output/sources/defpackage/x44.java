package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class x44 extends j24 implements u64 {
    public x44(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // defpackage.u64
    public final Bundle P2(Bundle bundle) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, bundle);
        Parcel parcelL0 = l0(1, parcelZ);
        Bundle bundle2 = (Bundle) z34.a(parcelL0, Bundle.CREATOR);
        parcelL0.recycle();
        return bundle2;
    }
}
