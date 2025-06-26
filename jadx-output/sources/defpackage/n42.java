package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public class n42 extends mg0 {
    public final x91 e;
    public final qa1 f;
    public final db1 g;
    public final nb1 h;
    public final ld1 i;
    public final wb1 j;
    public final ig1 k;
    public final dd1 l;
    public final ga1 m;

    public n42(x91 x91Var, qa1 qa1Var, db1 db1Var, nb1 nb1Var, ld1 ld1Var, wb1 wb1Var, ig1 ig1Var, dd1 dd1Var, ga1 ga1Var) {
        this.e = x91Var;
        this.f = qa1Var;
        this.g = db1Var;
        this.h = nb1Var;
        this.i = ld1Var;
        this.j = wb1Var;
        this.k = ig1Var;
        this.l = dd1Var;
        this.m = ga1Var;
    }

    public void E5() {
        ig1 ig1Var = this.k;
        synchronized (ig1Var) {
            ig1Var.D0(mg1.a);
            ig1Var.f = true;
        }
    }

    public void Q4() throws RemoteException {
    }

    public void S(bo0 bo0Var) throws RemoteException {
    }

    @Override // defpackage.ng0
    public final void U(zzvh zzvhVar) {
    }

    public void X() {
        this.k.D0(jg1.a);
    }

    @Override // defpackage.ng0
    public final void Y(q80 q80Var, String str) {
    }

    @Override // defpackage.ng0
    public final void Y3(zzvh zzvhVar) {
        this.m.V(c50.w1(dm2.MEDIATION_SHOW_ERROR, zzvhVar));
    }

    @Override // defpackage.ng0
    public final void d5(String str) {
    }

    @Override // defpackage.ng0
    public final void i2(String str) {
        this.m.V(c50.w1(dm2.MEDIATION_SHOW_ERROR, new zzvh(0, str, AdError.UNDEFINED_DOMAIN, null, null)));
    }

    @Override // defpackage.ng0
    public final void onAdClicked() {
        this.e.D0(aa1.a);
    }

    @Override // defpackage.ng0
    public final void onAdClosed() {
        this.j.zza(zzl.OTHER);
    }

    @Override // defpackage.ng0
    public final void onAdFailedToLoad(int i) {
    }

    public void onAdImpression() {
        this.f.onAdImpression();
        this.l.D0(hd1.a);
    }

    @Override // defpackage.ng0
    public final void onAdLeftApplication() {
        this.g.D0(gb1.a);
    }

    @Override // defpackage.ng0
    public final void onAdLoaded() {
        this.h.D0(mb1.a);
    }

    @Override // defpackage.ng0
    public final void onAdOpened() {
        this.j.zzvz();
        this.l.D0(fd1.a);
    }

    @Override // defpackage.ng0
    public final void onAppEvent(String str, String str2) {
        this.i.onAppEvent(str, str2);
    }

    @Override // defpackage.ng0
    public final void onVideoPause() {
        this.k.D0(kg1.a);
    }

    @Override // defpackage.ng0
    public final void onVideoPlay() throws RemoteException {
        ig1 ig1Var = this.k;
        synchronized (ig1Var) {
            if (!ig1Var.f) {
                ig1Var.D0(lg1.a);
                ig1Var.f = true;
            }
            ig1Var.D0(og1.a);
        }
    }

    @Override // defpackage.ng0
    public final void t2(int i, String str) {
    }

    public void v1(zzavy zzavyVar) {
    }

    @Override // defpackage.ng0
    @Deprecated
    public final void y0(int i) throws RemoteException {
        this.m.V(c50.w1(dm2.MEDIATION_SHOW_ERROR, new zzvh(i, "", AdError.UNDEFINED_DOMAIN, null, null)));
    }

    @Override // defpackage.ng0
    public final void z2(sg0 sg0Var) {
    }

    @Override // defpackage.ng0
    public final void zzb(Bundle bundle) throws RemoteException {
    }
}
