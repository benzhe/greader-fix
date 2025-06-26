package defpackage;

/* loaded from: classes.dex */
public final class eu1 implements cb3<au1> {
    public final mb3<zv2> a;
    public final mb3<zv2> b;
    public final mb3<kv1> c;
    public final mb3<mw1> d;

    public eu1(mb3<zv2> mb3Var, mb3<zv2> mb3Var2, mb3<kv1> mb3Var3, mb3<mw1> mb3Var4) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new au1(this.a.get(), this.b.get(), this.c.get(), db3.b(this.d));
    }
}
