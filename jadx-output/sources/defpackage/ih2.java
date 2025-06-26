package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.n91;
import defpackage.yd1;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ih2 implements a72<j41> {
    public final Context a;
    public final Executor b;
    public final sy0 c;
    public final w52 d;
    public final q62 e;
    public final ViewGroup f;
    public t50 g;
    public final kc1 h;
    public final nl2 i;
    public aw2<j41> j;

    public ih2(Context context, Executor executor, zzvt zzvtVar, sy0 sy0Var, w52 w52Var, q62 q62Var, nl2 nl2Var) {
        this.a = context;
        this.b = executor;
        this.c = sy0Var;
        this.d = w52Var;
        this.e = q62Var;
        this.i = nl2Var;
        this.h = sy0Var.i();
        this.f = new FrameLayout(context);
        nl2Var.b = zzvtVar;
    }

    @Override // defpackage.a72
    public final boolean a(zzvq zzvqVar, String str, z62 z62Var, c72<? super j41> c72Var) throws RemoteException {
        g51 g51VarA;
        if (str == null) {
            is0.zzex("Ad unit ID should not be null for banner ad.");
            this.b.execute(new Runnable(this) { // from class: hh2
                public final ih2 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.d.Q(c50.x1(dm2.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        }
        if (isLoading()) {
            return false;
        }
        nl2 nl2Var = this.i;
        nl2Var.d = str;
        nl2Var.a = zzvqVar;
        ll2 ll2VarA = nl2Var.a();
        if (s60.b.a().booleanValue() && this.i.b.o) {
            w52 w52Var = this.d;
            if (w52Var != null) {
                w52Var.Q(c50.x1(dm2.INVALID_AD_SIZE, null, null));
            }
            return false;
        }
        if (((Boolean) os3.j.f.a(y40.L4)).booleanValue()) {
            c01 c01VarL = this.c.l();
            n91.a aVar = new n91.a();
            aVar.a = this.a;
            aVar.b = ll2VarA;
            n91 n91VarA = aVar.a();
            Objects.requireNonNull(c01VarL);
            c01VarL.b = n91VarA;
            yd1.a aVar2 = new yd1.a();
            aVar2.f(this.d, this.b);
            aVar2.a(this.d, this.b);
            c01VarL.a = aVar2.h();
            c01VarL.c = new x42(this.g);
            c01VarL.f = new gi1(dk1.h, null);
            c01VarL.d = new c61(this.h);
            c01VarL.e = new i41(this.f);
            g51VarA = c01VarL.a();
        } else {
            c01 c01VarL2 = this.c.l();
            n91.a aVar3 = new n91.a();
            aVar3.a = this.a;
            aVar3.b = ll2VarA;
            n91 n91VarA2 = aVar3.a();
            Objects.requireNonNull(c01VarL2);
            c01VarL2.b = n91VarA2;
            yd1.a aVar4 = new yd1.a();
            aVar4.f(this.d, this.b);
            aVar4.g(this.d, this.b);
            aVar4.g(this.e, this.b);
            aVar4.d.add(new sf1<>(this.d, this.b));
            aVar4.b(this.d, this.b);
            aVar4.d(this.d, this.b);
            aVar4.c(this.d, this.b);
            aVar4.a(this.d, this.b);
            aVar4.e(this.d, this.b);
            c01VarL2.a = aVar4.h();
            c01VarL2.c = new x42(this.g);
            c01VarL2.f = new gi1(dk1.h, null);
            c01VarL2.d = new c61(this.h);
            c01VarL2.e = new i41(this.f);
            g51VarA = c01VarL2.a();
        }
        aw2<j41> aw2VarB = g51VarA.c().b();
        this.j = aw2VarB;
        kh2 kh2Var = new kh2(this, c72Var, g51VarA);
        Executor executor = this.b;
        ((lo2) aw2VarB).g.i(new sv2(aw2VarB, kh2Var), executor);
        return true;
    }

    @Override // defpackage.a72
    public final boolean isLoading() {
        aw2<j41> aw2Var = this.j;
        return (aw2Var == null || aw2Var.isDone()) ? false : true;
    }
}
