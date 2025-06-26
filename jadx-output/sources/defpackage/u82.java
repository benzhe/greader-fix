package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class u82 implements cb3<t82> {
    public final mb3<aw2<String>> a;
    public final mb3<Executor> b;

    public u82(mb3<aw2<String>> mb3Var, mb3<Executor> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new t82(this.a.get(), this.b.get());
    }
}
