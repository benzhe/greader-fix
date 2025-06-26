package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ho1 extends y90 {
    public final String e;
    public final kj1 f;
    public final wj1 g;

    public ho1(String str, kj1 kj1Var, wj1 wj1Var) {
        this.e = str;
        this.f = kj1Var;
        this.g = wj1Var;
    }

    @Override // defpackage.v90
    public final boolean B(Bundle bundle) throws RemoteException {
        return this.f.m(bundle);
    }

    @Override // defpackage.v90
    public final x20 D() throws RemoteException {
        return new y20(this.f);
    }

    @Override // defpackage.v90
    public final void E(Bundle bundle) throws RemoteException {
        this.f.l(bundle);
    }

    @Override // defpackage.v90
    public final void L(iu3 iu3Var) throws RemoteException {
        kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            kj1Var.j.L(iu3Var);
        }
    }

    @Override // defpackage.v90
    public final void N() throws RemoteException {
        kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            kj1Var.j.N();
        }
    }

    @Override // defpackage.v90
    public final t70 a0() throws RemoteException {
        return this.f.z.a();
    }

    @Override // defpackage.v90
    public final void b0(u90 u90Var) throws RemoteException {
        kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            kj1Var.j.b0(u90Var);
        }
    }

    @Override // defpackage.v90
    public final String d() throws RemoteException {
        return this.g.e();
    }

    @Override // defpackage.v90
    public final void destroy() throws RemoteException {
        this.f.a();
    }

    @Override // defpackage.v90
    public final String e() throws RemoteException {
        return this.g.b();
    }

    @Override // defpackage.v90
    public final void e0() {
        kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            kj1Var.j.e0();
        }
    }

    @Override // defpackage.v90
    public final m70 f() throws RemoteException {
        return this.g.v();
    }

    @Override // defpackage.v90
    public final String g() throws RemoteException {
        return this.g.a();
    }

    @Override // defpackage.v90
    public final Bundle getExtras() throws RemoteException {
        return this.g.d();
    }

    @Override // defpackage.v90
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.e;
    }

    @Override // defpackage.v90
    public final su3 getVideoController() throws RemoteException {
        return this.g.h();
    }

    @Override // defpackage.v90
    public final List<?> i() throws RemoteException {
        return this.g.f();
    }

    @Override // defpackage.v90
    public final void j0(fu3 fu3Var) throws RemoteException {
        kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            kj1Var.j.j0(fu3Var);
        }
    }

    @Override // defpackage.v90
    public final String k() throws RemoteException {
        String strT;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            strT = wj1Var.t("price");
        }
        return strT;
    }

    @Override // defpackage.v90
    public final boolean k0() {
        boolean zK0;
        kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            zK0 = kj1Var.j.k0();
        }
        return zK0;
    }

    @Override // defpackage.v90
    public final boolean n2() throws RemoteException {
        return (this.g.g().isEmpty() || this.g.m() == null) ? false : true;
    }

    @Override // defpackage.v90
    public final x20 o() throws RemoteException {
        return this.g.w();
    }

    @Override // defpackage.v90
    public final u70 p() throws RemoteException {
        u70 u70Var;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            u70Var = wj1Var.o;
        }
        return u70Var;
    }

    @Override // defpackage.v90
    public final double q() throws RemoteException {
        double d;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            d = wj1Var.n;
        }
        return d;
    }

    @Override // defpackage.v90
    public final List<?> q4() throws RemoteException {
        return n2() ? this.g.g() : Collections.emptyList();
    }

    @Override // defpackage.v90
    public final void q6() {
        final kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            xl1 xl1Var = kj1Var.s;
            if (xl1Var == null) {
                is0.zzdz("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            } else {
                final boolean z = xl1Var instanceof ok1;
                kj1Var.h.execute(new Runnable(kj1Var, z) { // from class: qj1
                    public final kj1 e;
                    public final boolean f;

                    {
                        this.e = kj1Var;
                        this.f = z;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        kj1 kj1Var2 = this.e;
                        kj1Var2.j.k(kj1Var2.s.y5(), kj1Var2.s.L3(), kj1Var2.s.z4(), this.f);
                    }
                });
            }
        }
    }

    @Override // defpackage.v90
    public final String r() throws RemoteException {
        String strT;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            strT = wj1Var.t("advertiser");
        }
        return strT;
    }

    @Override // defpackage.v90
    public final String s() throws RemoteException {
        String strT;
        wj1 wj1Var = this.g;
        synchronized (wj1Var) {
            strT = wj1Var.t("store");
        }
        return strT;
    }

    @Override // defpackage.v90
    public final void u(Bundle bundle) throws RemoteException {
        this.f.k(bundle);
    }

    @Override // defpackage.v90
    public final void zza(mu3 mu3Var) throws RemoteException {
        kj1 kj1Var = this.f;
        synchronized (kj1Var) {
            kj1Var.A.e.set(mu3Var);
        }
    }

    @Override // defpackage.v90
    public final ru3 zzkm() throws RemoteException {
        if (((Boolean) os3.j.f.a(y40.m4)).booleanValue()) {
            return this.f.f;
        }
        return null;
    }
}
