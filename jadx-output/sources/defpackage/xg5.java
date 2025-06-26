package defpackage;

import java.io.FilenameFilter;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class xg5 implements Callable<Void> {
    public final /* synthetic */ gh5 e;
    public final /* synthetic */ ExecutorService f;
    public final /* synthetic */ jm5 g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ vi5 i;

    public xg5(gh5 gh5Var, ExecutorService executorService, jm5 jm5Var, boolean z, vi5 vi5Var) {
        this.e = gh5Var;
        this.f = executorService;
        this.g = jm5Var;
        this.h = z;
        this.i = vi5Var;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        gh5 gh5Var = this.e;
        ExecutorService executorService = this.f;
        jm5 jm5Var = this.g;
        pe5 pe5Var = gh5Var.b;
        pe5Var.a();
        gh5Var.m.c().q(executorService, new eh5(gh5Var, jm5Var)).q(executorService, new dh5(gh5Var, pe5Var.c.b, jm5Var, executorService));
        if (!this.h) {
            return null;
        }
        vi5 vi5Var = this.i;
        jm5 jm5Var2 = this.g;
        ExecutorService executorService2 = vi5Var.k;
        ui5 ui5Var = new ui5(vi5Var, jm5Var2);
        FilenameFilter filenameFilter = qj5.a;
        executorService2.execute(new sj5(ui5Var, new f45()));
        return null;
    }
}
