package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class mi0 extends sd3 implements ni0 {
    public mi0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            ((g12) ((v12) this).e.c).onAdLoaded();
        } else if (i == 3) {
            ((g12) ((v12) this).e.c).t2(0, parcel.readString());
        } else {
            if (i != 4) {
                return false;
            }
            ((g12) ((v12) this).e.c).U((zzvh) rd3.a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
