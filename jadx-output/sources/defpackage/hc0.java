package defpackage;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class hc0 extends sd3 implements ec0 {
    public hc0() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        ((kc0) this).e.a((ParcelFileDescriptor) rd3.a(parcel, ParcelFileDescriptor.CREATOR));
        return true;
    }
}
