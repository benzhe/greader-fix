package defpackage;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class e34 extends g34 {
    public final /* synthetic */ Long i;
    public final /* synthetic */ String j;
    public final /* synthetic */ String k;
    public final /* synthetic */ Bundle l;
    public final /* synthetic */ boolean m;
    public final /* synthetic */ boolean n;
    public final /* synthetic */ q34 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e34(q34 q34Var, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(q34Var, true);
        this.o = q34Var;
        this.i = l;
        this.j = str;
        this.k = str2;
        this.l = bundle;
        this.m = z;
        this.n = z2;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        Long l = this.i;
        this.o.i.logEvent(this.j, this.k, this.l, this.m, this.n, l == null ? this.e : l.longValue());
    }
}
