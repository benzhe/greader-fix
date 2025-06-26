package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class hd0 extends sd3 implements ed0 {
    public hd0() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zc0 bd0Var;
        if (i == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                bd0Var = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
                bd0Var = iInterfaceQueryLocalInterface instanceof zc0 ? (zc0) iInterfaceQueryLocalInterface : new bd0(strongBinder);
            }
            ((ld0) this).e.onInstreamAdLoaded(new jd0(bd0Var));
        } else if (i == 2) {
            ((ld0) this).e.onInstreamAdFailedToLoad(parcel.readInt());
        } else {
            if (i != 3) {
                return false;
            }
            ((ld0) this).e.onInstreamAdFailedToLoad(((zzvh) rd3.a(parcel, zzvh.CREATOR)).C());
        }
        parcel2.writeNoException();
        return true;
    }
}
