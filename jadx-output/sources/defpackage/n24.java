package defpackage;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class n24 extends g34 {
    public final /* synthetic */ Activity i;
    public final /* synthetic */ String j;
    public final /* synthetic */ String k;
    public final /* synthetic */ q34 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n24(q34 q34Var, Activity activity, String str, String str2) {
        super(q34Var, true);
        this.l = q34Var;
        this.i = activity;
        this.j = str;
        this.k = str2;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.l.i.setCurrentScreen(new y20(this.i), this.j, this.k, this.e);
    }
}
