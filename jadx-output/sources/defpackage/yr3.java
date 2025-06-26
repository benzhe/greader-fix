package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class yr3 extends ms3<fo0> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;
    public final /* synthetic */ hg0 d;

    public yr3(wr3 wr3Var, Context context, String str, hg0 hg0Var) {
        this.b = context;
        this.c = str;
        this.d = hg0Var;
    }

    @Override // defpackage.ms3
    public final fo0 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zzb(new y20(this.b), this.c, this.d, 204890000);
    }

    @Override // defpackage.ms3
    public final /* synthetic */ fo0 c() {
        wr3.d(this.b, "rewarded");
        return new z30();
    }

    @Override // defpackage.ms3
    public final fo0 d() throws RemoteException {
        Context context = this.b;
        try {
            IBinder iBinderL2 = ((lo0) c50.D1(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", uo0.a)).l2(new y20(context), this.c, this.d, 204890000);
            if (iBinderL2 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderL2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return iInterfaceQueryLocalInterface instanceof fo0 ? (fo0) iInterfaceQueryLocalInterface : new ho0(iBinderL2);
        } catch (RemoteException | js0 e) {
            is0.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
