package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class a12 implements cb3<v02> {
    public final mb3<Context> a;
    public final mb3<Executor> b;
    public final mb3<oh1> c;
    public final mb3<qk2> d;

    public a12(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<oh1> mb3Var3, mb3<qk2> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new v02(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
