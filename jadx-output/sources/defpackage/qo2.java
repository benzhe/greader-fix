package defpackage;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class qo2<O> {
    public final E a;
    public final String b;
    public final aw2<?> c;
    public final List<aw2<?>> d;
    public final aw2<O> e;
    public final /* synthetic */ ko2 f;

    public qo2(ko2 ko2Var, E e, String str, aw2<?> aw2Var, List<aw2<?>> list, aw2<O> aw2Var2) {
        this.f = ko2Var;
        this.a = e;
        this.b = str;
        this.c = aw2Var;
        this.d = list;
        this.e = aw2Var2;
    }

    public final qo2<O> a(long j, TimeUnit timeUnit) {
        ko2 ko2Var = this.f;
        return new qo2<>(ko2Var, this.a, this.b, this.c, this.d, vt2.d(this.e, j, timeUnit, ko2Var.b));
    }

    public final <O2> qo2<O2> b(cv2<O, O2> cv2Var) {
        return c(cv2Var, this.f.a);
    }

    public final <O2> qo2<O2> c(cv2<O, O2> cv2Var, Executor executor) {
        return new qo2<>(this.f, this.a, this.b, this.c, this.d, vt2.m(this.e, cv2Var, executor));
    }

    public final <T extends Throwable> qo2<O> d(Class<T> cls, cv2<T, O> cv2Var) {
        ko2 ko2Var = this.f;
        return new qo2<>(ko2Var, this.a, this.b, this.c, this.d, vt2.n(this.e, cls, cv2Var, ko2Var.a));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final lo2<E, O> e() {
        E e = this.a;
        String str = this.b;
        if (str == null) {
            Objects.requireNonNull((zo2) this.f);
            str = ((ap2) e).e;
        }
        final lo2<E, O> lo2Var = new lo2<>(e, str, this.e);
        this.f.c.Z(lo2Var);
        aw2<?> aw2Var = this.c;
        Runnable runnable = new Runnable(this, lo2Var) { // from class: vo2
            public final qo2 e;
            public final lo2 f;

            {
                this.e = this;
                this.f = lo2Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                qo2 qo2Var = this.e;
                qo2Var.f.c.R(this.f);
            }
        };
        zv2 zv2Var = ms0.f;
        aw2Var.i(runnable, zv2Var);
        lo2Var.i(new sv2(lo2Var, new yo2(this, lo2Var)), zv2Var);
        return lo2Var;
    }

    public final <O2> qo2<O2> f(final aw2<O2> aw2Var) {
        return c(new cv2(aw2Var) { // from class: to2
            public final aw2 a;

            {
                this.a = aw2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                return this.a;
            }
        }, ms0.f);
    }

    public /* synthetic */ qo2(ko2 ko2Var, Object obj, aw2 aw2Var, List list, aw2 aw2Var2) {
        this(ko2Var, obj, null, aw2Var, list, aw2Var2);
    }
}
