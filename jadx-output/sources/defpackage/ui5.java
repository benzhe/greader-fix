package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class ui5 implements Callable<e45<Void>> {
    public final /* synthetic */ km5 e;
    public final /* synthetic */ vi5 f;

    public ui5(vi5 vi5Var, km5 km5Var) {
        this.f = vi5Var;
        this.e = km5Var;
    }

    @Override // java.util.concurrent.Callable
    public e45<Void> call() throws Exception {
        return vi5.a(this.f, this.e);
    }
}
