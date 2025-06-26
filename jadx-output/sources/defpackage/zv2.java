package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public interface zv2 extends ExecutorService {
    aw2<?> C(Runnable runnable);

    <T> aw2<T> y(Callable<T> callable);
}
