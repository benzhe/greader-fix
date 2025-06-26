package defpackage;

import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class te7<T, R> extends he7<T, R> {
    public final uc7<? super T, ? extends Iterable<? extends R>> g;
    public final int h;

    public static final class a<T, R> extends ji7<R> implements pb7<T> {
        public final x38<? super R> e;
        public final uc7<? super T, ? extends Iterable<? extends R>> f;
        public final int g;
        public final int h;
        public y38 j;
        public nd7<T> k;
        public volatile boolean l;
        public volatile boolean m;
        public Iterator<? extends R> o;
        public int p;
        public int q;
        public final AtomicReference<Throwable> n = new AtomicReference<>();
        public final AtomicLong i = new AtomicLong();

        public a(x38<? super R> x38Var, uc7<? super T, ? extends Iterable<? extends R>> uc7Var, int i) {
            this.e = x38Var;
            this.f = uc7Var;
            this.g = i;
            this.h = i - (i >> 2);
        }

        @Override // defpackage.x38
        public void a() {
            if (this.l) {
                return;
            }
            this.l = true;
            j();
        }

        @Override // defpackage.x38
        public void b(Throwable th) {
            if (this.l || !vi7.a(this.n, th)) {
                n56.z1(th);
            } else {
                this.l = true;
                j();
            }
        }

        @Override // defpackage.y38
        public void cancel() {
            if (this.m) {
                return;
            }
            this.m = true;
            this.j.cancel();
            if (getAndIncrement() == 0) {
                this.k.clear();
            }
        }

        @Override // defpackage.nd7
        public void clear() {
            this.o = null;
            this.k.clear();
        }

        @Override // defpackage.x38
        public void d(T t) {
            if (this.l) {
                return;
            }
            if (this.q != 0 || this.k.offer(t)) {
                j();
            } else {
                b(new lc7("Queue is full?!"));
            }
        }

        @Override // defpackage.pb7, defpackage.x38
        public void e(y38 y38Var) {
            if (pi7.C(this.j, y38Var)) {
                this.j = y38Var;
                if (y38Var instanceof kd7) {
                    kd7 kd7Var = (kd7) y38Var;
                    int i = kd7Var.i(3);
                    if (i == 1) {
                        this.q = i;
                        this.k = kd7Var;
                        this.l = true;
                        this.e.e(this);
                        return;
                    }
                    if (i == 2) {
                        this.q = i;
                        this.k = kd7Var;
                        this.e.e(this);
                        y38Var.l(this.g);
                        return;
                    }
                }
                this.k = new th7(this.g);
                this.e.e(this);
                y38Var.l(this.g);
            }
        }

        public boolean g(boolean z, boolean z2, x38<?> x38Var, nd7<?> nd7Var) {
            if (this.m) {
                this.o = null;
                nd7Var.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.n.get() == null) {
                if (!z2) {
                    return false;
                }
                x38Var.a();
                return true;
            }
            Throwable thB = vi7.b(this.n);
            this.o = null;
            nd7Var.clear();
            x38Var.b(thB);
            return true;
        }

        public void h(boolean z) {
            if (z) {
                int i = this.p + 1;
                if (i != this.h) {
                    this.p = i;
                } else {
                    this.p = 0;
                    this.j.l(i);
                }
            }
        }

        @Override // defpackage.jd7
        public int i(int i) {
            return ((i & 1) == 0 || this.q != 1) ? 0 : 1;
        }

        @Override // defpackage.nd7
        public boolean isEmpty() {
            return this.o == null && this.k.isEmpty();
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x0123 A[PHI: r6
          0x0123: PHI (r6v4 java.util.Iterator<? extends R>) = (r6v3 java.util.Iterator<? extends R>), (r6v6 java.util.Iterator<? extends R>) binds: [B:30:0x0080, B:67:0x0120] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void j() {
            /*
                Method dump skipped, instructions count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: te7.a.j():void");
        }

        @Override // defpackage.y38
        public void l(long j) {
            if (pi7.y(j)) {
                n56.e(this.i, j);
                j();
            }
        }

        @Override // defpackage.nd7
        public R poll() throws Exception {
            Iterator<? extends R> it = this.o;
            while (true) {
                if (it == null) {
                    T tPoll = this.k.poll();
                    if (tPoll != null) {
                        it = this.f.apply(tPoll).iterator();
                        if (it.hasNext()) {
                            this.o = it;
                            break;
                        }
                        it = null;
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            R next = it.next();
            Objects.requireNonNull(next, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.o = null;
            }
            return next;
        }
    }

    public te7(mb7<T> mb7Var, uc7<? super T, ? extends Iterable<? extends R>> uc7Var, int i) {
        super(mb7Var);
        this.g = uc7Var;
        this.h = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mb7
    public void t(x38<? super R> x38Var) {
        mi7 mi7Var = mi7.INSTANCE;
        mb7<T> mb7Var = this.f;
        if (!(mb7Var instanceof Callable)) {
            mb7Var.s(new a(x38Var, this.g, this.h));
            return;
        }
        try {
            Object objCall = ((Callable) mb7Var).call();
            if (objCall == null) {
                x38Var.e(mi7Var);
                x38Var.a();
                return;
            }
            try {
                ve7.w(x38Var, this.g.apply(objCall).iterator());
            } catch (Throwable th) {
                n56.r2(th);
                x38Var.e(mi7Var);
                x38Var.b(th);
            }
        } catch (Throwable th2) {
            n56.r2(th2);
            x38Var.e(mi7Var);
            x38Var.b(th2);
        }
    }
}
