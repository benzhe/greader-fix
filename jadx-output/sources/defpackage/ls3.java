package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import defpackage.z20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ls3 extends ms3<x70> {
    public final /* synthetic */ FrameLayout b;
    public final /* synthetic */ FrameLayout c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ wr3 e;

    public ls3(wr3 wr3Var, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.e = wr3Var;
        this.b = frameLayout;
        this.c = frameLayout2;
        this.d = context;
    }

    @Override // defpackage.ms3
    public final x70 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zza(new y20(this.b), new y20(this.c));
    }

    @Override // defpackage.ms3
    public final /* synthetic */ x70 c() {
        wr3.d(this.d, "native_ad_view_delegate");
        return new x30();
    }

    @Override // defpackage.ms3
    public final x70 d() throws RemoteException {
        z90 z90Var = this.e.d;
        Context context = this.d;
        FrameLayout frameLayout = this.b;
        FrameLayout frameLayout2 = this.c;
        Objects.requireNonNull(z90Var);
        try {
            IBinder iBinderL3 = z90Var.b(context).l3(new y20(context), new y20(frameLayout), new y20(frameLayout2), 204890000);
            if (iBinderL3 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderL3.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return iInterfaceQueryLocalInterface instanceof x70 ? (x70) iInterfaceQueryLocalInterface : new z70(iBinderL3);
        } catch (RemoteException | z20.a e) {
            is0.zzd("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
