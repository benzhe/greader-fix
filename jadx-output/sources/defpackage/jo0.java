package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class jo0 extends sd3 implements go0 {
    public jo0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        bo0 do0Var;
        switch (i) {
            case 1:
                B1();
                break;
            case 2:
                P0();
                break;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    do0Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    do0Var = iInterfaceQueryLocalInterface instanceof bo0 ? (bo0) iInterfaceQueryLocalInterface : new do0(strongBinder);
                }
                S(do0Var);
                break;
            case 4:
                b6(parcel.readInt());
                break;
            case 5:
                F5((zzvh) rd3.a(parcel, zzvh.CREATOR));
                break;
            case 6:
                onAdImpression();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
