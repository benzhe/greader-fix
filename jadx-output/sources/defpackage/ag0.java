package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class ag0 implements ks0 {
    public static final ks0 a = new ag0();

    @Override // defpackage.ks0
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = oy0.e;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return iInterfaceQueryLocalInterface instanceof py0 ? (py0) iInterfaceQueryLocalInterface : new qy0(iBinder);
    }
}
