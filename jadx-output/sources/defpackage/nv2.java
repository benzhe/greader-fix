package defpackage;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public class nv2<V> extends su2 {
    public static <V> nv2<V> A(aw2<V> aw2Var) {
        return aw2Var instanceof nv2 ? (nv2) aw2Var : new pv2(aw2Var);
    }

    public final nv2<V> x(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (nv2) vt2.d(this, j, timeUnit, scheduledExecutorService);
    }

    public final <T> nv2<T> y(vs2<? super V, T> vs2Var, Executor executor) {
        xu2 xu2Var = new xu2(this, vs2Var);
        i(xu2Var, vt2.g(executor, xu2Var));
        return xu2Var;
    }

    public final <T> nv2<T> z(cv2<? super V, T> cv2Var, Executor executor) {
        Objects.requireNonNull(executor);
        uu2 uu2Var = new uu2(this, cv2Var);
        i(uu2Var, vt2.g(executor, uu2Var));
        return uu2Var;
    }
}
