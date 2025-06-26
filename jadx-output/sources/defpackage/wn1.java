package defpackage;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class wn1 extends sd3 implements dd0 {
    public wn1() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel.readInt();
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.dd0
    public final void X2(int i) throws RemoteException {
    }

    @Override // defpackage.dd0
    public final void a4() throws RemoteException {
    }
}
