package defpackage;

import defpackage.rk7;

/* loaded from: classes2.dex */
public abstract class nk7 implements rk7.a {
    public final rk7.b<?> e;

    public nk7(rk7.b<?> bVar) {
        im7.e(bVar, "key");
        this.e = bVar;
    }

    @Override // defpackage.rk7
    public <E extends rk7.a> E c(rk7.b<E> bVar) {
        im7.e(bVar, "key");
        return (E) n56.A0(this, bVar);
    }

    @Override // rk7.a
    public rk7.b<?> getKey() {
        return this.e;
    }

    @Override // defpackage.rk7
    public <R> R m(R r, tl7<? super R, ? super rk7.a, ? extends R> tl7Var) {
        im7.e(tl7Var, "operation");
        return (R) n56.x0(this, r, tl7Var);
    }
}
