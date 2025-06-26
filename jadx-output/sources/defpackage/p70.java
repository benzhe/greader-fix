package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public abstract class p70 extends sd3 implements m70 {
    public p70() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    public static m70 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return iInterfaceQueryLocalInterface instanceof m70 ? (m70) iInterfaceQueryLocalInterface : new o70(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            String str = ((g70) this).e;
            parcel2.writeNoException();
            parcel2.writeString(str);
            return true;
        }
        if (i != 3) {
            return false;
        }
        List<u70> list = ((g70) this).g;
        parcel2.writeNoException();
        parcel2.writeList(list);
        return true;
    }
}
