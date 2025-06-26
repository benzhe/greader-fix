package defpackage;

import android.app.Activity;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class d41 extends wn3 {
    public final e41 e;
    public final it3 f;
    public final mg2 g;
    public boolean h = false;

    public d41(e41 e41Var, it3 it3Var, mg2 mg2Var) {
        this.e = e41Var;
        this.f = it3Var;
        this.g = mg2Var;
    }

    @Override // defpackage.xn3
    public final void d1(x20 x20Var, do3 do3Var) {
        try {
            this.g.h.set(do3Var);
            this.e.c((Activity) y20.l0(x20Var), do3Var, this.h);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.xn3
    public final it3 d2() {
        return this.f;
    }

    @Override // defpackage.xn3
    public final void r6(co3 co3Var) {
    }

    @Override // defpackage.xn3
    public final void setImmersiveMode(boolean z) {
        this.h = z;
    }

    @Override // defpackage.xn3
    public final void zza(mu3 mu3Var) {
        bi.f("setOnPaidEventListener must be called on the main UI thread.");
        mg2 mg2Var = this.g;
        if (mg2Var != null) {
            mg2Var.k.set(mu3Var);
        }
    }

    @Override // defpackage.xn3
    public final ru3 zzkm() {
        if (((Boolean) os3.j.f.a(y40.m4)).booleanValue()) {
            return this.e.f;
        }
        return null;
    }
}
