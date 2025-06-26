package defpackage;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class t61 implements rv2<l61> {
    public final /* synthetic */ rv2 a;
    public final /* synthetic */ q61 b;

    public t61(q61 q61Var, rv2 rv2Var) {
        this.b = q61Var;
        this.a = rv2Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        this.a.a(th);
        q61.a(this.b);
    }

    @Override // defpackage.rv2
    public final void onSuccess(l61 l61Var) {
        final q61 q61Var = this.b;
        List<? extends aw2<? extends f61>> list = l61Var.a;
        final rv2 rv2Var = this.a;
        Objects.requireNonNull(q61Var);
        if (list == null || list.isEmpty()) {
            q61Var.a.execute(new Runnable(rv2Var) { // from class: p61
                public final rv2 e;

                {
                    this.e = rv2Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.a(new bu1(dm2.NO_FILL));
                }
            });
            return;
        }
        aw2 aw2VarJ = vt2.j(null);
        for (final aw2<? extends f61> aw2Var : list) {
            aw2VarJ = vt2.m(vt2.n(aw2VarJ, Throwable.class, new cv2(rv2Var) { // from class: s61
                public final rv2 a;

                {
                    this.a = rv2Var;
                }

                @Override // defpackage.cv2
                public final aw2 a(Object obj) {
                    this.a.a((Throwable) obj);
                    return vt2.j(null);
                }
            }, q61Var.a), new cv2(q61Var, rv2Var, aw2Var) { // from class: r61
                public final q61 a;
                public final rv2 b;
                public final aw2 c;

                {
                    this.a = q61Var;
                    this.b = rv2Var;
                    this.c = aw2Var;
                }

                @Override // defpackage.cv2
                public final aw2 a(Object obj) {
                    q61 q61Var2 = this.a;
                    rv2 rv2Var2 = this.b;
                    aw2 aw2Var2 = this.c;
                    f61 f61Var = (f61) obj;
                    Objects.requireNonNull(q61Var2);
                    if (f61Var != null) {
                        rv2Var2.onSuccess(f61Var);
                    }
                    return vt2.d(aw2Var2, a70.a.a().longValue(), TimeUnit.MILLISECONDS, q61Var2.b);
                }
            }, q61Var.a);
        }
        w61 w61Var = new w61(q61Var, rv2Var);
        aw2VarJ.i(new sv2(aw2VarJ, w61Var), q61Var.a);
    }
}
