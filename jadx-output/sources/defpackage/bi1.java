package defpackage;

import android.content.Context;
import android.view.View;
import defpackage.lp3;

/* loaded from: classes.dex */
public final class bi1 implements cb3<ci1> {
    public final mb3<zp0> a;
    public final mb3<Context> b;
    public final mb3<cq0> c;
    public final mb3<View> d;
    public final mb3<lp3.a> e;

    public bi1(mb3<zp0> mb3Var, mb3<Context> mb3Var2, mb3<cq0> mb3Var3, mb3<View> mb3Var4, mb3<lp3.a> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    public static bi1 a(mb3<zp0> mb3Var, mb3<Context> mb3Var2, mb3<cq0> mb3Var3, mb3<View> mb3Var4, mb3<lp3.a> mb3Var5) {
        return new bi1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ci1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
