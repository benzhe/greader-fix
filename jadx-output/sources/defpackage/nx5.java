package defpackage;

import android.os.AsyncTask;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class nx5 {
    public static final Executor a = g45.a;
    public static final Executor b = new Executor() { // from class: mx5
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    };
    public static final Executor c = new tx5(4, AsyncTask.THREAD_POOL_EXECUTOR);
}
