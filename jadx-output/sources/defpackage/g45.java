package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class g45 {
    public static final Executor a = new a();
    public static final Executor b = new d55();

    public static final class a implements Executor {
        public final Handler e = new wr4(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.e.post(runnable);
        }
    }
}
