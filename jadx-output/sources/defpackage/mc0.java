package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import defpackage.i00;

/* loaded from: classes.dex */
public final class mc0 implements i00.a {
    public final /* synthetic */ xs0 a;
    public final /* synthetic */ ic0 b;

    public mc0(ic0 ic0Var, xs0 xs0Var) {
        this.b = ic0Var;
        this.a = xs0Var;
    }

    @Override // i00.a
    public final void Z(int i) {
        this.a.b(new RuntimeException(jo.M(34, "onConnectionSuspended: ", i)));
    }

    @Override // i00.a
    public final void l0(Bundle bundle) {
        try {
            this.a.a(this.b.a.p());
        } catch (DeadObjectException e) {
            this.a.b(e);
        }
    }
}
