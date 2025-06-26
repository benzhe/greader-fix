package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class q24 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ q34 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q24(q34 q34Var, String str) {
        super(q34Var, true);
        this.j = q34Var;
        this.i = str;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.j.i.beginAdUnitExposure(this.i, this.f);
    }
}
