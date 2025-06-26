package defpackage;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class l24 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ String j;
    public final /* synthetic */ Bundle k;
    public final /* synthetic */ q34 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l24(q34 q34Var, String str, String str2, Bundle bundle) {
        super(q34Var, true);
        this.l = q34Var;
        this.i = str;
        this.j = str2;
        this.k = bundle;
    }

    @Override // defpackage.g34
    public final void a() throws RemoteException {
        this.l.i.clearConditionalUserProperty(this.i, this.j, this.k);
    }
}
