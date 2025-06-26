package defpackage;

import android.content.Context;
import java.util.Set;

/* loaded from: classes.dex */
public final class bc2 implements cb3<zb2> {
    public final mb3<zv2> a;
    public final mb3<Context> b;
    public final mb3<Set<String>> c;

    public bc2(mb3<zv2> mb3Var, mb3<Context> mb3Var2, mb3<Set<String>> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new zb2(this.a.get(), this.b.get(), this.c.get());
    }
}
