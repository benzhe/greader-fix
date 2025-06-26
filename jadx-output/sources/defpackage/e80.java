package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class e80 extends sd3 implements f80 {
    public static final /* synthetic */ int e = 0;

    public e80() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            c0(x20.a.g0(parcel.readStrongBinder()));
        } else if (i == 2) {
            o5();
        } else {
            if (i != 3) {
                return false;
            }
            I(x20.a.g0(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
