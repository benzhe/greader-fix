package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavy;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class f12 extends yn0 implements lb1 {
    public vn0 e;
    public l42 f;
    public y32 g;

    @Override // defpackage.vn0
    public final synchronized void I0(x20 x20Var, zzavy zzavyVar) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.I0(x20Var, zzavyVar);
        }
    }

    @Override // defpackage.vn0
    public final synchronized void J0(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.J0(x20Var);
        }
        final y32 y32Var = this.g;
        if (y32Var != null) {
            Executor executor = y32Var.d.b;
            final hl2 hl2Var = y32Var.a;
            final sk2 sk2Var = y32Var.b;
            final mz1 mz1Var = y32Var.c;
            executor.execute(new Runnable(y32Var, hl2Var, sk2Var, mz1Var) { // from class: b42
                public final y32 e;
                public final hl2 f;
                public final sk2 g;
                public final mz1 h;

                {
                    this.e = y32Var;
                    this.f = hl2Var;
                    this.g = sk2Var;
                    this.h = mz1Var;
                }

                @Override // java.lang.Runnable
                public final void run() throws pl2 {
                    y32 y32Var2 = this.e;
                    hl2 hl2Var2 = this.f;
                    sk2 sk2Var2 = this.g;
                    mz1 mz1Var2 = this.h;
                    w32 w32Var = y32Var2.d;
                    w32.c(hl2Var2, sk2Var2, mz1Var2);
                }
            });
        }
    }

    @Override // defpackage.vn0
    public final synchronized void K1(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.K1(x20Var);
        }
        l42 l42Var = this.f;
        if (l42Var != null) {
            synchronized (l42Var) {
                l42Var.c.a(null);
            }
        }
    }

    @Override // defpackage.vn0
    public final synchronized void M5(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.M5(x20Var);
        }
    }

    @Override // defpackage.vn0
    public final synchronized void S4(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.S4(x20Var);
        }
    }

    @Override // defpackage.vn0
    public final synchronized void T2(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.T2(x20Var);
        }
    }

    @Override // defpackage.vn0
    public final synchronized void U3(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.U3(x20Var);
        }
    }

    @Override // defpackage.lb1
    public final synchronized void X4(l42 l42Var) {
        this.f = l42Var;
    }

    @Override // defpackage.vn0
    public final synchronized void h2(x20 x20Var, int i) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.h2(x20Var, i);
        }
        l42 l42Var = this.f;
        if (l42Var != null) {
            l42Var.a(i);
        }
    }

    @Override // defpackage.vn0
    public final synchronized void i1(x20 x20Var, int i) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.i1(x20Var, i);
        }
        y32 y32Var = this.g;
        if (y32Var != null) {
            String strValueOf = String.valueOf(y32Var.c.a);
            is0.zzez(strValueOf.length() != 0 ? "Fail to initialize adapter ".concat(strValueOf) : new String("Fail to initialize adapter "));
        }
    }

    @Override // defpackage.vn0
    public final synchronized void p2(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.p2(x20Var);
        }
    }

    @Override // defpackage.vn0
    public final synchronized void u6(x20 x20Var) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.u6(x20Var);
        }
    }

    @Override // defpackage.vn0
    public final synchronized void zzb(Bundle bundle) throws RemoteException {
        vn0 vn0Var = this.e;
        if (vn0Var != null) {
            vn0Var.zzb(bundle);
        }
    }
}
