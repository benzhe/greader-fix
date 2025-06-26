package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class k3 extends m3 {
    public static volatile k3 c;
    public static final Executor d = new a();
    public m3 a;
    public m3 b;

    public static class a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            k3.d().a.a(runnable);
        }
    }

    public k3() {
        l3 l3Var = new l3();
        this.b = l3Var;
        this.a = l3Var;
    }

    public static k3 d() {
        if (c != null) {
            return c;
        }
        synchronized (k3.class) {
            if (c == null) {
                c = new k3();
            }
        }
        return c;
    }

    @Override // defpackage.m3
    public void a(Runnable runnable) {
        this.a.a(runnable);
    }

    @Override // defpackage.m3
    public boolean b() {
        return this.a.b();
    }

    @Override // defpackage.m3
    public void c(Runnable runnable) {
        this.a.c(runnable);
    }
}
