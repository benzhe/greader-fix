package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.n91;
import defpackage.yd1;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ui2 implements a72<qg1> {
    public final Context a;
    public final Executor b;
    public final sy0 c;
    public final w52 d;
    public final ej2 e;
    public t50 f;
    public final nl2 g;
    public aw2<qg1> h;

    public ui2(Context context, Executor executor, sy0 sy0Var, w52 w52Var, ej2 ej2Var, nl2 nl2Var) {
        this.a = context;
        this.b = executor;
        this.c = sy0Var;
        this.d = w52Var;
        this.g = nl2Var;
        this.e = ej2Var;
    }

    @Override // defpackage.a72
    public final boolean a(zzvq zzvqVar, String str, z62 z62Var, c72<? super qg1> c72Var) {
        oh1 oh1VarA;
        if (str == null) {
            is0.zzex("Ad unit ID should not be null for interstitial ad.");
            this.b.execute(new Runnable(this) { // from class: xi2
                public final ui2 e;

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
        zzvt zzvtVar = z62Var instanceof vi2 ? ((vi2) z62Var).a : new zzvt();
        nl2 nl2Var = this.g;
        nl2Var.d = str;
        nl2Var.b = zzvtVar;
        nl2Var.a = zzvqVar;
        ll2 ll2VarA = nl2Var.a();
        if (((Boolean) os3.j.f.a(y40.N4)).booleanValue()) {
            k01 k01VarQ = this.c.q();
            n91.a aVar = new n91.a();
            aVar.a = this.a;
            aVar.b = ll2VarA;
            n91 n91VarA = aVar.a();
            Objects.requireNonNull(k01VarQ);
            k01VarQ.b = n91VarA;
            yd1.a aVar2 = new yd1.a();
            aVar2.f(this.d, this.b);
            aVar2.a(this.d, this.b);
            k01VarQ.a = aVar2.h();
            k01VarQ.c = new x42(this.f);
            oh1VarA = k01VarQ.a();
        } else {
            yd1.a aVar3 = new yd1.a();
            ej2 ej2Var = this.e;
            if (ej2Var != null) {
                aVar3.c.add(new sf1<>(ej2Var, this.b));
                aVar3.d(this.e, this.b);
                aVar3.c(this.e, this.b);
            }
            k01 k01VarQ2 = this.c.q();
            n91.a aVar4 = new n91.a();
            aVar4.a = this.a;
            aVar4.b = ll2VarA;
            n91 n91VarA2 = aVar4.a();
            Objects.requireNonNull(k01VarQ2);
            k01VarQ2.b = n91VarA2;
            aVar3.f(this.d, this.b);
            aVar3.b(this.d, this.b);
            aVar3.d(this.d, this.b);
            aVar3.c(this.d, this.b);
            aVar3.g(this.d, this.b);
            aVar3.a(this.d, this.b);
            aVar3.e(this.d, this.b);
            aVar3.j.add(new sf1<>(this.d, this.b));
            k01VarQ2.a = aVar3.h();
            k01VarQ2.c = new x42(this.f);
            oh1VarA = k01VarQ2.a();
        }
        aw2<qg1> aw2VarB = oh1VarA.b().b();
        this.h = aw2VarB;
        wi2 wi2Var = new wi2(this, c72Var, oh1VarA);
        ((lo2) aw2VarB).g.i(new sv2(aw2VarB, wi2Var), this.b);
        return true;
    }

    @Override // defpackage.a72
    public final boolean isLoading() {
        aw2<qg1> aw2Var = this.h;
        return (aw2Var == null || aw2Var.isDone()) ? false : true;
    }
}
