package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvv;

/* loaded from: classes.dex */
public final class ou3 extends qd3 implements mu3 {
    public ou3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // defpackage.mu3
    public final void x4(zzvv zzvvVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzvvVar);
        g0(1, parcelL0);
    }
}
