package defpackage;

import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class rs3 extends qd3 implements ps3 {
    public rs3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // defpackage.ps3
    public final void onAdClicked() throws RemoteException {
        g0(1, l0());
    }
}
