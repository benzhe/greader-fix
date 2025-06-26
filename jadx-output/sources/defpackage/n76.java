package defpackage;

import android.app.Application;
import java.util.Objects;

/* loaded from: classes.dex */
public final class n76 implements Object<h26> {
    public final m76 a;
    public final jj7<n36> b;
    public final jj7<Application> c;
    public final jj7<w56> d;

    public n76(m76 m76Var, jj7<n36> jj7Var, jj7<Application> jj7Var2, jj7<w56> jj7Var3) {
        this.a = m76Var;
        this.b = jj7Var;
        this.c = jj7Var2;
        this.d = jj7Var3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [hz5] */
    public Object get() {
        iz5 iz5Var;
        m76 m76Var = this.a;
        jj7<n36> jj7Var = this.b;
        Object obj = iz5.c;
        if (jj7Var instanceof hz5) {
            iz5Var = (hz5) jj7Var;
        } else {
            Objects.requireNonNull(jj7Var);
            iz5Var = new iz5(jj7Var);
        }
        return new h26(iz5Var, m76Var.a, this.c.get(), m76Var.c, this.d.get());
    }
}
