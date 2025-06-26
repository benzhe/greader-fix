package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zk0 extends qd3 implements xk0 {
    public zk0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // defpackage.xk0
    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeInt(i);
        parcelL0.writeInt(i2);
        rd3.c(parcelL0, intent);
        g0(12, parcelL0);
    }

    @Override // defpackage.xk0
    public final void onBackPressed() throws RemoteException {
        g0(10, l0());
    }

    @Override // defpackage.xk0
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        g0(1, parcelL0);
    }

    @Override // defpackage.xk0
    public final void onDestroy() throws RemoteException {
        g0(8, l0());
    }

    @Override // defpackage.xk0
    public final void onPause() throws RemoteException {
        g0(5, l0());
    }

    @Override // defpackage.xk0
    public final void onRestart() throws RemoteException {
        g0(2, l0());
    }

    @Override // defpackage.xk0
    public final void onResume() throws RemoteException {
        g0(4, l0());
    }

    @Override // defpackage.xk0
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, bundle);
        Parcel parcelZ = Z(6, parcelL0);
        if (parcelZ.readInt() != 0) {
            bundle.readFromParcel(parcelZ);
        }
        parcelZ.recycle();
    }

    @Override // defpackage.xk0
    public final void onStart() throws RemoteException {
        g0(3, l0());
    }

    @Override // defpackage.xk0
    public final void onStop() throws RemoteException {
        g0(7, l0());
    }

    @Override // defpackage.xk0
    public final void onUserLeaveHint() throws RemoteException {
        g0(14, l0());
    }

    @Override // defpackage.xk0
    public final void zzae(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(13, parcelL0);
    }

    @Override // defpackage.xk0
    public final void zzdq() throws RemoteException {
        g0(9, l0());
    }

    @Override // defpackage.xk0
    public final boolean zzwh() throws RemoteException {
        Parcel parcelZ = Z(11, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }
}
