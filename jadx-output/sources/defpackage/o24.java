package defpackage;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class o24 extends g34 {
    public final /* synthetic */ Bundle i;
    public final /* synthetic */ q34 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o24(q34 q34Var, Bundle bundle) {
        super(q34Var, true);
        this.j = q34Var;
        this.i = bundle;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.j.i.setConsent(this.i, this.e);
    }
}
