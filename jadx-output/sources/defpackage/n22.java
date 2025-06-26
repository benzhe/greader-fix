package defpackage;

import defpackage.n91;

/* loaded from: classes.dex */
public final class n22 implements cb3<o22> {
    public final mb3<sy0> a;
    public final mb3<gi1> b;
    public final mb3<n91.a> c;
    public final mb3<yd1> d;

    public n22(mb3<sy0> mb3Var, mb3<gi1> mb3Var2, mb3<n91.a> mb3Var3, mb3<yd1> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new o22(this.a.get(), this.b.get(), this.c.get(), this.d.get());
    }
}
