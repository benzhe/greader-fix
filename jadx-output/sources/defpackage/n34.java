package defpackage;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class n34 extends g34 {
    public final /* synthetic */ Activity i;
    public final /* synthetic */ dd4 j;
    public final /* synthetic */ p34 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n34(p34 p34Var, Activity activity, dd4 dd4Var) {
        super(p34Var.e, true);
        this.k = p34Var;
        this.i = activity;
        this.j = dd4Var;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.k.e.i.onActivitySaveInstanceState(new y20(this.i), this.j, this.f);
    }
}
