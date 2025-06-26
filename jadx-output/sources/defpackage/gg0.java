package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class gg0 extends sd3 implements hg0 {
    public gg0() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static hg0 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return iInterfaceQueryLocalInterface instanceof hg0 ? (hg0) iInterfaceQueryLocalInterface : new jg0(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ig0 ig0VarB3 = ((eg0) this).B3(parcel.readString());
            parcel2.writeNoException();
            rd3.b(parcel2, ig0VarB3);
        } else if (i == 2) {
            boolean zW0 = ((eg0) this).W0(parcel.readString());
            parcel2.writeNoException();
            ClassLoader classLoader = rd3.a;
            parcel2.writeInt(zW0 ? 1 : 0);
        } else if (i == 3) {
            vi0 vi0VarH4 = ((eg0) this).h4(parcel.readString());
            parcel2.writeNoException();
            rd3.b(parcel2, vi0VarH4);
        } else {
            if (i != 4) {
                return false;
            }
            boolean zV1 = ((eg0) this).V1(parcel.readString());
            parcel2.writeNoException();
            ClassLoader classLoader2 = rd3.a;
            parcel2.writeInt(zV1 ? 1 : 0);
        }
        return true;
    }
}
