package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class b34 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ dd4 j;
    public final /* synthetic */ q34 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b34(q34 q34Var, String str, dd4 dd4Var) {
        super(q34Var, true);
        this.k = q34Var;
        this.i = str;
        this.j = dd4Var;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.k.i.getMaxUserProperties(this.i, this.j);
    }

    @Override // defpackage.g34
    public final void b() {
        this.j.zzb(null);
    }
}
