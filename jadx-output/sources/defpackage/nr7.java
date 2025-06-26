package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class nr7 {
    public static final long a = n56.q2("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);
    public static final int b;
    public static final int c;
    public static final long d;
    public static or7 e;

    static {
        n56.p2("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, null);
        int i = zq7.a;
        int iP2 = n56.p2("kotlinx.coroutines.scheduler.core.pool.size", i < 2 ? 2 : i, 1, 0, 8, null);
        b = iP2;
        c = n56.p2("kotlinx.coroutines.scheduler.max.pool.size", en7.a(i * 128, iP2, 2097150), 0, 2097150, 4, null);
        d = TimeUnit.SECONDS.toNanos(n56.q2("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, null));
        e = ir7.a;
    }
}
