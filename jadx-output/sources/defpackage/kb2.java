package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;

/* loaded from: classes.dex */
public final class kb2 implements cb3<hb2> {
    public final mb3<zv2> a;
    public final mb3<ViewGroup> b;
    public final mb3<Context> c;
    public final mb3<Set<String>> d;

    public kb2(mb3<zv2> mb3Var, mb3<ViewGroup> mb3Var2, mb3<Context> mb3Var3, mb3<Set<String>> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new hb2(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
