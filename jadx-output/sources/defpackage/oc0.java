package defpackage;

import com.google.android.gms.common.ConnectionResult;
import defpackage.i00;

/* loaded from: classes.dex */
public final class oc0 implements i00.b {
    public final /* synthetic */ xs0 a;

    public oc0(xs0 xs0Var) {
        this.a = xs0Var;
    }

    @Override // i00.b
    public final void g0(ConnectionResult connectionResult) {
        this.a.b(new RuntimeException("Connection failed."));
    }
}
