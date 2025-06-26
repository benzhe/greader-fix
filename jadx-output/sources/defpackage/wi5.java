package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class wi5 implements Callable<Boolean> {
    public final /* synthetic */ vi5 e;

    public wi5(vi5 vi5Var) {
        this.e = vi5Var;
    }

    @Override // java.util.concurrent.Callable
    public Boolean call() throws Exception {
        ii5 ii5Var = this.e.g;
        boolean z = true;
        if (ii5Var.c.b().exists()) {
            ah5.a.b("Found previous crash marker.");
            ii5Var.c.b().delete();
        } else {
            String strI = ii5Var.i();
            if (strI == null || !ii5Var.o.e(strI)) {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }
}
