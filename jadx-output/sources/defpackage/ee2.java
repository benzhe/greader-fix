package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import defpackage.vv2;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class ee2 implements qd2<be2> {
    public final kr0 a;
    public final Context b;
    public final ScheduledExecutorService c;
    public final Executor d;
    public final int e;

    public ee2(kr0 kr0Var, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i) {
        this.a = kr0Var;
        this.b = context;
        this.c = scheduledExecutorService;
        this.d = executor;
        this.e = i;
    }

    @Override // defpackage.qd2
    public final aw2<be2> a() {
        if (!((Boolean) os3.j.f.a(y40.D0)).booleanValue()) {
            return new vv2.a(new Exception("Did not ad Ad ID into query param."));
        }
        nv2 nv2VarX = nv2.A(this.a.c(this.b, this.e)).y(de2.a, this.d).x(((Long) os3.j.f.a(y40.E0)).longValue(), TimeUnit.MILLISECONDS, this.c);
        vs2 vs2Var = new vs2(this) { // from class: ge2
            public final ee2 a;

            {
                this.a = this;
            }

            @Override // defpackage.vs2
            public final Object apply(Object obj) {
                ee2 ee2Var = this.a;
                Objects.requireNonNull(ee2Var);
                zr0 zr0Var = os3.j.a;
                ContentResolver contentResolver = ee2Var.b.getContentResolver();
                return new be2(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"));
            }
        };
        Executor executor = this.d;
        qu2 qu2Var = new qu2(nv2VarX, Throwable.class, vs2Var);
        nv2VarX.i(qu2Var, vt2.g(executor, qu2Var));
        return qu2Var;
    }
}
