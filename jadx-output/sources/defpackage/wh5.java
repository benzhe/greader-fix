package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class wh5 {
    public final Executor a;
    public e45<Void> b = c50.X(null);
    public final Object c = new Object();
    public ThreadLocal<Boolean> d = new ThreadLocal<>();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wh5.this.d.set(Boolean.TRUE);
        }
    }

    public wh5(Executor executor) {
        this.a = executor;
        executor.execute(new a());
    }

    public void a() {
        if (!Boolean.TRUE.equals(this.d.get())) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    public <T> e45<T> b(Callable<T> callable) {
        e45<T> e45Var;
        synchronized (this.c) {
            e45Var = (e45<T>) this.b.i(this.a, new yh5(this, callable));
            this.b = e45Var.i(this.a, new zh5(this));
        }
        return e45Var;
    }

    public <T> e45<T> c(Callable<e45<T>> callable) {
        e45<T> e45Var;
        synchronized (this.c) {
            e45Var = (e45<T>) this.b.j(this.a, new yh5(this, callable));
            this.b = e45Var.i(this.a, new zh5(this));
        }
        return e45Var;
    }
}
