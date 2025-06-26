package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class x80 extends sd3 implements u80 {
    public x80() {
        super("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        i80 k80Var;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            k80Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            k80Var = iInterfaceQueryLocalInterface instanceof i80 ? (i80) iInterfaceQueryLocalInterface : new k80(strongBinder);
        }
        ((ia0) this).e.onAppInstallAdLoaded(new n80(k80Var));
        parcel2.writeNoException();
        return true;
    }
}
