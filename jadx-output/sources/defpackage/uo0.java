package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class uo0 implements ks0 {
    public static final ks0 a = new uo0();

    @Override // defpackage.ks0
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return iInterfaceQueryLocalInterface instanceof lo0 ? (lo0) iInterfaceQueryLocalInterface : new ko0(iBinder);
    }
}
