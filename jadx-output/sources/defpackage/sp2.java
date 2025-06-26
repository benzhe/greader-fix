package defpackage;

import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class sp2 implements cb3<pp2> {
    public final mb3<wp2> a;
    public final mb3<fq2> b;
    public final mb3<ScheduledExecutorService> c;

    public sp2(mb3<wp2> mb3Var, mb3<fq2> mb3Var2, mb3<ScheduledExecutorService> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        xa3 xa3VarB = db3.b(this.a);
        xa3 xa3VarB2 = db3.b(this.b);
        Object rp2Var = ((Boolean) os3.j.f.a(y40.f5)).booleanValue() ? new rp2((pp2) xa3VarB.get(), this.c.get()) : (pp2) xa3VarB2.get();
        Objects.requireNonNull(rp2Var, "Cannot return null from a non-@Nullable @Provides method");
        return rp2Var;
    }
}
