package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzajm;
import defpackage.gv3;

/* loaded from: classes.dex */
public abstract class sc0 extends sd3 implements tc0 {
    public sc0() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        ((gv3.a) this).O5(parcel.createTypedArrayList(zzajm.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
