package defpackage;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class hc2 implements qd2<ic2> {
    public final zv2 a;
    public final Bundle b;

    public hc2(zv2 zv2Var, Bundle bundle) {
        this.a = zv2Var;
        this.b = bundle;
    }

    @Override // defpackage.qd2
    public final aw2<ic2> a() {
        return this.a.y(new Callable(this) { // from class: lc2
            public final hc2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new ic2(this.e.b);
            }
        });
    }
}
