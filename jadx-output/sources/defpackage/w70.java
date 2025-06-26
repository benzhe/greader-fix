package defpackage;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class w70 extends qd3 implements u70 {
    public w70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // defpackage.u70
    public final double O3() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        double d = parcelZ.readDouble();
        parcelZ.recycle();
        return d;
    }

    @Override // defpackage.u70
    public final int getHeight() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        int i = parcelZ.readInt();
        parcelZ.recycle();
        return i;
    }

    @Override // defpackage.u70
    public final int getWidth() throws RemoteException {
        Parcel parcelZ = Z(4, l0());
        int i = parcelZ.readInt();
        parcelZ.recycle();
        return i;
    }

    @Override // defpackage.u70
    public final Uri i0() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        Uri uri = (Uri) rd3.a(parcelZ, Uri.CREATOR);
        parcelZ.recycle();
        return uri;
    }

    @Override // defpackage.u70
    public final x20 q2() throws RemoteException {
        return jo.L(Z(1, l0()));
    }
}
