package defpackage;

import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public final class t71 implements ca1, va1, ob1, sc1, er3 {
    public final b20 e;
    public final nr0 f;

    public t71(b20 b20Var, nr0 nr0Var) {
        this.e = b20Var;
        this.f = nr0Var;
    }

    @Override // defpackage.sc1
    public final void M(hl2 hl2Var) {
        nr0 nr0Var = this.f;
        long jB = this.e.b();
        synchronized (nr0Var.d) {
            nr0Var.k = jB;
            if (jB != -1) {
                nr0Var.b.b(nr0Var);
            }
        }
    }

    @Override // defpackage.ca1
    public final void O(gn0 gn0Var, String str, String str2) {
    }

    public final void d(zzvq zzvqVar) {
        nr0 nr0Var = this.f;
        synchronized (nr0Var.d) {
            long jB = nr0Var.a.b();
            nr0Var.j = jB;
            xr0 xr0Var = nr0Var.b;
            synchronized (xr0Var.a) {
                xr0Var.d.a(zzvqVar, jB);
            }
        }
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        nr0 nr0Var = this.f;
        synchronized (nr0Var.d) {
            if (nr0Var.k != -1) {
                mr0 mr0Var = new mr0(nr0Var);
                mr0Var.a = nr0Var.a.b();
                nr0Var.c.add(mr0Var);
                nr0Var.i++;
                xr0 xr0Var = nr0Var.b;
                synchronized (xr0Var.a) {
                    tr0 tr0Var = xr0Var.d;
                    synchronized (tr0Var.f) {
                        tr0Var.i++;
                    }
                }
                nr0Var.b.b(nr0Var);
            }
        }
    }

    @Override // defpackage.ca1
    public final void onAdClosed() {
        nr0 nr0Var = this.f;
        synchronized (nr0Var.d) {
            if (nr0Var.k != -1 && !nr0Var.c.isEmpty()) {
                mr0 last = nr0Var.c.getLast();
                if (last.b == -1) {
                    last.b = last.c.a.b();
                    nr0Var.b.b(nr0Var);
                }
            }
        }
    }

    @Override // defpackage.va1
    public final void onAdImpression() {
        nr0 nr0Var = this.f;
        synchronized (nr0Var.d) {
            if (nr0Var.k != -1 && nr0Var.g == -1) {
                nr0Var.g = nr0Var.a.b();
                nr0Var.b.b(nr0Var);
            }
            xr0 xr0Var = nr0Var.b;
            synchronized (xr0Var.a) {
                tr0 tr0Var = xr0Var.d;
                synchronized (tr0Var.f) {
                    tr0Var.j++;
                }
            }
        }
    }

    @Override // defpackage.ca1
    public final void onAdLeftApplication() {
    }

    @Override // defpackage.ob1
    public final void onAdLoaded() {
        nr0 nr0Var = this.f;
        synchronized (nr0Var.d) {
            if (nr0Var.k != -1) {
                nr0Var.h = nr0Var.a.b();
            }
        }
    }

    @Override // defpackage.ca1
    public final void onAdOpened() {
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoCompleted() {
    }

    @Override // defpackage.ca1
    public final void onRewardedVideoStarted() {
    }

    @Override // defpackage.sc1
    public final void t(zzauj zzaujVar) {
    }
}
