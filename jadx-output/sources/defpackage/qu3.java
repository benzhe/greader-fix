package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvv;

/* loaded from: classes.dex */
public abstract class qu3 extends sd3 implements mu3 {
    public qu3() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    public static mu3 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        return iInterfaceQueryLocalInterface instanceof mu3 ? (mu3) iInterfaceQueryLocalInterface : new ou3(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        ((c40) this).x4((zzvv) rd3.a(parcel, zzvv.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
