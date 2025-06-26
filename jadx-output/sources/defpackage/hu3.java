package defpackage;

import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class hu3 extends qd3 implements fu3 {
    public hu3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // defpackage.fu3
    public final void onAdMuted() throws RemoteException {
        g0(1, l0());
    }
}
