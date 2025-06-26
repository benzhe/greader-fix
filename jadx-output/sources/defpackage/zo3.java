package defpackage;

import com.google.android.gms.common.ConnectionResult;
import defpackage.i00;

/* loaded from: classes.dex */
public final class zo3 implements i00.b {
    public final /* synthetic */ xs0 a;
    public final /* synthetic */ to3 b;

    public zo3(to3 to3Var, xs0 xs0Var) {
        this.b = to3Var;
        this.a = xs0Var;
    }

    @Override // i00.b
    public final void g0(ConnectionResult connectionResult) {
        synchronized (this.b.d) {
            this.a.b(new RuntimeException("Connection failed."));
        }
    }
}
