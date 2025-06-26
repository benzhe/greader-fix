package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class ag4 extends c34 implements bg4 {
    public ag4() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // defpackage.c34
    public final boolean Z(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        ((dd4) this).zzb((Bundle) z34.a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
