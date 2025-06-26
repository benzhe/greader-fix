package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class y24 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ Object j;
    public final /* synthetic */ q34 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y24(q34 q34Var, String str, Object obj) {
        super(q34Var, false);
        this.k = q34Var;
        this.i = str;
        this.j = obj;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.k.i.logHealthData(5, this.i, new y20(this.j), new y20(null), new y20(null));
    }
}
