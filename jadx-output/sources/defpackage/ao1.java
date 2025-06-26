package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public final class ao1 extends p80 {
    public final String e;
    public final kj1 f;
    public final wj1 g;

    public ao1(String str, kj1 kj1Var, wj1 wj1Var) {
        this.e = str;
        this.f = kj1Var;
        this.g = wj1Var;
    }

    @Override // defpackage.m80
    public final boolean B(Bundle bundle) throws RemoteException {
        return this.f.m(bundle);
    }

    @Override // defpackage.m80
    public final x20 D() throws RemoteException {
        return new y20(this.f);
    }

    @Override // defpackage.m80
    public final void E(Bundle bundle) throws RemoteException {
        this.f.l(bundle);
    }

    @Override // defpackage.m80
    public final u70 R() throws RemoteException {
        u70 u70Var;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            u70Var = wj1Var.p;
        }
        return u70Var;
    }

    @Override // defpackage.m80
    public final String d() throws RemoteException {
        return this.g.e();
    }

    @Override // defpackage.m80
    public final void destroy() throws RemoteException {
        this.f.a();
    }

    @Override // defpackage.m80
    public final String e() throws RemoteException {
        return this.g.b();
    }

    @Override // defpackage.m80
    public final m70 f() throws RemoteException {
        return this.g.v();
    }

    @Override // defpackage.m80
    public final String g() throws RemoteException {
        return this.g.a();
    }

    @Override // defpackage.m80
    public final Bundle getExtras() throws RemoteException {
        return this.g.d();
    }

    @Override // defpackage.m80
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.e;
    }

    @Override // defpackage.m80
    public final su3 getVideoController() throws RemoteException {
        return this.g.h();
    }

    @Override // defpackage.m80
    public final List<?> i() throws RemoteException {
        return this.g.f();
    }

    @Override // defpackage.m80
    public final String r() throws RemoteException {
        String strT;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            strT = wj1Var.t("advertiser");
        }
        return strT;
    }

    @Override // defpackage.m80
    public final void u(Bundle bundle) throws RemoteException {
        this.f.k(bundle);
    }
}
