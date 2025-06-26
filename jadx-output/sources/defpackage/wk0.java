package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class wk0 extends sd3 implements xk0 {
    public wk0() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public static xk0 zzaj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return iInterfaceQueryLocalInterface instanceof xk0 ? (xk0) iInterfaceQueryLocalInterface : new zk0(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                onCreate((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                onRestart();
                parcel2.writeNoException();
                return true;
            case 3:
                onStart();
                parcel2.writeNoException();
                return true;
            case 4:
                onResume();
                parcel2.writeNoException();
                return true;
            case 5:
                onPause();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle = (Bundle) rd3.a(parcel, Bundle.CREATOR);
                onSaveInstanceState(bundle);
                parcel2.writeNoException();
                rd3.d(parcel2, bundle);
                return true;
            case 7:
                onStop();
                parcel2.writeNoException();
                return true;
            case 8:
                onDestroy();
                parcel2.writeNoException();
                return true;
            case 9:
                zzdq();
                parcel2.writeNoException();
                return true;
            case 10:
                onBackPressed();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zZzwh = zzwh();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(zZzwh ? 1 : 0);
                return true;
            case 12:
                onActivityResult(parcel.readInt(), parcel.readInt(), (Intent) rd3.a(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzae(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                onUserLeaveHint();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
