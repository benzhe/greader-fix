package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import defpackage.z20;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ks3 extends ms3<f80> {
    public final /* synthetic */ View b;
    public final /* synthetic */ HashMap c;
    public final /* synthetic */ HashMap d;
    public final /* synthetic */ wr3 e;

    public ks3(wr3 wr3Var, View view, HashMap map, HashMap map2) {
        this.e = wr3Var;
        this.b = view;
        this.c = map;
        this.d = map2;
    }

    @Override // defpackage.ms3
    public final f80 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zza(new y20(this.b), new y20(this.c), new y20(this.d));
    }

    @Override // defpackage.ms3
    public final /* synthetic */ f80 c() {
        wr3.d(this.b.getContext(), "native_ad_view_holder_delegate");
        return new w30();
    }

    @Override // defpackage.ms3
    public final f80 d() throws RemoteException {
        ca0 ca0Var = this.e.g;
        View view = this.b;
        HashMap map = this.c;
        HashMap map2 = this.d;
        Objects.requireNonNull(ca0Var);
        try {
            IBinder iBinderM5 = ca0Var.b(view.getContext()).m5(new y20(view), new y20(map), new y20(map2));
            if (iBinderM5 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderM5.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return iInterfaceQueryLocalInterface instanceof f80 ? (f80) iInterfaceQueryLocalInterface : new h80(iBinderM5);
        } catch (RemoteException | z20.a e) {
            is0.zzd("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }
}
