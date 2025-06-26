package defpackage;

import android.os.Bundle;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class p92 implements qd2<nd2<Bundle>> {
    public final Executor a;
    public final or0 b;

    public p92(Executor executor, or0 or0Var) {
        this.a = executor;
        this.b = or0Var;
    }

    @Override // defpackage.qd2
    public final aw2<nd2<Bundle>> a() {
        return ((Boolean) os3.j.f.a(y40.C1)).booleanValue() ? vt2.j(null) : vt2.l(this.b.g(), s92.a, this.a);
    }
}
