package defpackage;

import defpackage.vv2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.GeneralSecurityException;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class vt2 {
    public static vw2 a;

    public static <V> aw2<V> a(Throwable th) {
        Objects.requireNonNull(th);
        return new vv2.a(th);
    }

    public static long b(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        return i == 1 ? j : i % 2 == 0 ? b((j * j) % 1073807359, i / 2) % 1073807359 : ((b((j * j) % 1073807359, i / 2) % 1073807359) * j) % 1073807359;
    }

    public static <O> aw2<O> c(dv2<O> dv2Var, Executor executor) {
        lw2 lw2Var = new lw2(dv2Var);
        executor.execute(lw2Var);
        return lw2Var;
    }

    public static <V> aw2<V> d(aw2<V> aw2Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (aw2Var.isDone()) {
            return aw2Var;
        }
        hw2 hw2Var = new hw2(aw2Var);
        jw2 jw2Var = new jw2(hw2Var);
        hw2Var.m = scheduledExecutorService.schedule(jw2Var, j, timeUnit);
        aw2Var.i(jw2Var, lv2.INSTANCE);
        return hw2Var;
    }

    public static <V> V e(Future<V> future) throws ExecutionException {
        if (future.isDone()) {
            return (V) c50.k0(future);
        }
        throw new IllegalStateException(c50.a3("Future was expected to be done: %s", future));
    }

    public static String f(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            is0.zzex("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i >= i4) {
                sb.append(strArr[i4]);
                return sb.toString();
            }
            sb.append(strArr[i]);
            sb.append(' ');
            i++;
        }
    }

    public static Executor g(Executor executor, su2<?> su2Var) {
        Objects.requireNonNull(executor);
        return executor == lv2.INSTANCE ? executor : new bw2(executor, su2Var);
    }

    public static void h(int i, long j, String str, int i2, PriorityQueue<nn3> priorityQueue) {
        nn3 nn3Var = new nn3(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().c <= nn3Var.c && priorityQueue.peek().a <= nn3Var.a)) && !priorityQueue.contains(nn3Var)) {
            priorityQueue.add(nn3Var);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static <V> void i(aw2<V> aw2Var, rv2<? super V> rv2Var, Executor executor) {
        Objects.requireNonNull(rv2Var);
        aw2Var.i(new sv2(aw2Var, rv2Var), executor);
    }

    public static <V> aw2<V> j(V v) {
        return v == null ? (aw2<V>) vv2.f : new vv2(v);
    }

    public static long k(String[] strArr, int i) {
        long jP3 = (c50.p3(strArr[0]) + 2147483647L) % 1073807359;
        for (int i2 = 1; i2 < i; i2++) {
            jP3 = (((c50.p3(strArr[i2]) + 2147483647L) % 1073807359) + ((jP3 * 16785407) % 1073807359)) % 1073807359;
        }
        return jP3;
    }

    public static <I, O> aw2<O> l(aw2<I> aw2Var, vs2<? super I, ? extends O> vs2Var, Executor executor) {
        int i = vu2.n;
        Objects.requireNonNull(vs2Var);
        xu2 xu2Var = new xu2(aw2Var, vs2Var);
        aw2Var.i(xu2Var, g(executor, xu2Var));
        return xu2Var;
    }

    public static <I, O> aw2<O> m(aw2<I> aw2Var, cv2<? super I, ? extends O> cv2Var, Executor executor) {
        int i = vu2.n;
        Objects.requireNonNull(executor);
        uu2 uu2Var = new uu2(aw2Var, cv2Var);
        aw2Var.i(uu2Var, g(executor, uu2Var));
        return uu2Var;
    }

    public static <V, X extends Throwable> aw2<V> n(aw2<? extends V> aw2Var, Class<X> cls, cv2<? super X, ? extends V> cv2Var, Executor executor) {
        int i = pu2.o;
        ru2 ru2Var = new ru2(aw2Var, cls, cv2Var);
        aw2Var.i(ru2Var, g(executor, ru2Var));
        return ru2Var;
    }

    public static <V> V o(Future<V> future) {
        Objects.requireNonNull(future);
        try {
            return (V) c50.k0(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new jv2((Error) cause);
            }
            throw new pw2(cause);
        }
    }

    public static boolean p(xb3 xb3Var) throws IllegalAccessException, GeneralSecurityException, InvocationTargetException {
        Method methodB;
        vw2 vw2VarT1;
        if (a != null) {
            return true;
        }
        String str = (String) os3.j.f.a(y40.E1);
        if (str == null || str.length() == 0) {
            str = null;
            if (xb3Var != null && (methodB = xb3Var.b("4ioREl2wGHUH3L1Ffod4L799Wcu9qX0THPnnrMniz0uOTIixizwJO+JKyjfP+vUT", "/fmVllZVlSra7BEtwv3jJDV2EycO3hpoom0fb/ewpTo=")) != null) {
                str = (String) methodB.invoke(null, new Object[0]);
            }
            if (str == null) {
                return false;
            }
        }
        try {
            dx2 dx2VarA4 = c50.A4(c50.j3(str, true));
            for (l23 l23Var : hz2.a.x()) {
                if (l23Var.x().isEmpty()) {
                    throw new GeneralSecurityException("Missing type_url.");
                }
                if (l23Var.y().isEmpty()) {
                    throw new GeneralSecurityException("Missing primitive_name.");
                }
                if (l23Var.B().isEmpty()) {
                    throw new GeneralSecurityException("Missing catalogue_name.");
                }
                if (!l23Var.B().equals("TinkAead") && !l23Var.B().equals("TinkMac") && !l23Var.B().equals("TinkHybridDecrypt") && !l23Var.B().equals("TinkHybridEncrypt") && !l23Var.B().equals("TinkPublicKeySign") && !l23Var.B().equals("TinkPublicKeyVerify") && !l23Var.B().equals("TinkStreamingAead") && !l23Var.B().equals("TinkDeterministicAead")) {
                    rw2<?> rw2VarK = px2.k(l23Var.B());
                    px2.f(rw2VarK.b());
                    px2.d(rw2VarK.a(l23Var.x(), l23Var.y(), l23Var.z()), l23Var.A());
                }
            }
            vw2VarT1 = c50.t1(dx2VarA4);
            a = vw2VarT1;
        } catch (IllegalArgumentException | GeneralSecurityException unused) {
        }
        return vw2VarT1 != null;
    }

    public static <V> uv2<V> q(Iterable<? extends aw2<? extends V>> iterable) {
        return new uv2<>(true, nt2.y(iterable), null);
    }
}
