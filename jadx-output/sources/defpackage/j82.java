package defpackage;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class j82 implements cb3<h82> {
    public final mb3<yu1> a;

    public j82(mb3<Executor> mb3Var, mb3<yu1> mb3Var2) {
        this.a = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new h82(yn2.a(), this.a.get());
    }
}
