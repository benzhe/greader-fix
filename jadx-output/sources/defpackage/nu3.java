package defpackage;

import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class nu3 extends qd3 implements lu3 {
    public nu3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // defpackage.lu3
    public final void onAdMetadataChanged() throws RemoteException {
        g0(1, l0());
    }
}
