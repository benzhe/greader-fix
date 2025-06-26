package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class ud3 extends sd3 implements vd3 {
    public static vd3 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        return iInterfaceQueryLocalInterface instanceof vd3 ? (vd3) iInterfaceQueryLocalInterface : new wd3(iBinder);
    }
}
