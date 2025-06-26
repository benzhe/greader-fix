package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvx;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class tu3 extends qd3 implements ru3 {
    public tu3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // defpackage.ru3
    public final String P4() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.ru3
    public final List<zzvx> T3() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ArrayList arrayListCreateTypedArrayList = parcelZ.createTypedArrayList(zzvx.CREATOR);
        parcelZ.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.ru3
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel parcelZ = Z(1, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }
}
