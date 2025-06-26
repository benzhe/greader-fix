package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class es3 extends ms3<it3> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ zzvt c;
    public final /* synthetic */ String d;
    public final /* synthetic */ hg0 e;
    public final /* synthetic */ wr3 f;

    public es3(wr3 wr3Var, Context context, zzvt zzvtVar, String str, hg0 hg0Var) {
        this.f = wr3Var;
        this.b = context;
        this.c = zzvtVar;
        this.d = str;
        this.e = hg0Var;
    }

    @Override // defpackage.ms3
    public final it3 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zzc(new y20(this.b), this.c, this.d, this.e, 204890000);
    }

    @Override // defpackage.ms3
    public final /* synthetic */ it3 c() {
        wr3.d(this.b, "app_open");
        return new t30();
    }

    @Override // defpackage.ms3
    public final /* synthetic */ it3 d() throws RemoteException {
        return this.f.a.c(this.b, this.c, this.d, this.e, 4);
    }
}
