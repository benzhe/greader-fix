package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<T>] */
/* loaded from: classes2.dex */
public final class yg7<T> extends hb7 {
    public final xb7<T> a;
    public final uc7<? super T, ? extends lb7> b;
    public final boolean c;

    public static final class a<T> extends AtomicInteger implements ic7, yb7<T> {
        public final jb7 e;
        public final uc7<? super T, ? extends lb7> g;
        public final boolean h;
        public ic7 j;
        public volatile boolean k;
        public final si7 f = new si7();
        public final hc7 i = new hc7();

        /* renamed from: yg7$a$a, reason: collision with other inner class name */
        public final class C0059a extends AtomicReference<ic7> implements jb7, ic7 {
            public C0059a() {
            }

            @Override // defpackage.jb7
            public void a() {
                a aVar = a.this;
                aVar.i.c(this);
                aVar.a();
            }

            @Override // defpackage.jb7
            public void b(Throwable th) {
                a aVar = a.this;
                aVar.i.c(this);
                aVar.b(th);
            }

            @Override // defpackage.jb7
            public void c(ic7 ic7Var) {
                yc7.w(this, ic7Var);
            }

            @Override // defpackage.ic7
            public void k() {
                yc7.i(this);
            }
        }

        public a(jb7 jb7Var, uc7<? super T, ? extends lb7> uc7Var, boolean z) {
            this.e = jb7Var;
            this.g = uc7Var;
            this.h = z;
            lazySet(1);
        }

        @Override // defpackage.yb7
        public void a() {
            if (decrementAndGet() == 0) {
                Throwable thB = vi7.b(this.f);
                if (thB != null) {
                    this.e.b(thB);
                } else {
                    this.e.a();
                }
            }
        }

        @Override // defpackage.yb7
        public void b(Throwable th) {
            if (!vi7.a(this.f, th)) {
                n56.z1(th);
                return;
            }
            if (this.h) {
                if (decrementAndGet() == 0) {
                    this.e.b(vi7.b(this.f));
                    return;
                }
                return;
            }
            k();
            if (getAndSet(0) > 0) {
                this.e.b(vi7.b(this.f));
            }
        }

        @Override // defpackage.yb7
        public void c(ic7 ic7Var) {
            if (yc7.x(this.j, ic7Var)) {
                this.j = ic7Var;
                this.e.c(this);
            }
        }

        @Override // defpackage.yb7
        public void d(T t) {
            try {
                lb7 lb7VarApply = this.g.apply(t);
                Objects.requireNonNull(lb7VarApply, "The mapper returned a null CompletableSource");
                lb7 lb7Var = lb7VarApply;
                getAndIncrement();
                C0059a c0059a = new C0059a();
                if (this.k || !this.i.b(c0059a)) {
                    return;
                }
                lb7Var.a(c0059a);
            } catch (Throwable th) {
                n56.r2(th);
                this.j.k();
                b(th);
            }
        }

        @Override // defpackage.ic7
        public void k() {
            this.k = true;
            this.j.k();
            this.i.k();
        }
    }

    public yg7(xb7<T> xb7Var, uc7<? super T, ? extends lb7> uc7Var, boolean z) {
        this.a = xb7Var;
        this.b = uc7Var;
        this.c = z;
    }

    @Override // defpackage.hb7
    public void i(jb7 jb7Var) {
        this.a.e(new a(jb7Var, this.b, this.c));
    }
}
