package defpackage;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class ot3 extends sd3 implements pt3 {
    public static final /* synthetic */ int e = 0;

    public ot3() {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        onAppEvent(parcel.readString(), parcel.readString());
        parcel2.writeNoException();
        return true;
    }
}
