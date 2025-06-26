package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class y80 extends sd3 implements z80 {
    public y80() {
        super("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        m80 o80Var;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            o80Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
            o80Var = iInterfaceQueryLocalInterface instanceof m80 ? (m80) iInterfaceQueryLocalInterface : new o80(strongBinder);
        }
        ((la0) this).e.onContentAdLoaded(new r80(o80Var));
        parcel2.writeNoException();
        return true;
    }
}
