package defpackage;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class dd5 implements oc5 {
    public tc5 a;
    public vc5 b;

    public dd5(tc5 tc5Var, vc5 vc5Var) {
        c50.a(tc5Var, "connectionClient cannot be null");
        this.a = tc5Var;
        c50.a(vc5Var, "embeddedPlayer cannot be null");
        this.b = vc5Var;
    }

    public final void a(boolean z) {
        try {
            this.b.A(z);
            this.a.A(z);
            this.a.a();
        } catch (RemoteException e) {
            throw new ad5(e);
        }
    }
}
