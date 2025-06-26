package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class r90 extends qd3 implements p90 {
    public r90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    @Override // defpackage.p90
    public final boolean H5(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        Parcel parcelZ = Z(2, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }
}
