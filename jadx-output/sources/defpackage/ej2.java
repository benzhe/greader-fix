package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvv;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ej2 extends AdMetadataListener implements ca1, da1, ra1, ob1, hc1, mi2 {
    public final mm2 e;
    public final AtomicReference<AdMetadataListener> f = new AtomicReference<>();
    public final AtomicReference<no0> g = new AtomicReference<>();
    public final AtomicReference<go0> h = new AtomicReference<>();
    public final AtomicReference<pn0> i = new AtomicReference<>();
    public final AtomicReference<oo0> j = new AtomicReference<>();
    public final AtomicReference<hn0> k = new AtomicReference<>();
    public final AtomicReference<mu3> l = new AtomicReference<>();
    public ej2 m = null;

    public ej2(mm2 mm2Var) {
        this.e = mm2Var;
    }

    @Override // defpackage.ca1
    public final void O(final gn0 gn0Var, final String str, final String str2) {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.h, new ei2(gn0Var) { // from class: kj2
                    public final gn0 a;

                    {
                        this.a = gn0Var;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        gn0 gn0Var2 = this.a;
                        ((go0) obj).S(new bp0(gn0Var2.getType(), gn0Var2.getAmount()));
                    }
                });
                c50.s2(ej2Var.j, new ei2(gn0Var, str, str2) { // from class: jj2
                    public final gn0 a;
                    public final String b;
                    public final String c;

                    {
                        this.a = gn0Var;
                        this.b = str;
                        this.c = str2;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        gn0 gn0Var2 = this.a;
                        ((oo0) obj).G1(new bp0(gn0Var2.getType(), gn0Var2.getAmount()), this.b, this.c);
                    }
                });
                c50.s2(ej2Var.i, new ei2(gn0Var) { // from class: mj2
                    public final gn0 a;

                    {
                        this.a = gn0Var;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((pn0) obj).D5(this.a);
                    }
                });
                c50.s2(ej2Var.k, new ei2(gn0Var, str, str2) { // from class: lj2
                    public final gn0 a;
                    public final String b;
                    public final String c;

                    {
                        this.a = gn0Var;
                        this.b = str;
                        this.c = str2;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((hn0) obj).O4(this.a, this.b, this.c);
                    }
                });
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.da1
    public final void Q(final zzvh zzvhVar) {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                final int i = zzvhVar.e;
                c50.s2(ej2Var.g, new ei2(zzvhVar) { // from class: sj2
                    public final zzvh a;

                    {
                        this.a = zzvhVar;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((no0) obj).J1(this.a);
                    }
                });
                c50.s2(ej2Var.g, new ei2(i) { // from class: uj2
                    public final int a;

                    {
                        this.a = i;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((no0) obj).H4(this.a);
                    }
                });
                c50.s2(ej2Var.i, new ei2(i) { // from class: tj2
                    public final int a;

                    {
                        this.a = i;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((pn0) obj).onRewardedVideoAdFailedToLoad(this.a);
                    }
                });
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.ra1
    public final void d(final zzvh zzvhVar) {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.h, new ei2(zzvhVar) { // from class: nj2
                    public final zzvh a;

                    {
                        this.a = zzvhVar;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((go0) obj).F5(this.a);
                    }
                });
                c50.s2(ej2Var.h, new ei2(zzvhVar) { // from class: qj2
                    public final zzvh a;

                    {
                        this.a = zzvhVar;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((go0) obj).b6(this.a.e);
                    }
                });
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.ca1
    public final void onAdClosed() {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                break;
            } else {
                ej2Var = ej2Var2;
            }
        }
        ej2Var.e.a();
        go0 go0Var = ej2Var.h.get();
        if (go0Var != null) {
            try {
                go0Var.P0();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
        pn0 pn0Var = ej2Var.i.get();
        if (pn0Var == null) {
            return;
        }
        try {
            pn0Var.onRewardedVideoAdClosed();
        } catch (RemoteException e2) {
            is0.zze("#007 Could not call remote method.", e2);
        }
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.i, ij2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.g, gj2.a);
                c50.s2(ej2Var.i, fj2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        ej2 ej2Var = this.m;
        if (ej2Var != null) {
            ej2Var.onAdMetadataChanged();
        } else {
            c50.s2(this.f, pj2.a);
        }
    }

    @Override // defpackage.ca1
    public final void onAdOpened() {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.h, wj2.a);
                c50.s2(ej2Var.i, vj2.a);
                c50.s2(ej2Var.h, xj2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.i, oj2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.i, hj2.a);
                return;
            }
            ej2Var = ej2Var2;
        }
    }

    @Override // defpackage.mi2
    public final void r(mi2 mi2Var) {
        this.m = (ej2) mi2Var;
    }

    @Override // defpackage.hc1
    public final void s(zzvv zzvvVar) {
        ej2 ej2Var = this;
        while (true) {
            ej2 ej2Var2 = ej2Var.m;
            if (ej2Var2 == null) {
                c50.s2(ej2Var.l, new rj2(zzvvVar));
                return;
            }
            ej2Var = ej2Var2;
        }
    }
}
