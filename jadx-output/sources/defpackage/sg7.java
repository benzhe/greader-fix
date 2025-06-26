package defpackage;

import defpackage.lg7;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class sg7<T, R> extends rb7<R> {
    public final vb7<? extends T>[] e;
    public final uc7<? super Object[], ? extends R> f;

    public final class a implements uc7<T, R> {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // defpackage.uc7
        public R apply(T t) throws Exception {
            R rApply = sg7.this.f.apply(new Object[]{t});
            Objects.requireNonNull(rApply, "The zipper returned a null value");
            return rApply;
        }
    }

    public static final class b<T, R> extends AtomicInteger implements ic7 {
        public final tb7<? super R> e;
        public final uc7<? super Object[], ? extends R> f;
        public final c<T>[] g;
        public final Object[] h;

        public b(tb7<? super R> tb7Var, int i, uc7<? super Object[], ? extends R> uc7Var) {
            super(i);
            this.e = tb7Var;
            this.f = uc7Var;
            c<T>[] cVarArr = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                cVarArr[i2] = new c<>(this, i2);
            }
            this.g = cVarArr;
            this.h = new Object[i];
        }

        public void a(int i) {
            c<T>[] cVarArr = this.g;
            int length = cVarArr.length;
            for (int i2 = 0; i2 < i; i2++) {
                yc7.i(cVarArr[i2]);
            }
            while (true) {
                i++;
                if (i >= length) {
                    return;
                } else {
                    yc7.i(cVarArr[i]);
                }
            }
        }

        public boolean b() {
            return get() <= 0;
        }

        @Override // defpackage.ic7
        public void k() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.g) {
                    yc7.i(cVar);
                }
            }
        }
    }

    public static final class c<T> extends AtomicReference<ic7> implements tb7<T> {
        public final b<T, ?> e;
        public final int f;

        public c(b<T, ?> bVar, int i) {
            this.e = bVar;
            this.f = i;
        }

        @Override // defpackage.tb7
        public void a() {
            b<T, ?> bVar = this.e;
            int i = this.f;
            if (bVar.getAndSet(0) > 0) {
                bVar.a(i);
                bVar.e.a();
            }
        }

        @Override // defpackage.tb7
        public void b(Throwable th) {
            b<T, ?> bVar = this.e;
            int i = this.f;
            if (bVar.getAndSet(0) <= 0) {
                n56.z1(th);
            } else {
                bVar.a(i);
                bVar.e.b(th);
            }
        }

        @Override // defpackage.tb7
        public void c(ic7 ic7Var) {
            yc7.w(this, ic7Var);
        }

        @Override // defpackage.tb7
        public void onSuccess(T t) {
            b<T, ?> bVar = this.e;
            bVar.h[this.f] = t;
            if (bVar.decrementAndGet() == 0) {
                try {
                    Object objApply = bVar.f.apply(bVar.h);
                    Objects.requireNonNull(objApply, "The zipper returned a null value");
                    bVar.e.onSuccess(objApply);
                } catch (Throwable th) {
                    n56.r2(th);
                    bVar.e.b(th);
                }
            }
        }
    }

    public sg7(vb7<? extends T>[] vb7VarArr, uc7<? super Object[], ? extends R> uc7Var) {
        this.e = vb7VarArr;
        this.f = uc7Var;
    }

    @Override // defpackage.rb7
    public void m(tb7<? super R> tb7Var) {
        vb7<? extends T>[] vb7VarArr = this.e;
        int length = vb7VarArr.length;
        if (length == 1) {
            vb7VarArr[0].a(new lg7.a(tb7Var, new a()));
            return;
        }
        b bVar = new b(tb7Var, length, this.f);
        tb7Var.c(bVar);
        for (int i = 0; i < length && !bVar.b(); i++) {
            vb7<? extends T> vb7Var = vb7VarArr[i];
            if (vb7Var == null) {
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (bVar.getAndSet(0) <= 0) {
                    n56.z1(nullPointerException);
                    return;
                } else {
                    bVar.a(i);
                    bVar.e.b(nullPointerException);
                    return;
                }
            }
            vb7Var.a(bVar.g[i]);
        }
    }
}
