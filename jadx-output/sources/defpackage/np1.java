package defpackage;

/* loaded from: classes.dex */
public final class np1 implements cb3<jz1<dp1>> {
    public final mb3<zo2> a;
    public final mb3<zv2> b;
    public final mb3<g32> c;
    public final mb3<c42> d;

    public np1(mb3<zo2> mb3Var, mb3<zv2> mb3Var2, mb3<g32> mb3Var3, mb3<c42> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new g42(this.a.get(), this.b.get(), this.d.get(), this.c.get());
    }
}
