package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class ci5 implements Callable<Void> {
    public final /* synthetic */ ii5 e;

    public ci5(ii5 ii5Var) {
        this.e = ii5Var;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        ii5.a(this.e);
        return null;
    }
}
