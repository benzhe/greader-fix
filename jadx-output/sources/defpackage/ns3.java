package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.z20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ns3 extends ms3<jn0> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ hg0 c;
    public final /* synthetic */ wr3 d;

    public ns3(wr3 wr3Var, Context context, hg0 hg0Var) {
        this.d = wr3Var;
        this.b = context;
        this.c = hg0Var;
    }

    @Override // defpackage.ms3
    public final jn0 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zza(new y20(this.b), this.c, 204890000);
    }

    @Override // defpackage.ms3
    public final /* synthetic */ jn0 c() {
        wr3.d(this.b, "rewarded_video");
        return new b40();
    }

    @Override // defpackage.ms3
    public final jn0 d() throws RemoteException {
        tn0 tn0Var = this.d.e;
        Context context = this.b;
        hg0 hg0Var = this.c;
        Objects.requireNonNull(tn0Var);
        try {
            IBinder iBinderW2 = tn0Var.b(context).W2(new y20(context), hg0Var, 204890000);
            if (iBinderW2 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderW2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return iInterfaceQueryLocalInterface instanceof jn0 ? (jn0) iInterfaceQueryLocalInterface : new ln0(iBinderW2);
        } catch (RemoteException | z20.a e) {
            is0.zzd("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }
}
