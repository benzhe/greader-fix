package defpackage;

/* loaded from: classes.dex */
public final class ra2 implements cb3<ha2<td2>> {
    public final mb3<wd2> a;
    public final mb3<b20> b;

    public ra2(mb3<wd2> mb3Var, mb3<b20> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new ha2(this.a.get(), j60.a.a().longValue(), this.b.get());
    }
}
