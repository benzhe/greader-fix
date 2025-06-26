package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class d82 implements cb3<aw2<i82>> {
    public final mb3<zo2> a;
    public final mb3<h82> b;
    public final mb3<g91> c;

    public d82(mb3<zo2> mb3Var, mb3<h82> mb3Var2, mb3<g91> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return this.a.get().b(ap2.GENERATE_SIGNALS, this.c.get().b()).b(this.b.get()).a(((Integer) os3.j.f.a(y40.h3)).intValue(), TimeUnit.SECONDS).e();
    }
}
