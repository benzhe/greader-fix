package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public final class g12 extends mg0 implements lb1 {
    public ng0 e;
    public l42 f;

    @Override // defpackage.ng0
    public final synchronized void E5() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.E5();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void Q4() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.Q4();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void S(bo0 bo0Var) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.S(bo0Var);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void U(zzvh zzvhVar) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.U(zzvhVar);
        }
        l42 l42Var = this.f;
        if (l42Var != null) {
            synchronized (l42Var) {
                l42Var.a = true;
                l42Var.b(zzvhVar);
            }
        }
    }

    @Override // defpackage.ng0
    public final synchronized void X() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.X();
        }
    }

    @Override // defpackage.lb1
    public final synchronized void X4(l42 l42Var) {
        this.f = l42Var;
    }

    public final synchronized void X6(ng0 ng0Var) {
        this.e = ng0Var;
    }

    @Override // defpackage.ng0
    public final synchronized void Y(q80 q80Var, String str) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.Y(q80Var, str);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void Y3(zzvh zzvhVar) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.Y3(zzvhVar);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void d5(String str) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.d5(str);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void i2(String str) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.i2(str);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAdClicked() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAdClicked();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAdClosed() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAdClosed();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAdFailedToLoad(int i) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAdFailedToLoad(i);
        }
        l42 l42Var = this.f;
        if (l42Var != null) {
            l42Var.a(i);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAdImpression() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAdImpression();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAdLeftApplication() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAdLeftApplication();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAdLoaded() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAdLoaded();
        }
        l42 l42Var = this.f;
        if (l42Var != null) {
            synchronized (l42Var) {
                l42Var.c.a(null);
            }
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAdOpened() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAdOpened();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onAppEvent(String str, String str2) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onAppEvent(str, str2);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onVideoPause() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onVideoPause();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void onVideoPlay() throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.onVideoPlay();
        }
    }

    @Override // defpackage.ng0
    public final synchronized void t2(int i, String str) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.t2(i, str);
        }
        l42 l42Var = this.f;
        if (l42Var != null) {
            synchronized (l42Var) {
                if (!l42Var.a) {
                    l42Var.a = true;
                    if (str == null) {
                        str = g42.c(l42Var.b.a, i);
                    }
                    l42Var.b(new zzvh(i, str, AdError.UNDEFINED_DOMAIN, null, null));
                }
            }
        }
    }

    @Override // defpackage.ng0
    public final synchronized void v1(zzavy zzavyVar) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.v1(zzavyVar);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void y0(int i) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.y0(i);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void z2(sg0 sg0Var) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.z2(sg0Var);
        }
    }

    @Override // defpackage.ng0
    public final synchronized void zzb(Bundle bundle) throws RemoteException {
        ng0 ng0Var = this.e;
        if (ng0Var != null) {
            ng0Var.zzb(bundle);
        }
    }
}
