package defpackage;

/* loaded from: classes.dex */
public final class pc2 implements cb3<mc2> {
    public final mb3<String> a;
    public final mb3<String> b;

    public pc2(mb3<String> mb3Var, mb3<String> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new mc2(this.a.get(), this.b.get());
    }
}
