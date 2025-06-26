package defpackage;

/* loaded from: classes.dex */
public final class v92 implements cb3<t92> {
    public final mb3<String> a;
    public final mb3<String> b;
    public final mb3<t71> c;
    public final mb3<gm2> d;
    public final mb3<ll2> e;

    public v92(mb3<String> mb3Var, mb3<String> mb3Var2, mb3<t71> mb3Var3, mb3<gm2> mb3Var4, mb3<ll2> mb3Var5) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
    }

    public static v92 a(mb3<String> mb3Var, mb3<String> mb3Var2, mb3<t71> mb3Var3, mb3<gm2> mb3Var4, mb3<ll2> mb3Var5) {
        return new v92(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new t92(this.a.get(), this.b.get(), this.c.get(), this.d.get(), this.e.get());
    }
}
