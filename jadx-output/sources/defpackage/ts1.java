package defpackage;

import java.util.Set;

/* loaded from: classes.dex */
public final class ts1 implements cb3<rs1> {
    public final mb3<ks1> a;
    public final mb3<Set<qs1>> b;
    public final mb3<b20> c;

    public ts1(mb3<ks1> mb3Var, mb3<Set<qs1>> mb3Var2, mb3<b20> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new rs1(this.a.get(), this.b.get(), this.c.get());
    }
}
