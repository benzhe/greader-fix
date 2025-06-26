package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class cx5 implements Callable {
    public final Runnable e;

    public cx5(Runnable runnable) {
        this.e = runnable;
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        this.e.run();
        return null;
    }
}
