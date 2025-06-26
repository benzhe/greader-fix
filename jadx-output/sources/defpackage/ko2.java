package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public abstract class ko2<E> {
    public static final aw2<?> d = vt2.j(null);
    public final zv2 a;
    public final ScheduledExecutorService b;
    public final xo2<E> c;

    public ko2(zv2 zv2Var, ScheduledExecutorService scheduledExecutorService, xo2<E> xo2Var) {
        this.a = zv2Var;
        this.b = scheduledExecutorService;
        this.c = xo2Var;
    }

    public final mo2 a(E e, aw2<?>... aw2VarArr) {
        return new mo2(this, e, Arrays.asList(aw2VarArr), null);
    }

    public final <I> qo2<I> b(E e, aw2<I> aw2Var) {
        return new qo2<>(this, e, aw2Var, Collections.singletonList(aw2Var), aw2Var);
    }

    public final oo2 c(E e) {
        return new oo2(this, e, null);
    }
}
