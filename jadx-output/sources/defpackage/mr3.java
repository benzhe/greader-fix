package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.z20;

/* loaded from: classes.dex */
public final class mr3 extends z20<jt3> {
    public mr3() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // defpackage.z20
    public final /* synthetic */ jt3 a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return iInterfaceQueryLocalInterface instanceof jt3 ? (jt3) iInterfaceQueryLocalInterface : new mt3(iBinder);
    }

    public final it3 c(Context context, zzvt zzvtVar, String str, hg0 hg0Var, int i) {
        try {
            IBinder iBinderZ4 = b(context).Z4(new y20(context), zzvtVar, str, hg0Var, 204890000, i);
            if (iBinderZ4 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZ4.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return iInterfaceQueryLocalInterface instanceof it3 ? (it3) iInterfaceQueryLocalInterface : new kt3(iBinderZ4);
        } catch (RemoteException | z20.a e) {
            is0.zzb("Could not create remote AdManager.", e);
            return null;
        }
    }
}
