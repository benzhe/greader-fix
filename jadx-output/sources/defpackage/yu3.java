package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class yu3 extends qd3 implements xu3 {
    public yu3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // defpackage.xu3
    public final void X() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.xu3
    public final void onVideoPause() throws RemoteException {
        g0(3, l0());
    }

    @Override // defpackage.xu3
    public final void onVideoPlay() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.xu3
    public final void onVideoStart() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.xu3
    public final void u0(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(5, parcelL0);
    }
}
