package defpackage;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ho3 implements Executor {
    public final /* synthetic */ Handler e;

    public ho3(Handler handler) {
        this.e = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.e.post(runnable);
    }
}
