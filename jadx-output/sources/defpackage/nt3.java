package defpackage;

import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class nt3 extends qd3 implements lt3 {
    public nt3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // defpackage.lt3
    public final void onAdMetadataChanged() throws RemoteException {
        g0(1, l0());
    }
}
