package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzavt;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.n91;
import defpackage.yd1;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zj2 implements a72<dp1> {
    public final Context a;
    public final Executor b;
    public final sy0 c;
    public final ej2 d;
    public final li2<gp1, dp1> e;
    public final gl2 f;
    public final nl2 g;
    public aw2<dp1> h;

    public zj2(Context context, Executor executor, sy0 sy0Var, li2<gp1, dp1> li2Var, ej2 ej2Var, nl2 nl2Var, gl2 gl2Var) {
        this.a = context;
        this.b = executor;
        this.c = sy0Var;
        this.e = li2Var;
        this.d = ej2Var;
        this.g = nl2Var;
        this.f = gl2Var;
    }

    @Override // defpackage.a72
    public final boolean a(zzvq zzvqVar, String str, z62 z62Var, c72<? super dp1> c72Var) throws RemoteException {
        zzavt zzavtVar = new zzavt(zzvqVar, str);
        if (z62Var instanceof bk2) {
        }
        if (zzavtVar.f == null) {
            is0.zzex("Ad unit ID should not be null for rewarded video ad.");
            this.b.execute(new Runnable(this) { // from class: dk2
                public final zj2 e;

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
        aw2<dp1> aw2Var = this.h;
        if (aw2Var != null && !aw2Var.isDone()) {
            return false;
        }
        c50.Q3(this.a, zzavtVar.e.j);
        nl2 nl2Var = this.g;
        nl2Var.d = zzavtVar.f;
        nl2Var.b = zzvt.K0();
        nl2Var.a = zzavtVar.e;
        ll2 ll2VarA = nl2Var.a();
        gk2 gk2Var = new gk2(null);
        gk2Var.a = ll2VarA;
        aw2<dp1> aw2VarA = this.e.a(new pi2(gk2Var), new ni2(this) { // from class: ck2
            public final zj2 a;

            {
                this.a = this;
            }

            @Override // defpackage.ni2
            public final k91 a(oi2 oi2Var) {
                return this.a.b(oi2Var);
            }
        });
        this.h = aw2VarA;
        fk2 fk2Var = new fk2(this, c72Var, gk2Var);
        aw2VarA.i(new sv2(aw2VarA, fk2Var), this.b);
        return true;
    }

    public final p01 b(oi2 oi2Var) {
        p01 p01VarT = this.c.t();
        n91.a aVar = new n91.a();
        aVar.a = this.a;
        aVar.b = ((gk2) oi2Var).a;
        aVar.d = null;
        aVar.e = this.f;
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(p01VarT);
        p01VarT.b = n91VarA;
        p01VarT.a = new yd1.a().h();
        return p01VarT;
    }

    @Override // defpackage.a72
    public final boolean isLoading() {
        aw2<dp1> aw2Var = this.h;
        return (aw2Var == null || aw2Var.isDone()) ? false : true;
    }
}
