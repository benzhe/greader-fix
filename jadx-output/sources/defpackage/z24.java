package defpackage;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class z24 extends g34 {
    public final /* synthetic */ Bundle i;
    public final /* synthetic */ dd4 j;
    public final /* synthetic */ q34 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z24(q34 q34Var, Bundle bundle, dd4 dd4Var) {
        super(q34Var, true);
        this.k = q34Var;
        this.i = bundle;
        this.j = dd4Var;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.k.i.performAction(this.i, this.j, this.e);
    }

    @Override // defpackage.g34
    public final void b() {
        this.j.zzb(null);
    }
}
