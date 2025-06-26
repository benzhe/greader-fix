package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class xh5 implements Callable<Void> {
    public final /* synthetic */ Runnable e;

    public xh5(wh5 wh5Var, Runnable runnable) {
        this.e = runnable;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.e.run();
        return null;
    }
}
