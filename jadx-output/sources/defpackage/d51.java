package defpackage;

/* loaded from: classes.dex */
public final class d51 implements cb3<sf1<ed1>> {
    public final mb3<kc1> a;

    public d51(q41 q41Var, mb3<kc1> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        final kc1 kc1Var = this.a.get();
        return new sf1(new ed1(kc1Var) { // from class: s41
            public final kc1 e;

            {
                this.e = kc1Var;
            }

            @Override // defpackage.ed1
            public final void C() {
                kc1 kc1Var2 = this.e;
                synchronized (kc1Var2) {
                    kc1Var2.j = false;
                    kc1Var2.H0(0L);
                }
            }
        }, ms0.f);
    }
}
