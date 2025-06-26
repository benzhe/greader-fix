package defpackage;

/* loaded from: classes.dex */
public final class mh1 implements cb3<nh1> {
    public final mb3<wb1> a;
    public final mb3<of1> b;

    public mh1(mb3<wb1> mb3Var, mb3<of1> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new nh1(this.a.get(), this.b.get());
    }
}
