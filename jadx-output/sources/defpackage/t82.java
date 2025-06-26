package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class t82 implements qd2<Object> {
    public final aw2<String> a;
    public final Executor b;

    public t82(aw2<String> aw2Var, Executor executor) {
        this.a = aw2Var;
        this.b = executor;
    }

    @Override // defpackage.qd2
    public final aw2<Object> a() {
        return vt2.m(this.a, s82.a, this.b);
    }
}
