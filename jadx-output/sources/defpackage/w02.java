package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class w02 implements cb3<p02> {
    public final mb3<Context> a;
    public final mb3<g51> b;

    public w02(mb3<Context> mb3Var, mb3<g51> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new p02(this.a.get(), this.b.get());
    }
}
