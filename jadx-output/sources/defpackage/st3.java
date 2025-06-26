package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class st3 extends qd3 implements pt3 {
    public st3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // defpackage.pt3
    public final void onAppEvent(String str, String str2) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        g0(1, parcelL0);
    }
}
