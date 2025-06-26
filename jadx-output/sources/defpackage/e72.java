package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzvq;
import defpackage.n91;
import defpackage.yd1;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class e72 implements a72<f61> {
    public final nl2 a;
    public final sy0 b;
    public final Context c;
    public final y62 d;
    public q61 e;

    public e72(sy0 sy0Var, Context context, y62 y62Var, nl2 nl2Var) {
        this.b = sy0Var;
        this.c = context;
        this.d = y62Var;
        this.a = nl2Var;
    }

    @Override // defpackage.a72
    public final boolean a(zzvq zzvqVar, String str, z62 z62Var, c72<? super f61> c72Var) throws RemoteException {
        zzr.zzkv();
        if (zzj.zzbc(this.c) && zzvqVar.w == null) {
            is0.zzex("Failed to load the ad because app ID is missing.");
            this.b.e().execute(new Runnable(this) { // from class: d72
                public final e72 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.d.c.Q(c50.x1(dm2.APP_ID_MISSING, null, null));
                }
            });
            return false;
        }
        if (str == null) {
            is0.zzex("Ad unit ID should not be null for NativeAdLoader.");
            this.b.e().execute(new Runnable(this) { // from class: g72
                public final e72 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.d.c.Q(c50.x1(dm2.INVALID_AD_UNIT_ID, null, null));
                }
            });
            return false;
        }
        c50.Q3(this.c, zzvqVar.j);
        int i = ((b72) z62Var).a;
        nl2 nl2Var = this.a;
        nl2Var.a = zzvqVar;
        nl2Var.n = i;
        ll2 ll2VarA = nl2Var.a();
        rz0 rz0VarS = this.b.s();
        n91.a aVar = new n91.a();
        aVar.a = this.c;
        aVar.b = ll2VarA;
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(rz0VarS);
        rz0VarS.b = n91VarA;
        rz0VarS.a = new yd1.a().h();
        y62 y62Var = this.d;
        rz0VarS.c = new gi1(y62Var.a, y62Var.b.r());
        rz0VarS.d = new i41(null);
        ji1 ji1VarA = rz0VarS.a();
        this.b.y().a(1);
        Executor executorG = this.b.g();
        ScheduledExecutorService scheduledExecutorServiceF = this.b.f();
        aw2<l61> aw2VarB = ji1VarA.c().b();
        q61 q61Var = new q61(executorG, scheduledExecutorServiceF, aw2VarB);
        this.e = q61Var;
        ((lo2) aw2VarB).g.i(new sv2(aw2VarB, new t61(q61Var, new f72(this, c72Var, ji1VarA))), executorG);
        return true;
    }

    @Override // defpackage.a72
    public final boolean isLoading() {
        q61 q61Var = this.e;
        return q61Var != null && q61Var.d;
    }
}
