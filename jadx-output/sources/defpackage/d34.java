package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class d34 extends g34 {
    public final /* synthetic */ h34 i;
    public final /* synthetic */ q34 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d34(q34 q34Var, h34 h34Var) {
        super(q34Var, true);
        this.j = q34Var;
        this.i = h34Var;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.j.i.registerOnMeasurementEventListener(this.i);
    }
}
