package defpackage;

import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l15 implements Runnable {
    public final /* synthetic */ j25 e;
    public final /* synthetic */ Runnable f;

    public l15(j25 j25Var, Runnable runnable) {
        this.e = j25Var;
        this.f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        this.e.l();
        j25 j25Var = this.e;
        Runnable runnable = this.f;
        j25Var.j.m().d();
        if (j25Var.n == null) {
            j25Var.n = new ArrayList();
        }
        j25Var.n.add(runnable);
        this.e.h();
    }
}
