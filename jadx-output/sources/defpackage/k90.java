package defpackage;

import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k90 extends qd3 implements h90 {
    public k90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
    }

    @Override // defpackage.h90
    public final void l6() throws RemoteException {
        g0(2, l0());
    }
}
