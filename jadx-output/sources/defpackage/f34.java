package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class f34 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ String j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ q34 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f34(q34 q34Var, String str, String str2, Object obj, boolean z) {
        super(q34Var, true);
        this.m = q34Var;
        this.i = str;
        this.j = str2;
        this.k = obj;
        this.l = z;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.m.i.setUserProperty(this.i, this.j, new y20(this.k), this.l, this.e);
    }
}
