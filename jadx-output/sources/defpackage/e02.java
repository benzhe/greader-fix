package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e02 implements cb3<a02> {
    public final mb3<o31> a;
    public final mb3<Context> b;
    public final mb3<Executor> c;
    public final mb3<mp1> d;

    public e02(mb3<o31> mb3Var, mb3<Context> mb3Var2, mb3<Executor> mb3Var3, mb3<mp1> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new a02(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
