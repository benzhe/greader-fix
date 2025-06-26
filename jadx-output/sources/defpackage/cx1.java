package defpackage;

import android.content.Context;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class cx1 implements cb3<mw1> {
    public final mb3<Context> a;
    public final mb3<Executor> b;
    public final mb3<zm0> c;
    public final mb3<r11> d;
    public final mb3<an0> e;
    public final mb3<HashMap<String, xw1>> f;

    public cx1(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<zm0> mb3Var3, mb3<r11> mb3Var4, mb3<an0> mb3Var5, mb3<HashMap<String, xw1>> mb3Var6) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
    }

    public static cx1 a(mb3<Context> mb3Var, mb3<Executor> mb3Var2, mb3<zm0> mb3Var3, mb3<r11> mb3Var4, mb3<an0> mb3Var5, mb3<HashMap<String, xw1>> mb3Var6) {
        return new cx1(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new mw1(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get());
    }
}
