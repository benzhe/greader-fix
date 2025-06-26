package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ym implements xm {
    public final Executor a;
    public final Handler b = new Handler(Looper.getMainLooper());
    public final Executor c = new a();

    public class a implements Executor {
        public a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ym.this.b.post(runnable);
        }
    }

    public ym(Executor executor) {
        this.a = new qm(executor);
    }
}
