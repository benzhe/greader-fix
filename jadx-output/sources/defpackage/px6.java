package defpackage;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class px6<V> implements Callable<rx6> {
    public final /* synthetic */ String e;
    public final /* synthetic */ ox6 f;

    public px6(String str, ox6 ox6Var) {
        this.e = str;
        this.f = ox6Var;
    }

    @Override // java.util.concurrent.Callable
    public rx6 call() {
        return qx6.a(this.e, this.f);
    }
}
