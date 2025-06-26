package defpackage;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class dj2 implements cb3<ui2> {
    public final mb3<Context> a;
    public final mb3<Executor> b;
    public final mb3<sy0> c;
    public final mb3<w52> d;
    public final mb3<ej2> e;

    public dj2(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<sy0> mb3Var3, mb3<w52> mb3Var4, mb3<ej2> mb3Var5, mb3<nl2> mb3Var6) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ui2(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), new nl2());
    }
}
