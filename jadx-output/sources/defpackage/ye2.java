package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ye2 implements qd2<ve2> {
    public po3 a;
    public zv2 b;
    public Context c;

    public ye2(po3 po3Var, zv2 zv2Var, Context context) {
        this.a = po3Var;
        this.b = zv2Var;
        this.c = context;
    }

    @Override // defpackage.qd2
    public final aw2<ve2> a() {
        return this.b.y(new Callable(this) { // from class: xe2
            public final ye2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ye2 ye2Var = this.e;
                return new ve2(ye2Var.a.a(ye2Var.c));
            }
        });
    }
}
