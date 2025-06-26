package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class zi0 extends sd3 implements aj0 {
    public zi0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ((r52) this).p5(parcel.readString());
        } else if (i == 2) {
            ((r52) this).onFailure(parcel.readString());
        } else {
            if (i != 3) {
                return false;
            }
            ((r52) this).H6((zzvh) rd3.a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
