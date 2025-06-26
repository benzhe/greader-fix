package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class np2 implements cb3<lp2> {
    public final mb3<ls0> a;

    public np2(mb3<Executor> mb3Var, mb3<ls0> mb3Var2) {
        this.a = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new lp2(yn2.a(), this.a.get());
    }
}
