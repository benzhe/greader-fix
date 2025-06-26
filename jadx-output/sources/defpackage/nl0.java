package defpackage;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public final class nl0 extends qd3 implements kl0 {
    public nl0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // defpackage.kl0
    public final void onError(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(2, parcelL0);
    }

    @Override // defpackage.kl0
    public final void w3(List<Uri> list) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeTypedList(list);
        g0(1, parcelL0);
    }
}
