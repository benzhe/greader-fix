package defpackage;

import android.content.Context;
import java.util.Set;

/* loaded from: classes.dex */
public final class tf1 implements cb3<rf1> {
    public final mb3<Context> a;
    public final mb3<Set<sf1<em3>>> b;
    public final mb3<sk2> c;

    public tf1(mb3<Context> mb3Var, mb3<Set<sf1<em3>>> mb3Var2, mb3<sk2> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new rf1(this.a.get(), this.b.get(), this.c.get());
    }
}
