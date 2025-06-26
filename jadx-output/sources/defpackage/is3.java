package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.z20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class is3 extends ms3<zt3> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ wr3 c;

    public is3(wr3 wr3Var, Context context) {
        this.c = wr3Var;
        this.b = context;
    }

    @Override // defpackage.ms3
    public final zt3 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zza(new y20(this.b), 204890000);
    }

    @Override // defpackage.ms3
    public final /* synthetic */ zt3 c() {
        wr3.d(this.b, "mobile_ads_settings");
        return new v30();
    }

    @Override // defpackage.ms3
    public final zt3 d() throws RemoteException {
        m30 m30Var = this.c.c;
        Context context = this.b;
        Objects.requireNonNull(m30Var);
        try {
            IBinder iBinderO6 = m30Var.b(context).o6(new y20(context), 204890000);
            if (iBinderO6 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderO6.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return iInterfaceQueryLocalInterface instanceof zt3 ? (zt3) iInterfaceQueryLocalInterface : new bu3(iBinderO6);
        } catch (RemoteException | z20.a e) {
            is0.zzd("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
