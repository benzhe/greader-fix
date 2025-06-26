package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.z20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class js3 extends ms3<bt3> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;
    public final /* synthetic */ hg0 d;
    public final /* synthetic */ wr3 e;

    public js3(wr3 wr3Var, Context context, String str, hg0 hg0Var) {
        this.e = wr3Var;
        this.b = context;
        this.c = str;
        this.d = hg0Var;
    }

    @Override // defpackage.ms3
    public final bt3 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zza(new y20(this.b), this.c, this.d, 204890000);
    }

    @Override // defpackage.ms3
    public final /* synthetic */ bt3 c() {
        wr3.d(this.b, "native_ad");
        return new p30();
    }

    @Override // defpackage.ms3
    public final bt3 d() throws RemoteException {
        jr3 jr3Var = this.e.b;
        Context context = this.b;
        String str = this.c;
        hg0 hg0Var = this.d;
        Objects.requireNonNull(jr3Var);
        try {
            IBinder iBinderP1 = jr3Var.b(context).p1(new y20(context), str, hg0Var, 204890000);
            if (iBinderP1 == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderP1.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return iInterfaceQueryLocalInterface instanceof bt3 ? (bt3) iInterfaceQueryLocalInterface : new dt3(iBinderP1);
        } catch (RemoteException | z20.a e) {
            is0.zzd("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }
}
