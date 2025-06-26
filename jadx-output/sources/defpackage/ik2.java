package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaww;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class ik2 extends eo0 {
    public final zj2 f;
    public final ej2 g;
    public final String h;
    public final gl2 i;
    public final Context j;
    public dp1 k;
    public boolean l = ((Boolean) os3.j.f.a(y40.q0)).booleanValue();

    public ik2(String str, zj2 zj2Var, Context context, ej2 ej2Var, gl2 gl2Var) {
        this.h = str;
        this.f = zj2Var;
        this.g = ej2Var;
        this.i = gl2Var;
        this.j = context;
    }

    @Override // defpackage.fo0
    public final synchronized void E6(zzaww zzawwVar) {
        bi.f("#008 Must be called on the main UI thread.");
        gl2 gl2Var = this.i;
        gl2Var.a = zzawwVar.e;
        if (((Boolean) os3.j.f.a(y40.A0)).booleanValue()) {
            gl2Var.b = zzawwVar.f;
        }
    }

    @Override // defpackage.fo0
    public final synchronized void I5(zzvq zzvqVar, no0 no0Var) throws RemoteException {
        W6(zzvqVar, no0Var, 3);
    }

    @Override // defpackage.fo0
    public final void J5(go0 go0Var) {
        bi.f("#008 Must be called on the main UI thread.");
        this.g.h.set(go0Var);
    }

    @Override // defpackage.fo0
    public final synchronized void S6(x20 x20Var, boolean z) throws RemoteException {
        bi.f("#008 Must be called on the main UI thread.");
        if (this.k == null) {
            is0.zzez("Rewarded can not be shown before loaded");
            this.g.d(c50.x1(dm2.NOT_READY, null, null));
        } else {
            this.k.c(z, (Activity) y20.l0(x20Var));
        }
    }

    @Override // defpackage.fo0
    public final synchronized void T4(zzvq zzvqVar, no0 no0Var) throws RemoteException {
        W6(zzvqVar, no0Var, 2);
    }

    public final synchronized void W6(zzvq zzvqVar, no0 no0Var, int i) throws RemoteException {
        bi.f("#008 Must be called on the main UI thread.");
        this.g.g.set(no0Var);
        zzr.zzkv();
        if (zzj.zzbc(this.j) && zzvqVar.w == null) {
            is0.zzex("Failed to load the ad because app ID is missing.");
            this.g.Q(c50.x1(dm2.APP_ID_MISSING, null, null));
        } else {
            if (this.k != null) {
                return;
            }
            bk2 bk2Var = new bk2();
            zj2 zj2Var = this.f;
            zj2Var.g.p.a = i;
            zj2Var.a(zzvqVar, this.h, bk2Var, new kk2(this));
        }
    }

    @Override // defpackage.fo0
    public final bo0 c2() {
        bi.f("#008 Must be called on the main UI thread.");
        dp1 dp1Var = this.k;
        if (dp1Var != null) {
            return dp1Var.o;
        }
        return null;
    }

    @Override // defpackage.fo0
    public final Bundle getAdMetadata() {
        Bundle bundle;
        bi.f("#008 Must be called on the main UI thread.");
        dp1 dp1Var = this.k;
        if (dp1Var == null) {
            return new Bundle();
        }
        rb1 rb1Var = dp1Var.m;
        synchronized (rb1Var) {
            bundle = new Bundle(rb1Var.f);
        }
        return bundle;
    }

    @Override // defpackage.fo0
    public final synchronized String getMediationAdapterClassName() throws RemoteException {
        t91 t91Var;
        dp1 dp1Var = this.k;
        if (dp1Var == null || (t91Var = dp1Var.f) == null) {
            return null;
        }
        return t91Var.e;
    }

    @Override // defpackage.fo0
    public final boolean isLoaded() {
        bi.f("#008 Must be called on the main UI thread.");
        dp1 dp1Var = this.k;
        return (dp1Var == null || dp1Var.q) ? false : true;
    }

    @Override // defpackage.fo0
    public final void r4(lu3 lu3Var) {
        if (lu3Var == null) {
            this.g.f.set(null);
            return;
        }
        ej2 ej2Var = this.g;
        ej2Var.f.set(new lk2(this, lu3Var));
    }

    @Override // defpackage.fo0
    public final synchronized void setImmersiveMode(boolean z) {
        bi.f("setImmersiveMode must be called on the main UI thread.");
        this.l = z;
    }

    @Override // defpackage.fo0
    public final void t5(oo0 oo0Var) {
        bi.f("#008 Must be called on the main UI thread.");
        this.g.j.set(oo0Var);
    }

    @Override // defpackage.fo0
    public final void zza(mu3 mu3Var) {
        bi.f("setOnPaidEventListener must be called on the main UI thread.");
        this.g.l.set(mu3Var);
    }

    @Override // defpackage.fo0
    public final synchronized void zze(x20 x20Var) throws RemoteException {
        S6(x20Var, this.l);
    }

    @Override // defpackage.fo0
    public final ru3 zzkm() {
        dp1 dp1Var;
        if (((Boolean) os3.j.f.a(y40.m4)).booleanValue() && (dp1Var = this.k) != null) {
            return dp1Var.f;
        }
        return null;
    }
}
