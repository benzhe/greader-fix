package defpackage;

/* loaded from: classes.dex */
public final class b81 implements cb3<i61> {
    public final mb3<hl2> a;
    public final mb3<sk2> b;
    public final mb3<xa1> c;
    public final mb3<nb1> d;
    public final mb3<mi2> e;
    public final mb3<t91> f;
    public final mb3<rc1> g;

    public b81(mb3<hl2> mb3Var, mb3<sk2> mb3Var2, mb3<xa1> mb3Var3, mb3<nb1> mb3Var4, mb3<mi2> mb3Var5, mb3<t91> mb3Var6, mb3<rc1> mb3Var7) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var7;
    }

    public static b81 a(mb3<hl2> mb3Var, mb3<sk2> mb3Var2, mb3<xa1> mb3Var3, mb3<nb1> mb3Var4, mb3<mi2> mb3Var5, mb3<t91> mb3Var6, mb3<rc1> mb3Var7) {
        return new b81(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6, mb3Var7);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new i61(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get(), this.f.get(), this.g.get());
    }
}
