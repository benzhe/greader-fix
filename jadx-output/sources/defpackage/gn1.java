package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class gn1 implements cb3<cn1> {
    public final mb3<sm1> a;

    public gn1(mb3<Executor> mb3Var, mb3<sm1> mb3Var2) {
        this.a = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new cn1(yn2.a(), this.a.get());
    }
}
