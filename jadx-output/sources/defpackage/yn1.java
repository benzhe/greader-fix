package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public final class yn1 extends l80 {
    public final String e;
    public final kj1 f;
    public final wj1 g;

    public yn1(String str, kj1 kj1Var, wj1 wj1Var) {
        this.e = str;
        this.f = kj1Var;
        this.g = wj1Var;
    }

    @Override // defpackage.i80
    public final boolean B(Bundle bundle) throws RemoteException {
        return this.f.m(bundle);
    }

    @Override // defpackage.i80
    public final x20 D() throws RemoteException {
        return new y20(this.f);
    }

    @Override // defpackage.i80
    public final void E(Bundle bundle) throws RemoteException {
        this.f.l(bundle);
    }

    @Override // defpackage.i80
    public final String d() throws RemoteException {
        return this.g.e();
    }

    @Override // defpackage.i80
    public final void destroy() throws RemoteException {
        this.f.a();
    }

    @Override // defpackage.i80
    public final String e() throws RemoteException {
        return this.g.b();
    }

    @Override // defpackage.i80
    public final m70 f() throws RemoteException {
        return this.g.v();
    }

    @Override // defpackage.i80
    public final String g() throws RemoteException {
        return this.g.a();
    }

    @Override // defpackage.i80
    public final Bundle getExtras() throws RemoteException {
        return this.g.d();
    }

    @Override // defpackage.i80
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.e;
    }

    @Override // defpackage.i80
    public final su3 getVideoController() throws RemoteException {
        return this.g.h();
    }

    @Override // defpackage.i80
    public final List<?> i() throws RemoteException {
        return this.g.f();
    }

    @Override // defpackage.i80
    public final String k() throws RemoteException {
        String strT;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            strT = wj1Var.t("price");
        }
        return strT;
    }

    @Override // defpackage.i80
    public final u70 p() throws RemoteException {
        u70 u70Var;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            u70Var = wj1Var.o;
        }
        return u70Var;
    }

    @Override // defpackage.i80
    public final double q() throws RemoteException {
        double d;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            d = wj1Var.n;
        }
        return d;
    }

    @Override // defpackage.i80
    public final String s() throws RemoteException {
        String strT;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            strT = wj1Var.t("store");
        }
        return strT;
    }

    @Override // defpackage.i80
    public final void u(Bundle bundle) throws RemoteException {
        this.f.k(bundle);
    }
}
