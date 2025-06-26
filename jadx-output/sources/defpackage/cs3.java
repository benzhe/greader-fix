package defpackage;

import android.content.Context;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class cs3 extends ms3<jk0> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ hg0 c;

    public cs3(Context context, hg0 hg0Var) {
        this.b = context;
        this.c = hg0Var;
    }

    @Override // defpackage.ms3
    public final jk0 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zzc(new y20(this.b), this.c, 204890000);
    }

    @Override // defpackage.ms3
    public final /* bridge */ /* synthetic */ jk0 c() {
        return null;
    }

    @Override // defpackage.ms3
    public final jk0 d() throws RemoteException {
        try {
            return ((ok0) c50.D1(this.b, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", fs3.a)).zzc(new y20(this.b), this.c, 204890000);
        } catch (RemoteException | NullPointerException | js0 unused) {
            return null;
        }
    }
}
