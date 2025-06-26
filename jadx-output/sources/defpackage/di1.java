package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class di1 implements cb3<ei1> {
    public final mb3<Map<String, jz1<l61>>> a;
    public final mb3<Map<String, jz1<kj1>>> b;
    public final mb3<Map<String, w12<kj1>>> c;
    public final mb3<k61<j41>> d;
    public final mb3<dk1> e;

    public di1(mb3<Map<String, jz1<l61>>> mb3Var, mb3<Map<String, jz1<kj1>>> mb3Var2, mb3<Map<String, w12<kj1>>> mb3Var3, mb3<k61<j41>> mb3Var4, mb3<dk1> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ei1(this.a.get(), this.b.get(), this.c.get(), this.d, this.e.get());
    }
}
