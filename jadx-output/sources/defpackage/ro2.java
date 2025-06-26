package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class ro2 implements Callable {
    public final io2 e;

    public ro2(io2 io2Var) {
        this.e = io2Var;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.e.run();
        return null;
    }
}
