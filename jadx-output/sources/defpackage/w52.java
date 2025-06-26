package defpackage;

import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvv;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class w52 implements AppEventListener, ca1, da1, ra1, va1, ob1, hc1, sc1, er3 {
    public final pp2 k;
    public final AtomicReference<us3> e = new AtomicReference<>();
    public final AtomicReference<pt3> f = new AtomicReference<>();
    public final AtomicReference<mu3> g = new AtomicReference<>();
    public final AtomicReference<vs3> h = new AtomicReference<>();
    public final AtomicReference<yt3> i = new AtomicReference<>();
    public final AtomicBoolean j = new AtomicBoolean(true);
    public final BlockingQueue<Pair<String, String>> l = new ArrayBlockingQueue(((Integer) os3.j.f.a(y40.i5)).intValue());

    public w52(pp2 pp2Var) {
        this.k = pp2Var;
    }

    @Override // defpackage.sc1
    public final void M(hl2 hl2Var) {
        this.j.set(true);
    }

    @Override // defpackage.ca1
    public final void O(gn0 gn0Var, String str, String str2) {
    }

    @Override // defpackage.da1
    public final void Q(final zzvh zzvhVar) {
        c50.s2(this.e, new ei2(zzvhVar) { // from class: c62
            public final zzvh a;

            {
                this.a = zzvhVar;
            }

            @Override // defpackage.ei2
            public final void a(Object obj) throws RemoteException {
                ((us3) obj).U(this.a);
            }
        });
        c50.s2(this.e, new ei2(zzvhVar) { // from class: f62
            public final zzvh a;

            {
                this.a = zzvhVar;
            }

            @Override // defpackage.ei2
            public final void a(Object obj) throws RemoteException {
                ((us3) obj).onAdFailedToLoad(this.a.e);
            }
        });
        c50.s2(this.h, new ei2(zzvhVar) { // from class: e62
            public final zzvh a;

            {
                this.a = zzvhVar;
            }

            @Override // defpackage.ei2
            public final void a(Object obj) throws RemoteException {
                ((vs3) obj).Q(this.a);
            }
        });
        this.j.set(false);
        this.l.clear();
    }

    @Override // defpackage.ra1
    public final void d(zzvh zzvhVar) {
        yt3 yt3Var = this.i.get();
        if (yt3Var == null) {
            return;
        }
        try {
            yt3Var.G(zzvhVar);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        c50.s2(this.e, z52.a);
    }

    @Override // defpackage.ca1
    public final void onAdClosed() {
        c50.s2(this.e, y52.a);
        yt3 yt3Var = this.i.get();
        if (yt3Var == null) {
            return;
        }
        try {
            yt3Var.T();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.va1
    public final void onAdImpression() {
        c50.s2(this.e, a62.a);
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() {
        us3 us3Var = this.e.get();
        if (us3Var == null) {
            return;
        }
        try {
            us3Var.onAdLeftApplication();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.ob1
    public final synchronized void onAdLoaded() {
        c50.s2(this.e, i62.a);
        c50.s2(this.h, k62.a);
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            final Pair pair = (Pair) it.next();
            c50.s2(this.f, new ei2(pair) { // from class: d62
                public final Pair a;

                {
                    this.a = pair;
                }

                @Override // defpackage.ei2
                public final void a(Object obj) throws RemoteException {
                    Pair pair2 = this.a;
                    ((pt3) obj).onAppEvent((String) pair2.first, (String) pair2.second);
                }
            });
        }
        this.l.clear();
        this.j.set(false);
    }

    @Override // defpackage.ca1
    public final void onAdOpened() {
        c50.s2(this.e, j62.a);
        c50.s2(this.i, m62.a);
        yt3 yt3Var = this.i.get();
        if (yt3Var == null) {
            return;
        }
        try {
            yt3Var.onAdImpression();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final synchronized void onAppEvent(final String str, final String str2) {
        if (!this.j.get()) {
            c50.s2(this.f, new ei2(str, str2) { // from class: b62
                public final String a;
                public final String b;

                {
                    this.a = str;
                    this.b = str2;
                }

                @Override // defpackage.ei2
                public final void a(Object obj) throws RemoteException {
                    ((pt3) obj).onAppEvent(this.a, this.b);
                }
            });
            return;
        }
        if (!this.l.offer(new Pair<>(str, str2))) {
            is0.zzdz("The queue for app events is full, dropping the new event.");
            pp2 pp2Var = this.k;
            if (pp2Var != null) {
                qp2 qp2VarC = qp2.c("dae_action");
                qp2VarC.a.put("dae_name", str);
                qp2VarC.a.put("dae_data", str2);
                pp2Var.b(qp2VarC);
            }
        }
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() {
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() {
    }

    public final synchronized us3 r() {
        return this.e.get();
    }

    @Override // defpackage.hc1
    public final void s(zzvv zzvvVar) {
        mu3 mu3Var = this.g.get();
        if (mu3Var == null) {
            return;
        }
        try {
            mu3Var.x4(zzvvVar);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.sc1
    public final void t(zzauj zzaujVar) {
    }
}
