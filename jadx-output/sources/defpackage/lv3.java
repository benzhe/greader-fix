package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class lv3 extends sd3 implements iu3 {
    public final String e;
    public final String f;

    public lv3(String str, String str2) {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        this.e = str;
        this.f = str2;
    }

    public static iu3 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return iInterfaceQueryLocalInterface instanceof iu3 ? (iu3) iInterfaceQueryLocalInterface : new ku3(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String str = this.e;
            parcel2.writeNoException();
            parcel2.writeString(str);
            return true;
        }
        if (i != 2) {
            return false;
        }
        String str2 = this.f;
        parcel2.writeNoException();
        parcel2.writeString(str2);
        return true;
    }

    @Override // defpackage.iu3
    public final String getDescription() throws RemoteException {
        return this.e;
    }

    @Override // defpackage.iu3
    public final String y6() throws RemoteException {
        return this.f;
    }
}
