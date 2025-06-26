package defpackage;

/* loaded from: classes.dex */
public final class f11 implements cb3<ls0> {
    public final mb3<String> a;

    public f11(mb3<String> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new ls0(this.a.get());
    }
}
