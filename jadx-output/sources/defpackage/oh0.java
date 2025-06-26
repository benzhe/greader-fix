package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class oh0 extends mg0 {
    public final Adapter e;
    public final vn0 f;

    public oh0(Adapter adapter, vn0 vn0Var) {
        this.e = adapter;
        this.f = vn0Var;
    }

    @Override // defpackage.ng0
    public final void E5() throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.u6(new y20(this.e));
        }
    }

    @Override // defpackage.ng0
    public final void Q4() throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.T2(new y20(this.e));
        }
    }

    @Override // defpackage.ng0
    public final void S(bo0 bo0Var) throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.I0(new y20(this.e), new zzavy(bo0Var.getType(), bo0Var.getAmount()));
        }
    }

    @Override // defpackage.ng0
    public final void U(zzvh zzvhVar) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void X() throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void Y(q80 q80Var, String str) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void Y3(zzvh zzvhVar) {
    }

    @Override // defpackage.ng0
    public final void d5(String str) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void i2(String str) {
    }

    @Override // defpackage.ng0
    public final void onAdClicked() throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.S4(new y20(this.e));
        }
    }

    @Override // defpackage.ng0
    public final void onAdClosed() throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.U3(new y20(this.e));
        }
    }

    @Override // defpackage.ng0
    public final void onAdFailedToLoad(int i) throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.h2(new y20(this.e), i);
        }
    }

    @Override // defpackage.ng0
    public final void onAdImpression() throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void onAdLeftApplication() throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void onAdLoaded() throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.K1(new y20(this.e));
        }
    }

    @Override // defpackage.ng0
    public final void onAdOpened() throws RemoteException {
        vn0 vn0Var = this.f;
        if (vn0Var != null) {
            vn0Var.M5(new y20(this.e));
        }
    }

    @Override // defpackage.ng0
    public final void onAppEvent(String str, String str2) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void onVideoPause() throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void onVideoPlay() throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void t2(int i, String str) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void v1(zzavy zzavyVar) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void y0(int i) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void z2(sg0 sg0Var) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void zzb(Bundle bundle) throws RemoteException {
    }
}
