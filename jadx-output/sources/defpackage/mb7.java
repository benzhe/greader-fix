package defpackage;

import defpackage.dd7;
import defpackage.gf7;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class mb7<T> implements w38<T> {
    public static final int e = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    public static <T> mb7<T> n(T t) {
        Objects.requireNonNull(t, "item is null");
        return new ze7(t);
    }

    public static mb7<Integer> q(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(jo.g("count >= 0 required but it was ", i2));
        }
        if (i2 == 0) {
            return oe7.f;
        }
        if (i2 == 1) {
            return n(Integer.valueOf(i));
        }
        if (i + (i2 - 1) <= 2147483647L) {
            return new jf7(i, i2);
        }
        throw new IllegalArgumentException("Integer overflow");
    }

    public static mb7<Long> u(long j, TimeUnit timeUnit) {
        zb7 zb7Var = ej7.a;
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(zb7Var, "scheduler is null");
        return new vf7(Math.max(0L, j), timeUnit, zb7Var);
    }

    @Override // defpackage.w38
    public final void i(x38<? super T> x38Var) {
        if (x38Var instanceof pb7) {
            s((pb7) x38Var);
        } else {
            Objects.requireNonNull(x38Var, "s is null");
            s(new ii7(x38Var));
        }
    }

    public final ac7<T> j() {
        return new ne7(this, 0L, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> mb7<R> k(uc7<? super T, ? extends w38<? extends R>> uc7Var, boolean z, int i, int i2) {
        Objects.requireNonNull(uc7Var, "mapper is null");
        ed7.a(i, "maxConcurrency");
        ed7.a(i2, "bufferSize");
        if (!(this instanceof ld7)) {
            return new qe7(this, uc7Var, z, i, i2);
        }
        Object objCall = ((ld7) this).call();
        return objCall == null ? (mb7<R>) oe7.f : new qf7(objCall, uc7Var);
    }

    public final <R> mb7<R> l(uc7<? super T, ? extends vb7<? extends R>> uc7Var) {
        Objects.requireNonNull(uc7Var, "mapper is null");
        ed7.a(Integer.MAX_VALUE, "maxConcurrency");
        return new re7(this, uc7Var, false, Integer.MAX_VALUE);
    }

    public final <R> mb7<R> m(uc7<? super T, ? extends ec7<? extends R>> uc7Var) {
        ed7.a(Integer.MAX_VALUE, "maxConcurrency");
        return new se7(this, uc7Var, false, Integer.MAX_VALUE);
    }

    public final mb7<T> o(zb7 zb7Var) {
        int i = e;
        Objects.requireNonNull(zb7Var, "scheduler is null");
        ed7.a(i, "bufferSize");
        return new bf7(this, zb7Var, false, i);
    }

    public final pc7<T> p() {
        int i = e;
        ed7.a(i, "bufferSize");
        AtomicReference atomicReference = new AtomicReference();
        return new gf7(new gf7.a(atomicReference, i), this, atomicReference, i);
    }

    public final ic7 r(tc7<? super T> tc7Var, tc7<? super Throwable> tc7Var2, qc7 qc7Var, tc7<? super y38> tc7Var3) {
        Objects.requireNonNull(tc7Var, "onNext is null");
        Objects.requireNonNull(tc7Var2, "onError is null");
        Objects.requireNonNull(qc7Var, "onComplete is null");
        hi7 hi7Var = new hi7(tc7Var, tc7Var2, qc7Var, tc7Var3);
        s(hi7Var);
        return hi7Var;
    }

    public final void s(pb7<? super T> pb7Var) {
        Objects.requireNonNull(pb7Var, "s is null");
        try {
            t(pb7Var);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            n56.r2(th);
            n56.z1(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void t(x38<? super T> x38Var);

    public final <U, R> mb7<R> v(w38<? extends U> w38Var, rc7<? super T, ? super U, ? extends R> rc7Var) {
        dd7.a aVar = new dd7.a(rc7Var);
        int i = e;
        w38[] w38VarArr = {this, w38Var};
        ed7.a(i, "bufferSize");
        return new xf7(w38VarArr, null, aVar, i, false);
    }
}
