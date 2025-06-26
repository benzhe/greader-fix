package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class u24 extends g34 {
    public final /* synthetic */ dd4 i;
    public final /* synthetic */ q34 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u24(q34 q34Var, dd4 dd4Var) {
        super(q34Var, true);
        this.j = q34Var;
        this.i = dd4Var;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.j.i.generateEventId(this.i);
    }

    @Override // defpackage.g34
    public final void b() {
        this.i.zzb(null);
    }
}
