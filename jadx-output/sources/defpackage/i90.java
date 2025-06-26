package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class i90 extends qd3 implements g90 {
    public i90(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // defpackage.g90
    public final void b5(q80 q80Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, q80Var);
        g0(1, parcelL0);
    }
}
