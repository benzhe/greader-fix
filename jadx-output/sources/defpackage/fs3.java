package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class fs3 implements ks0 {
    public static final ks0 a = new fs3();

    @Override // defpackage.ks0
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i = nk0.e;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        return iInterfaceQueryLocalInterface instanceof ok0 ? (ok0) iInterfaceQueryLocalInterface : new qk0(iBinder);
    }
}
