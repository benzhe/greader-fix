package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzajm;
import java.util.List;

/* loaded from: classes.dex */
public final class vc0 extends qd3 implements tc0 {
    public vc0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // defpackage.tc0
    public final void O5(List<zzajm> list) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeTypedList(list);
        g0(1, parcelL0);
    }
}
