package defpackage;

import android.content.Context;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class as3 extends ms3<zq0> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ hg0 c;

    public as3(Context context, hg0 hg0Var) {
        this.b = context;
        this.c = hg0Var;
    }

    @Override // defpackage.ms3
    public final zq0 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zzb(new y20(this.b), this.c, 204890000);
    }

    @Override // defpackage.ms3
    public final /* bridge */ /* synthetic */ zq0 c() {
        return null;
    }

    @Override // defpackage.ms3
    public final zq0 d() throws RemoteException {
        try {
            return ((er0) c50.D1(this.b, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", ds3.a)).s0(new y20(this.b), this.c, 204890000);
        } catch (RemoteException | NullPointerException | js0 unused) {
            return null;
        }
    }
}
