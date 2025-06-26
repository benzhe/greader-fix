package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavy;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class yn0 extends sd3 implements vn0 {
    public yn0() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static vn0 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return iInterfaceQueryLocalInterface instanceof vn0 ? (vn0) iInterfaceQueryLocalInterface : new xn0(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                J0(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 2:
                i1(x20.a.g0(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                K1(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 4:
                M5(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 5:
                u6(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 6:
                U3(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 7:
                I0(x20.a.g0(parcel.readStrongBinder()), (zzavy) rd3.a(parcel, zzavy.CREATOR));
                break;
            case 8:
                S4(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 9:
                h2(x20.a.g0(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                p2(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 11:
                T2(x20.a.g0(parcel.readStrongBinder()));
                break;
            case 12:
                zzb((Bundle) rd3.a(parcel, Bundle.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
