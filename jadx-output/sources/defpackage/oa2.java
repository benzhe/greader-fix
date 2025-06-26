package defpackage;

/* loaded from: classes.dex */
public final class oa2 implements cb3<ha2<ca2>> {
    public final mb3<ba2> a;
    public final mb3<b20> b;

    public oa2(mb3<ba2> mb3Var, mb3<b20> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new ha2(this.a.get(), 10000L, this.b.get());
    }
}
