package defpackage;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class j34 extends g34 {
    public final /* synthetic */ Activity i;
    public final /* synthetic */ p34 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j34(p34 p34Var, Activity activity) {
        super(p34Var.e, true);
        this.j = p34Var;
        this.i = activity;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.j.e.i.onActivityStarted(new y20(this.i), this.f);
    }
}
