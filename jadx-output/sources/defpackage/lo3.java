package defpackage;

import com.google.android.gms.common.ConnectionResult;
import defpackage.i00;

/* loaded from: classes.dex */
public final class lo3 implements i00.b {
    public final /* synthetic */ io3 a;

    public lo3(io3 io3Var) {
        this.a = io3Var;
    }

    @Override // i00.b
    public final void g0(ConnectionResult connectionResult) {
        synchronized (this.a.b) {
            io3 io3Var = this.a;
            io3Var.e = null;
            if (io3Var.c != null) {
                io3Var.c = null;
            }
            io3Var.b.notifyAll();
        }
    }
}
