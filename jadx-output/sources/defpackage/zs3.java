package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public abstract class zs3 extends sd3 implements at3 {
    public zs3() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            M0((zzvq) rd3.a(parcel, zzvq.CREATOR));
            parcel2.writeNoException();
        } else if (i == 2) {
            String mediationAdapterClassName = getMediationAdapterClassName();
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
        } else if (i == 3) {
            boolean zIsLoading = isLoading();
            parcel2.writeNoException();
            ClassLoader classLoader = rd3.a;
            parcel2.writeInt(zIsLoading ? 1 : 0);
        } else if (i == 4) {
            String strZzkl = zzkl();
            parcel2.writeNoException();
            parcel2.writeString(strZzkl);
        } else {
            if (i != 5) {
                return false;
            }
            D6((zzvq) rd3.a(parcel, zzvq.CREATOR), parcel.readInt());
            parcel2.writeNoException();
        }
        return true;
    }
}
