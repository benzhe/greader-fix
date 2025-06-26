package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.internal.ads.zzvh;
import com.google.android.gms.internal.ads.zzvv;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class mg2 implements zzp, da1, xb1, hc1, mi2 {
    public final mm2 e;
    public final AtomicReference<yn3> f = new AtomicReference<>();
    public final AtomicReference<co3> g = new AtomicReference<>();
    public final AtomicReference<do3> h = new AtomicReference<>();
    public final AtomicReference<xb1> i = new AtomicReference<>();
    public final AtomicReference<zzp> j = new AtomicReference<>();
    public final AtomicReference<mu3> k = new AtomicReference<>();
    public mg2 l = null;

    public mg2(mm2 mm2Var) {
        this.e = mm2Var;
    }

    @Override // defpackage.da1
    public final void Q(final zzvh zzvhVar) {
        mg2 mg2Var = this;
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                c50.s2(mg2Var.f, new ei2(zzvhVar) { // from class: sg2
                    public final zzvh a;

                    {
                        this.a = zzvhVar;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((yn3) obj).k1(this.a);
                    }
                });
                c50.s2(mg2Var.f, new ei2(zzvhVar) { // from class: rg2
                    public final zzvh a;

                    {
                        this.a = zzvhVar;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) throws RemoteException {
                        ((yn3) obj).u4(this.a.e);
                    }
                });
                return;
            }
            mg2Var = mg2Var2;
        }
    }

    public final void a() {
        mg2 mg2Var = this;
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                break;
            } else {
                mg2Var = mg2Var2;
            }
        }
        mg2Var.e.a();
        co3 co3Var = mg2Var.g.get();
        if (co3Var != null) {
            try {
                co3Var.F1();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
        do3 do3Var = mg2Var.h.get();
        if (do3Var == null) {
            return;
        }
        try {
            do3Var.T();
        } catch (RemoteException e2) {
            is0.zze("#007 Could not call remote method.", e2);
        }
    }

    @Override // defpackage.xb1
    public final void g6() {
        mg2 mg2Var = this;
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                c50.s2(mg2Var.i, ug2.a);
                return;
            }
            mg2Var = mg2Var2;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        mg2 mg2Var = this;
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                c50.s2(mg2Var.j, pg2.a);
                return;
            }
            mg2Var = mg2Var2;
        }
    }

    @Override // defpackage.mi2
    public final void r(mi2 mi2Var) {
        this.l = (mg2) mi2Var;
    }

    @Override // defpackage.hc1
    public final void s(zzvv zzvvVar) {
        mg2 mg2Var = this;
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                c50.s2(mg2Var.k, new og2(zzvvVar));
                return;
            }
            mg2Var = mg2Var2;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(final zzl zzlVar) {
        mg2 mg2Var = this;
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                c50.s2(mg2Var.j, new ei2(zzlVar) { // from class: qg2
                    public final zzl a;

                    {
                        this.a = zzlVar;
                    }

                    @Override // defpackage.ei2
                    public final void a(Object obj) {
                        ((zzp) obj).zza(this.a);
                    }
                });
                return;
            }
            mg2Var = mg2Var2;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        mg2 mg2Var = this;
        while (true) {
            mg2 mg2Var2 = mg2Var.l;
            if (mg2Var2 == null) {
                c50.s2(mg2Var.j, tg2.a);
                c50.s2(mg2Var.h, wg2.a);
                c50.s2(mg2Var.h, vg2.a);
                return;
            }
            mg2Var = mg2Var2;
        }
    }
}
