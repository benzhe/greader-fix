package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class mo0 extends sd3 implements no0 {
    public mo0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            O0();
        } else if (i == 2) {
            H4(parcel.readInt());
        } else {
            if (i != 3) {
                return false;
            }
            J1((zzvh) rd3.a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
