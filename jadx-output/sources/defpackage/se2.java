package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class se2 implements qd2<pe2> {
    public final kr0 a;
    public final int b;
    public final Context c;
    public final or0 d;
    public final ScheduledExecutorService e;
    public final Executor f;

    public se2(kr0 kr0Var, int i, Context context, or0 or0Var, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.a = kr0Var;
        this.b = i;
        this.c = context;
        this.d = or0Var;
        this.e = scheduledExecutorService;
        this.f = executor;
    }

    @Override // defpackage.qd2
    public final aw2<pe2> a() {
        nv2 nv2VarX = nv2.A(vt2.c(new dv2(this) { // from class: re2
            public final se2 a;

            {
                this.a = this;
            }

            @Override // defpackage.dv2
            public final aw2 a() {
                se2 se2Var = this.a;
                return se2Var.a.b(se2Var.c, se2Var.b);
            }
        }, this.f)).y(ue2.a, this.f).x(((Long) os3.j.f.a(y40.E0)).longValue(), TimeUnit.MILLISECONDS, this.e);
        vs2 vs2Var = new vs2(this) { // from class: te2
            public final se2 a;

            {
                this.a = this;
            }

            @Override // defpackage.vs2
            public final Object apply(Object obj) {
                or0 or0Var = this.a.d;
                xl0.d(or0Var.e, or0Var.f).a((Exception) obj, "AttestationTokenSignal");
                return null;
            }
        };
        lv2 lv2Var = lv2.INSTANCE;
        qu2 qu2Var = new qu2(nv2VarX, Exception.class, vs2Var);
        nv2VarX.i(qu2Var, vt2.g(lv2Var, qu2Var));
        return qu2Var;
    }
}
