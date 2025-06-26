package defpackage;

/* loaded from: classes.dex */
public final class ap1 implements cb3<bp1> {
    public final mb3<db1> a;
    public final mb3<sk2> b;

    public ap1(mb3<db1> mb3Var, mb3<sk2> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new bp1(this.a.get(), this.b.get());
    }
}
