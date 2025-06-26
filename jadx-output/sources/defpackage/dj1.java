package defpackage;

import android.content.Context;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class dj1 implements cb3<rf1> {
    public final mb3<Context> a;
    public final mb3<sk2> b;

    public dj1(mb3<Context> mb3Var, mb3<sk2> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new rf1(this.a.get(), new HashSet(), this.b.get());
    }
}
