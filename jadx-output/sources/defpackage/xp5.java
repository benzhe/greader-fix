package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class xp5<T> implements vo5<T> {
    public final Executor a;
    public final vo5<T> b;
    public volatile boolean c = false;

    public xp5(Executor executor, vo5<T> vo5Var) {
        this.a = executor;
        this.b = vo5Var;
    }

    @Override // defpackage.vo5
    public void a(final T t, final zo5 zo5Var) {
        this.a.execute(new Runnable(this, t, zo5Var) { // from class: wp5
            public final xp5 e;
            public final Object f;
            public final zo5 g;

            {
                this.e = this;
                this.f = t;
                this.g = zo5Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                xp5 xp5Var = this.e;
                Object obj = this.f;
                zo5 zo5Var2 = this.g;
                if (xp5Var.c) {
                    return;
                }
                xp5Var.b.a(obj, zo5Var2);
            }
        });
    }
}
