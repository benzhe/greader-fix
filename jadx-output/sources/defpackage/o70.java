package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class o70 extends qd3 implements m70 {
    public o70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // defpackage.m70
    public final String N0() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.m70
    public final List<u70> P5() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        ArrayList arrayList = parcelZ.readArrayList(rd3.a);
        parcelZ.recycle();
        return arrayList;
    }
}
