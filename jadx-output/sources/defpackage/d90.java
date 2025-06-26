package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class d90 extends qd3 implements a90 {
    public d90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // defpackage.a90
    public final void Y(q80 q80Var, String str) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, q80Var);
        parcelL0.writeString(str);
        g0(1, parcelL0);
    }
}
