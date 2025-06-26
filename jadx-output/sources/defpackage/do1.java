package defpackage;

/* loaded from: classes.dex */
public final class do1 implements cb3<ao1> {
    public final mb3<String> a;
    public final mb3<kj1> b;
    public final mb3<wj1> c;

    public do1(mb3<String> mb3Var, mb3<kj1> mb3Var2, mb3<wj1> mb3Var3) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ao1(this.a.get(), this.b.get(), this.c.get());
    }
}
