package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class x24 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ String j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ dd4 l;
    public final /* synthetic */ q34 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x24(q34 q34Var, String str, String str2, boolean z, dd4 dd4Var) {
        super(q34Var, true);
        this.m = q34Var;
        this.i = str;
        this.j = str2;
        this.k = z;
        this.l = dd4Var;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.m.i.getUserProperties(this.i, this.j, this.k, this.l);
    }

    @Override // defpackage.g34
    public final void b() {
        this.l.zzb(null);
    }
}
