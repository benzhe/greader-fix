package defpackage;

import android.content.Context;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class m82 implements cb3<k82> {
    public final mb3<zv2> a;
    public final mb3<Context> b;
    public final mb3<ll2> c;
    public final mb3<ViewGroup> d;

    public m82(mb3<zv2> mb3Var, mb3<Context> mb3Var2, mb3<ll2> mb3Var3, mb3<ViewGroup> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new k82(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
