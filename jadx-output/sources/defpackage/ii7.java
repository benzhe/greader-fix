package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class ii7<T> extends AtomicInteger implements pb7<T>, y38 {
    public final x38<? super T> e;
    public final si7 f = new si7();
    public final AtomicLong g = new AtomicLong();
    public final AtomicReference<y38> h = new AtomicReference<>();
    public final AtomicBoolean i = new AtomicBoolean();
    public volatile boolean j;

    public ii7(x38<? super T> x38Var) {
        this.e = x38Var;
    }

    @Override // defpackage.x38
    public void a() {
        this.j = true;
        x38<? super T> x38Var = this.e;
        si7 si7Var = this.f;
        if (getAndIncrement() == 0) {
            Throwable thB = vi7.b(si7Var);
            if (thB != null) {
                x38Var.b(thB);
            } else {
                x38Var.a();
            }
        }
    }

    @Override // defpackage.x38
    public void b(Throwable th) {
        this.j = true;
        x38<? super T> x38Var = this.e;
        si7 si7Var = this.f;
        if (!vi7.a(si7Var, th)) {
            n56.z1(th);
        } else if (getAndIncrement() == 0) {
            x38Var.b(vi7.b(si7Var));
        }
    }

    @Override // defpackage.y38
    public void cancel() {
        if (this.j) {
            return;
        }
        pi7.i(this.h);
    }

    @Override // defpackage.x38
    public void d(T t) {
        x38<? super T> x38Var = this.e;
        si7 si7Var = this.f;
        if (get() == 0 && compareAndSet(0, 1)) {
            x38Var.d(t);
            if (decrementAndGet() != 0) {
                Throwable thB = vi7.b(si7Var);
                if (thB != null) {
                    x38Var.b(thB);
                } else {
                    x38Var.a();
                }
            }
        }
    }

    @Override // defpackage.pb7, defpackage.x38
    public void e(y38 y38Var) {
        if (this.i.compareAndSet(false, true)) {
            this.e.e(this);
            pi7.t(this.h, this.g, y38Var);
        } else {
            y38Var.cancel();
            cancel();
            b(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
        }
    }

    @Override // defpackage.y38
    public void l(long j) {
        if (j > 0) {
            pi7.k(this.h, this.g, j);
        } else {
            cancel();
            b(new IllegalArgumentException(jo.j("§3.9 violated: positive request amount required but it was ", j)));
        }
    }
}
