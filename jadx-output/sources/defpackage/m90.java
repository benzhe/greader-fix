package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class m90 extends sd3 implements j90 {
    public m90() {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        G6(ht3.zzc(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
