package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class lq2 implements cb3<jq2> {
    public final mb3<ls0> a;

    public lq2(mb3<Executor> mb3Var, mb3<ls0> mb3Var2) {
        this.a = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new jq2(yn2.a(), this.a.get());
    }
}
