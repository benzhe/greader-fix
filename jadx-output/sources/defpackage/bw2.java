package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public final class bw2 implements Executor {
    public final /* synthetic */ Executor e;
    public final /* synthetic */ su2 f;

    public bw2(Executor executor, su2 su2Var) {
        this.e = executor;
        this.f = su2Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.e.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.f.j(e);
        }
    }
}
