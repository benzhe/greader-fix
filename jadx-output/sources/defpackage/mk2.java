package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class mk2 implements cb3<ik2> {
    public final mb3<String> a;
    public final mb3<zj2> b;
    public final mb3<Context> c;
    public final mb3<ej2> d;
    public final mb3<gl2> e;

    public mk2(mb3<String> mb3Var, mb3<zj2> mb3Var2, mb3<Context> mb3Var3, mb3<ej2> mb3Var4, mb3<gl2> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ik2(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
