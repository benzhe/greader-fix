package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class os1 implements cb3<ns1> {
    public final mb3<ss1> a;

    public os1(mb3<ss1> mb3Var, mb3<Executor> mb3Var2) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ns1(this.a.get(), yn2.a());
    }
}
