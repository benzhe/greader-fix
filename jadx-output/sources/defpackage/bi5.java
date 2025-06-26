package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class bi5 implements Callable<Void> {
    public final /* synthetic */ long e;
    public final /* synthetic */ String f;
    public final /* synthetic */ ii5 g;

    public bi5(ii5 ii5Var, long j, String str) {
        this.g = ii5Var;
        this.e = j;
        this.f = str;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        if (this.g.p()) {
            return null;
        }
        uj5 uj5Var = this.g.l;
        uj5Var.c.e(this.e, this.f);
        return null;
    }
}
