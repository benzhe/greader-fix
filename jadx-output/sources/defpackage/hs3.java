package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class hs3 extends ms3<it3> {
    public final /* synthetic */ Context b;
    public final /* synthetic */ zzvt c;
    public final /* synthetic */ String d;
    public final /* synthetic */ wr3 e;

    public hs3(wr3 wr3Var, Context context, zzvt zzvtVar, String str) {
        this.e = wr3Var;
        this.b = context;
        this.c = zzvtVar;
        this.d = str;
    }

    @Override // defpackage.ms3
    public final it3 a(qt3 qt3Var) throws RemoteException {
        return qt3Var.zza(new y20(this.b), this.c, this.d, 204890000);
    }

    @Override // defpackage.ms3
    public final /* synthetic */ it3 c() {
        wr3.d(this.b, "search");
        return new t30();
    }

    @Override // defpackage.ms3
    public final /* synthetic */ it3 d() throws RemoteException {
        return this.e.a.c(this.b, this.c, this.d, null, 3);
    }
}
