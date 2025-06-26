package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class pj {
    public final Executor a = a();
    public final Executor b = a();
    public final ek c;
    public final int d;
    public final int e;
    public final int f;

    public static final class a {
    }

    public interface b {
        pj a();
    }

    public pj(a aVar) {
        String str = ek.a;
        this.c = new dk();
        this.d = 4;
        this.e = Integer.MAX_VALUE;
        this.f = 20;
    }

    public final Executor a() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }
}
