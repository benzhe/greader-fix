package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class ds3 implements ks0 {
    public static final ks0 a = new ds3();

    @Override // defpackage.ks0
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = dr0.e;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
        return iInterfaceQueryLocalInterface instanceof er0 ? (er0) iInterfaceQueryLocalInterface : new fr0(iBinder);
    }
}
