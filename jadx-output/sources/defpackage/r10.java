package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class r10 extends d24 implements q10 {
    public r10(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // defpackage.q10
    public final x20 b() throws RemoteException {
        return jo.L(g0(1, Z()));
    }

    @Override // defpackage.q10
    public final int c() throws RemoteException {
        Parcel parcelG0 = g0(2, Z());
        int i = parcelG0.readInt();
        parcelG0.recycle();
        return i;
    }
}
