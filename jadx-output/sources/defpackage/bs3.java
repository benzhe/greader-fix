package defpackage;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.z20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class bs3 extends ms3<xk0> {
    public final /* synthetic */ Activity b;
    public final /* synthetic */ wr3 c;

    public bs3(wr3 wr3Var, Activity activity) {
        this.c = wr3Var;
        this.b = activity;
    }

    @Override // defpackage.ms3
    public final xk0 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zzb(new y20(this.b));
    }

    @Override // defpackage.ms3
    public final /* synthetic */ xk0 c() {
        wr3.d(this.b, "ad_overlay");
        return null;
    }

    @Override // defpackage.ms3
    public final xk0 d() throws RemoteException {
        vk0 vk0Var = this.c.f;
        Activity activity = this.b;
        Objects.requireNonNull(vk0Var);
        try {
            IBinder iBinderR3 = vk0Var.b(activity).r3(new y20(activity));
            if (iBinderR3 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderR3.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return iInterfaceQueryLocalInterface instanceof xk0 ? (xk0) iInterfaceQueryLocalInterface : new zk0(iBinderR3);
        } catch (RemoteException e) {
            is0.zzd("Could not create remote AdOverlay.", e);
            return null;
        } catch (z20.a e2) {
            is0.zzd("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
