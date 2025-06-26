package defpackage;

/* loaded from: classes.dex */
public final class hd2 implements cb3<fd2> {
    public final mb3<si2> a;

    public hd2(mb3<si2> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new fd2(this.a.get());
    }
}
