package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class l41 extends j41 {
    public final Context h;
    public final View i;
    public final xw0 j;
    public final uk2 k;
    public final g61 l;
    public final dk1 m;
    public final wf1 n;
    public final xa3<q52> o;
    public final Executor p;
    public zzvt q;

    public l41(i61 i61Var, Context context, uk2 uk2Var, View view, xw0 xw0Var, g61 g61Var, dk1 dk1Var, wf1 wf1Var, xa3<q52> xa3Var, Executor executor) {
        super(i61Var);
        this.h = context;
        this.i = view;
        this.j = xw0Var;
        this.k = uk2Var;
        this.l = g61Var;
        this.m = dk1Var;
        this.n = wf1Var;
        this.o = xa3Var;
        this.p = executor;
    }

    @Override // defpackage.f61
    public final void b() {
        this.p.execute(new Runnable(this) { // from class: o41
            public final l41 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                l41 l41Var = this.e;
                j90 j90Var = l41Var.m.d;
                if (j90Var != null) {
                    try {
                        j90Var.G6(l41Var.o.get(), new y20(l41Var.h));
                    } catch (RemoteException e) {
                        is0.zzc("RemoteException when notifyAdLoad is called", e);
                    }
                }
            }
        });
        super.b();
    }

    @Override // defpackage.j41
    public final su3 c() {
        try {
            return this.l.getVideoController();
        } catch (pl2 unused) {
            return null;
        }
    }

    @Override // defpackage.j41
    public final void d(ViewGroup viewGroup, zzvt zzvtVar) {
        xw0 xw0Var;
        if (viewGroup == null || (xw0Var = this.j) == null) {
            return;
        }
        xw0Var.J(jy0.c(zzvtVar));
        viewGroup.setMinimumHeight(zzvtVar.g);
        viewGroup.setMinimumWidth(zzvtVar.j);
        this.q = zzvtVar;
    }

    @Override // defpackage.j41
    public final uk2 e() {
        boolean z;
        zzvt zzvtVar = this.q;
        if (zzvtVar != null) {
            return c50.k4(zzvtVar);
        }
        sk2 sk2Var = this.b;
        if (sk2Var.W) {
            Iterator<String> it = sk2Var.a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                String next = it.next();
                if (next != null && next.contains("FirstParty")) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return new uk2(this.i.getWidth(), this.i.getHeight(), false);
            }
        }
        return this.b.q.get(0);
    }

    @Override // defpackage.j41
    public final View f() {
        return this.i;
    }

    @Override // defpackage.j41
    public final uk2 g() {
        return this.k;
    }

    @Override // defpackage.j41
    public final int h() {
        if (((Boolean) os3.j.f.a(y40.y4)).booleanValue() && this.b.b0) {
            if (!((Boolean) os3.j.f.a(y40.z4)).booleanValue()) {
                return 0;
            }
        }
        return this.a.b.b.c;
    }

    @Override // defpackage.j41
    public final void i() {
        this.n.G0();
    }
}
