package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class m24 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ String j;
    public final /* synthetic */ dd4 k;
    public final /* synthetic */ q34 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m24(q34 q34Var, String str, String str2, dd4 dd4Var) {
        super(q34Var, true);
        this.l = q34Var;
        this.i = str;
        this.j = str2;
        this.k = dd4Var;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.l.i.getConditionalUserProperties(this.i, this.j, this.k);
    }

    @Override // defpackage.g34
    public final void b() {
        this.k.zzb(null);
    }
}
